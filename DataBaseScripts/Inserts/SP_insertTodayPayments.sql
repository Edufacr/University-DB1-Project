SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	updates receipts, inserts into paid receipts and inserts into Proof Of Payment
-- =============================================
CREATE or ALTER PROCEDURE SP_insertTodayPayments
    -- Add the parameters for the stored procedure here
    @inPaymentTable dbo.TodayPaymentsTable  READONLY, @inDate DATE,@inReconnectionIdCC INT,@inWaterIdCC INT
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
    DECLARE @MaxRow INT;
	DECLARE @CurrentPropertyRow INT;
    DECLARE @Properties TABLE(Id INT PRIMARY KEY IDENTITY(1,1), PropertyNum INT);
    DECLARE @TodayPaymentsTable AS TodayPaymentsTable;
    DECLARE @ReconnectionPaymentExists INT;
    DECLARE @CurrentPropertyNum INT;
    DECLARE @CurrentPropertyId INT;
    DECLARE @MoratoryInterestCCId INT;
    DECLARE @TotalAmount MONEY;
    DECLARE @ProofOfPaymentId INT;
    DECLARE @NumOfPaidReceipts INT;

    INSERT INTO @Properties
        SELECT DISTINCT PropertyNum
        FROM @inPaymentTable;
    
    INSERT INTO @TodayPaymentsTable
        SELECT ReceiptType, PropertyNum
        FROM @inPaymentTable;

    SELECT @MaxRow = COUNT(Id)
        FROM @Properties;

    SELECT @MoratoryInterestCCId = Id
		FROM DB1P_ChargeConcepts
		WHERE Name = 'Interes Moratorio'

    SET @CurrentPropertyRow = 1;


    WHILE(@CurrentPropertyRow <= @MaxRow)
        BEGIN                 
            BEGIN TRANSACTION CurrentPropertyPayingProcess
                SELECT @CurrentPropertyNum = PropertyNum
                    FROM @Properties 
                        WHERE Id = @CurrentPropertyRow;
                    SELECT @CurrentPropertyId = Id
                        FROM DB1P_Properties
                        WHERE PropertyNumber = @CurrentPropertyNum;

                    SELECT @ReconnectionPaymentExists =
                        COUNT(ReceiptType)
                        FROM @TodayPaymentsTable
                        WHERE @CurrentPropertyNum = PropertyNum AND ReceiptType = @inReconnectionIdCC;

                    IF(@ReconnectionPaymentExists > 0)
                        --! Toma en cuenta que una misma propiedad no paga reconeccion y agua el mismo dia
                        BEGIN 
                            INSERT INTO @TodayPaymentsTable (ReceiptType, PropertyNum)
                                VALUES (@inWaterIdCC,@CurrentPropertyNum);
                        END
                    --Se agregan recibos de intereses moratorios
                    INSERT INTO DB1P_Receipt (Id_ChargeConcept,Id_Property,Date,DueDate,Amount)
                        SELECT Id_ChargeConcept,Id_Property,@inDate,NULL,
                                Amount = (Amount*MoratoryInterestRate/365)* ABS(DATEDIFF(day,DueDate,@inDate))
                        FROM activeReceiptsWithMoratoryRate
                            INNER JOIN @TodayPaymentsTable t
                                ON t.ReceiptType = Id_ChargeConcept AND @CurrentPropertyNum = t.PropertyNum
                        WHERE @CurrentPropertyId = Id_Property AND DueDate < @inDate;
                    --Se agrega a la lista de recibos a pagar los de interes moratorio
                    INSERT INTO @TodayPaymentsTable (ReceiptType, PropertyNum)
                        VALUES (@MoratoryInterestCCId,@CurrentPropertyNum);

                    SELECT @TotalAmount = 
                        SUM(Amount)
                            FROM activeReceipts
                                INNER JOIN @TodayPaymentsTable t
                                    ON t.ReceiptType = Id_ChargeConcept AND @CurrentPropertyNum = t.PropertyNum
                            WHERE @CurrentPropertyId = Id_Property; 
                    
                    IF(@TotalAmount IS NOT NULL)
                    BEGIN
                    --Se insertan los recibos en la tabla de recibos pagados
                        INSERT INTO DB1P_PaidReceipts
                            SELECT DISTINCT Id,NULL
                            FROM DB1P_Receipt
                                INNER JOIN @TodayPaymentsTable t
                                    ON t.ReceiptType = Id_ChargeConcept AND @CurrentPropertyNum = t.PropertyNum
                            WHERE @CurrentPropertyId = Id_Property AND [Status] = 0; 
                        

                        SET @NumOfPaidReceipts = @@ROWCOUNT;
                        --Se marcan como pagados los recibos
                        UPDATE DB1P_Receipt
                            SET [Status] = 1
                            FROM DB1P_Receipt
                                INNER JOIN @TodayPaymentsTable t
                                    ON ReceiptType = Id_ChargeConcept AND @CurrentPropertyNum = t.PropertyNum
                            WHERE @CurrentPropertyId = Id_Property AND [Status] = 0;
                        --Se inserta el ProofOfPayment
                        INSERT INTO DB1P_ProofOfPayment
                            VALUES(@inDate,@TotalAmount,1);
                        SET @ProofOfPaymentId = SCOPE_IDENTITY();
                        --Se agregan  los comprobantes de pago
                        UPDATE DB1P_PaidReceipts
                            SET Id_ProofOfPayment = @ProofOfPaymentId
                            WHERE Id 
                                IN (SELECT TOP (@NumOfPaidReceipts) Id 
                                    FROM DB1P_PaidReceipts 
                                        ORDER BY Id DESC);

                    END
            COMMIT TRANSACTION CurrentPropertyPayingProcess
        SET @CurrentPropertyRow = @CurrentPropertyRow +1
        END
    RETURN 1;
END TRY
BEGIN CATCH
    PRINT(@@Error)
    PRINT(@CurrentPropertyId);
    PRINT(@CurrentPropertyNum);
    IF @@TRANCOUNT > 0
        ROLLBACK
	RETURN @@Error * -1
END CATCH
END
GO