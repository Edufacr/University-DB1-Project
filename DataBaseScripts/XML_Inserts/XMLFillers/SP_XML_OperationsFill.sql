SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 06/06/2020
-- Description:	Loads the operations from XML
-- =============================================
CREATE or ALTER PROCEDURE SP_XML_OperationsFill
	-- Add the parameters for the stored procedure here
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;

BEGIN TRY
	DECLARE @docHandle int;
	DECLARE @xmlDocument xml;
	DECLARE @LegalOwnersToInsert TABLE (LegalOwnerDocValue VARCHAR(30),ResponsibleName VARCHAR(50),ResponsibleDocType_Id int,Responsible_DocValue VARCHAR(50),Active bit)
	DECLARE @PropertyOwnersToInsert TABLE (PropertyNum int,DocValue VARCHAR(30),Active bit) 		
	DECLARE @CC_onPropertiesToInsert TABLE (ChargeConcept_Id int,PropertyNum int,BeginDate date,EndDate date,Active bit)
	DECLARE @PropertiesUsers TABLE (Username VARCHAR(50),PropertyNum int,Active bit)
	DECLARE @PropertiesValueChange TABLE (PropertyNum int,Value MONEY, [Date] DATE);
	DECLARE @TransConsumo TABLE (Id int PRIMARY KEY IDENTITY(1,1),IdMovType int, PropertyNum int,ConsumptionReading int,Description VARCHAR(50) ,Date Date);
	DECLARE @Payments TABLE(Id int PRIMARY KEY IDENTITY(1,1),ReceiptType INT, PropertyNum INT,Date DATE);
	DECLARE @APs AS APsTable;
	DECLARE @TodayPayments AS TodayPaymentsTable;
	DECLARE @TodayTransConsumo AS TodayConsumptionMovsTable ;
	DECLARE @Dates TABLE (Id INT PRIMARY KEY IDENTITY(1,1), Date DATE)
	DECLARE @currentDate DATE
	DECLARE @Day INT;
	DECLARE @WaterReceiptDay INT;
	DECLARE @WaterIdCC INT;
	DECLARE @ReconnectionIdCC INT;
	DECLARE @ReconnectionReceiptAmount INT;
	DECLARE @NumOfReconnectionReceipts INT;
	DECLARE @dayCounter int
	DECLARE @lastDay int
		EXEC SP_XML_GetOperationsXML @xmlDocument OUTPUT;
		EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument; 

		INSERT INTO @Dates
			SELECT DISTINCT Date 
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia')
			with (Date DATE '@fecha')
			ORDER BY Date;

		SELECT @lastDay = @@ROWCOUNT
		SET @dayCounter = 1
		
		SELECT @WaterReceiptDay = ReciptEmisionDay, @WaterIdCC = Id
		FROM completeConsumption_CCs
		WHERE Name = 'Agua'

		SELECT @ReconnectionReceiptAmount = Amount, @ReconnectionIdCC = Id
		FROM completeFixed_CCs
		WHERE Name = 'Reconexion de agua'

		INSERT INTO @TransConsumo
			SELECT IdMovType,PropertyNum,ConsumptionReading,Description,Date
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/TransConsumo') 
			WITH (IdMovType int '@id', PropertyNum int '@NumFinca',ConsumptionReading int '@LecturaM3',Description VARCHAR(50) '@descripcion',Date Date '../@fecha')

		INSERT INTO @PropertiesValueChange
			SELECT PropertyNum,Value,Date
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/CambioPropiedad') 
			WITH (PropertyNum int '@NumFinca',Value MONEY '@NuevoValor',Date Date '../@fecha')

		INSERT INTO @Payments(ReceiptType,PropertyNum,Date)
			SELECT ReceiptType,PropertyNum,Date
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/Pago') 
			WITH (ReceiptType INT '@TipoRecibo',PropertyNum INT '@NumFinca',Date DATE '../@fecha')

		INSERT INTO @APs(PropertyNumber,PaymentTerms,InsertionDate)
			SELECT PropertyNumber,PaymentTerms,InsertionDate
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/AP') 
			WITH (PropertyNumber INT '@NumFinca',PaymentTerms INT '@Plazo',InsertionDate DATE '../@fecha')
		

		WHILE(@dayCounter <= @lastDay)
		BEGIN
			--Properties
			SELECT @currentDate = Date from @Dates where Id = @dayCounter;

			--BEGIN TRAN Property
			INSERT INTO DB1P_Properties
			SELECT Value, Address,PropertyNum,AccumulatedM3 = 0, AccumulatedLCM3 =0, Active = 1 
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/Propiedad') 
			with (Value MONEY '@Valor',Address VARCHAR(100) '@Direccion',PropertyNum int '@NumFinca',Date Date '../@fecha')
			WHERE Date = @currentDate;
			--COMMIT TRAN Property
			--Owners
			INSERT INTO DB1P_Owners
			SELECT Name, DocType_Id,DocValue,Active = 1 
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/Propietario') 
			with (Name VARCHAR(50) '@Nombre',DocType_Id int '@TipoDocIdentidad',DocValue VARCHAR(30) '@identificacion',Date Date '../@fecha')
			WHERE Date = @currentDate;

			
			INSERT INTO DB1P_Users
			SELECT Username, Password, UserType = 0,Active =1 
			from OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/Usuario ') 
			with (Username VARCHAR(50) '@Nombre', Password VARCHAR(50) '@password',Date Date '../@fecha')
			WHERE Date = @currentDate;

			--LegalOwner
			Delete @LegalOwnersToInsert
			INSERT INTO @LegalOwnersToInsert
			SELECT LegalOwnerDocValue,ResponsibleName, ResponsibleDocType_Id,Responsible_DocValue,Active=1 
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/PersonaJuridica') 
			with (LegalOwnerDocValue VARCHAR(30) '@docidPersonaJuridica',ResponsibleName VARCHAR(50) '@Nombre',ResponsibleDocType_Id int '@TipDocIdRepresentante',Responsible_DocValue VARCHAR(50) '@DocidRepresentante',Date Date '../@fecha')
			WHERE Date = @currentDate;

			INSERT INTO DB1P_LegalOwners
			SELECT Id,ResponsibleName,ResponsibleDocType_Id,Responsible_DocValue,O.Active 
			FROM @LegalOwnersToInsert as LO
			INNER JOIN DB1P_Owners as O on	O.DocValue = LO.LegalOwnerDocValue; 

			DELETE @PropertyOwnersToInsert
			INSERT INTO @PropertyOwnersToInsert
			SELECT PropertyNum,DocValue,Active = 1 
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/PropiedadVersusPropietario') 
			with (PropertyNum int '@NumFinca',DocValue VARCHAR(30) '@identificacion',Date Date '../@fecha')
			WHERE Date = @currentDate;
			
			INSERT INTO DB1P_PropertyOwners
			SELECT P.Id,O.Id,Active =1 
			FROM @PropertyOwnersToInsert as PO
			INNER JOIN DB1P_Owners as O on	PO.DocValue = O.DocValue
			INNER JOIN DB1P_Properties as P on PO.PropertyNum = P.PropertyNumber
		
			DELETE @CC_onPropertiesToInsert
			INSERT INTO @CC_onPropertiesToInsert
			SELECT ChargeConcept_Id ,PropertyNum,BeginDate,EndDate = null,Active = 1 
			FROM OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/ConceptoCobroVersusPropiedad ') 
			with (ChargeConcept_Id int '@idcobro',PropertyNum int '@NumFinca',BeginDate date '../@fecha') 
			WHERE BeginDate = @currentDate;

			INSERT INTO DB1P_CC_onProperties
			SELECT P.Id,CC.Id,BeginDate,EndDate,Active =1 
			FROM @CC_onPropertiesToInsert as CP
			INNER JOIN DB1P_ChargeConcepts as CC on	CP.ChargeConcept_Id = CC.Id
			INNER JOIN DB1P_Properties as P on CP.PropertyNum = P.PropertyNumber
		
			DELETE @PropertiesUsers
			INSERT INTO @PropertiesUsers
			SELECT Username, PropertyNum,Active=1 
			from OPENXML(@docHandle,'/Operaciones_por_Dia/OperacionDia/UsuarioVersusPropiedad ') 
			with (Username VARCHAR(50) '@nombreUsuario', PropertyNum int '@NumFinca',Date Date '../@fecha')
			WHERE Date = @currentDate;
			
			INSERT INTO DB1P_PropertiesUsers
			SELECT P.Id,U.Id,Active =1 
			FROM @PropertiesUsers as PU
			INNER JOIN DB1P_Users as U on U.Username = PU.Username
			INNER JOIN DB1P_Properties as P on PU.PropertyNum = P.PropertyNumber


			DELETE @TodayTransConsumo;
			INSERT INTO @TodayTransConsumo 
			SELECT IdMovType, PropertyNum,ConsumptionReading,Description
			FROM @TransConsumo
			WHERE Date = @currentDate
			EXEC SP_insertAllConsumptionMovs @TodayTransConsumo, @currentDate

			
			UPDATE DB1P_Properties
			SET [Value] = v.Value
			FROM @PropertiesValueChange v
			WHERE PropertyNumber = v.PropertyNum AND v.Date = @currentDate;


			BEGIN TRANSACTION Receipts
				SET @Day = DAY(@currentDate);
				INSERT INTO DB1P_Receipt (Id_ChargeConcept,Id_Property,Date,DueDate,Amount)
				SELECT CC_Id,Property_Id,@currentDate,DueDate = DATEADD(day,ExpirationDays,@currentDate),Amount = 
					CASE 
						WHEN Amount IS NOT NULL THEN Amount
						WHEN PercentageValue IS NOT NULL THEN PropertyValue * (PercentageValue/100)
						WHEN MoratoryAmount IS NOT NULL THEN MoratoryAmount
						WHEN ValueM3 IS NOT NULL THEN 
							CASE 
								WHEN (AccumulatedM3 - AccumulatedLRM3)*ValueM3 > MinValue THEN (AccumulatedM3 - AccumulatedLRM3)*ValueM3
								ELSE MinValue
							END
						ELSE -1
					END
				FROM completeCCs_onProperties
				WHERE @Day = ReciptEmisionDay;

				IF(@Day = @WaterReceiptDay)
					BEGIN
						UPDATE DB1P_Properties
						SET AccumulatedLRM3 = AccumulatedM3
						FROM activeCC_onProperties acc
						WHERE @WaterIdCC = acc.CC_Id AND acc.PropertyId = Id
					END
			COMMIT TRANSACTION Receipts

			--Cortas
			BEGIN TRANSACTION Disconnection
				INSERT INTO DB1P_Receipt (Id_ChargeConcept,Id_Property,Date,DueDate,Amount)
					SELECT DISTINCT @ReconnectionIdCC,awr.Id_Property,@currentDate,NULL,@ReconnectionReceiptAmount
					FROM activeWaterReceipts awr
					WHERE 
						(SELECT COUNT(Id) 
							FROM activeWaterReceipts aw
							WHERE aw.Id_Property = awr.Id_Property) > 1
						AND 
						(SELECT COUNT(Id) 
							FROM activeReconnectionReceipts ar
							WHERE ar.Id_Property = awr.Id_Property) = 0
					ORDER BY Id_Property

				SET @NumOfReconnectionReceipts = @@ROWCOUNT;

				--Add to ReconnectionReceipt Table
				INSERT INTO DB1P_ReconnectionReceipt(Id)
					SELECT TOP (@NumOfReconnectionReceipts) Id
					FROM DB1P_Receipt 
					ORDER BY Id DESC;

				--Insert Disconnection
				INSERT INTO DB1P_Disconnection(Id_ReconnectionReceipt,Id_Property,[Date])
					SELECT s.Id,s.Id_Property,@currentDate
					FROM 
						(SELECT TOP (@NumOfReconnectionReceipts) Id, Id_Property
						FROM DB1P_Receipt 
						ORDER BY Id DESC)
						AS s;
						
			COMMIT TRANSACTION Disconnection

			BEGIN TRANSACTION ReceiptPayment
				DELETE @TodayPayments
			    INSERT INTO @TodayPayments
					SELECT ReceiptType, PropertyNum
					FROM @Payments
					WHERE Date = @currentDate;
				EXEC SP_insertTodayPayments @TodayPayments,@currentDate,@ReconnectionIdCC,@WaterIdCC;
			COMMIT TRANSACTION ReceiptPayment

			BEGIN TRANSACTION Reconnection
				INSERT INTO DB1P_Reconnection (Id_ReconnectionReceipt,Id_Property,[Date])
					SELECT cdr.Id,cdr.Id_Property,@currentDate
						FROM ConnDiscReceipt cdr
						WHERE cdr.[Status] = 1 AND cdr.Id_Reconnection IS NULL;

			COMMIT TRANSACTION Reconnection
			
			EXEC 
				SP_XML_APCreations 
					@APs, 
					@currentDate
			EXEC
				SP_XML_APTermPayment
					@currentDate

		SET @dayCounter  = @dayCounter + 1
		END		

		EXEC sp_xml_removedocument @docHandle;		 																	  
END TRY
BEGIN CATCH
	ROLLBACK
	return @@Error * -1
END CATCH

END
GO