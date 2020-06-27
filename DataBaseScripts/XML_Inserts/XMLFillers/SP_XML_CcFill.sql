SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 04/06/2020
-- Description:	Loads the initial CC from a XML
-- =============================================
CREATE or ALTER PROCEDURE dbo.SP_XML_CcFill
	-- Add the parameters for the stored procedure here
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;
BEGIN TRY
	BEGIN TRANSACTION
		DECLARE @docHandle int;
		DECLARE @xmlDocument xml;
		DECLARE @xmlTable TABLE(Id int,Name VARCHAR(50), MoratoryInterestRate REAL,ReciptEmisionDays TINYINT,
		ExpirationDays TINYINT, ValueM3 money, MinValue money, Amount money,PercentageValue REAL, CCType varchar(20));
		EXEC SP_XML_GetCcXML @xmlDocument OUTPUT;
		EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument; 

		INSERT INTO @xmlTable (Id,Name, MoratoryInterestRate,ReciptEmisionDays,ExpirationDays,ValueM3, MinValue, Amount,
		PercentageValue,CCType)

		SELECT Id,Name,MoratoryInterestRate,ReciptEmisionDays,ExpirationDays,ValueM3,MinValue,Amount,PercentageValue,CCType
		FROM OPENXML(@docHandle,'/Conceptos_de_Cobro/conceptocobro') 
		with (Id int '@id', Name VARCHAR(50) '@Nombre',MoratoryInterestRate REAL '@TasaInteresMoratoria',
		ReciptEmisionDays TINYINT '@DiaCobro',ExpirationDays TINYINT '@QDiasVencimiento',ValueM3 MONEY '@ValorM3', 
		MinValue MONEY '@MontoMinRecibo', Amount MONEY '@Monto',
		PercentageValue REAL '@ValorPorcentaje', CCType varchar(20) '@TipoCC');
		
		INSERT INTO DB1P_ChargeConcepts (Id,Name, MoratoryInterestRate,ReciptEmisionDay,ExpirationDays)
		SELECT Id,Name,MoratoryInterestRate,ReciptEmisionDays,ExpirationDays
		FROM @xmlTable;
		
		INSERT INTO DB1P_Consumption_CC (Id, ValueM3, MinValue)
		SELECT Id,ValueM3,MinValue
		FROM @xmlTable where CCType = 'CC Consumo';

		INSERT INTO DB1P_Percentage_CC (Id,PercentageValue)
		SELECT Id,PercentageValue
		FROM @xmlTable where CCType = 'CC Porcentual';

		INSERT INTO DB1P_Fixed_CC (Id,Amount)
		SELECT Id,Amount
		FROM @xmlTable where CCType = 'CC Fijo';
		EXEC sp_xml_removedocument @docHandle; -- Remove the internal representation of the XML document.
	COMMIT
	RETURN SCOPE_IDENTITY();
END TRY
BEGIN CATCH
	ROLLBACK
	return @@Error * -1
END CATCH

END