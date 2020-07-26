SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Selects a receipts and inserts it in the selected to payment temp table
-- Notes:
-- =============================================
CREATE OR ALTER PROCEDURE SP_paySelectedReceipts
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE @Date DATE;
DECLARE @IdMoratoryInterestCC INT;
DECLARE @NumOfMoratoryInterest INT;
DECLARE @IdProofOfPayment INT;
DECLARE @TotalAmount MONEY;
DECLARE @Error INT;
BEGIN TRY
	SET @IdMoratoryInterestCC = 11; --MoratoryInterest ID from xml
	SET @Date = GETDATE();

	IF(
		(SELECT TOP 1 ReceiptNumber 
			FROM DB1P_SelectedReceipts) 
		IS NOT NULL)
	BEGIN
		BEGIN TRANSACTION

			INSERT INTO DB1P_Receipt (Id_ChargeConcept,Id_Property,Date,DueDate,Amount)
				SELECT @IdMoratoryInterestCC,Id_Property,@Date,NULL,
						Amount = (Amount*MoratoryInterestRate/365)* ABS(DATEDIFF(day,DueDate,@Date))
					FROM activeReceiptsWithMoratoryRate ar
						INNER JOIN DB1P_SelectedReceipts sr
							ON ar.ReceiptNumber = sr.ReceiptNumber
					WHERE ar.DueDate < @Date
					
			SELECT @NumOfMoratoryInterest = @@ROWCOUNT;
			
			INSERT INTO DB1P_SelectedReceipts (ReceiptNumber)
				SELECT TOP (@NumOfMoratoryInterest) Id
					FROM DB1P_Receipt
				ORDER BY Id DESC;

			SELECT @TotalAmount = 
				SUM(Amount)
					FROM activeReceipts ar
						INNER JOIN DB1P_SelectedReceipts sr
							ON  ar.ReceiptNumber = sr.ReceiptNumber
						
			--Se inserta el ProofOfPayment
			INSERT INTO DB1P_ProofOfPayment ([Date],TotalAmount,Active)
			VALUES(@Date,@TotalAmount,1);
			
			SET @IdProofOfPayment = SCOPE_IDENTITY();
			--Se insertan los recibos en la tabla de recibos pagados
			INSERT INTO DB1P_PaidReceipts
				SELECT ReceiptNumber,@IdProofOfPayment
					FROM DB1P_SelectedReceipts
			--Se marcan como pagados los recibos
			UPDATE DB1P_Receipt
				SET [Status] = 1
					WHERE Id IN 
						(SELECT ReceiptNumber
							FROM DB1P_SelectedReceipts
						)

		COMMIT TRANSACTION
		RETURN @IdProofOfPayment;
	END
	RETURN -50004 --Empty selection
END TRY
BEGIN CATCH
	SET @Error = @@Error * -1;
	ROLLBACK
	RETURN @Error;
END CATCH
END
GO