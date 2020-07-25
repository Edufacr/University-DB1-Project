SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description: Querrys selected receipts with moratory interest (Single User Table)
-- =============================================
CREATE OR ALTER PROCEDURE SP_getSelectedReceipts
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE @Date DATE;
DECLARE @IdMoratoryInterestCC INT;
DECLARE @NameMoratoryInterestCC VARCHAR(50);
BEGIN TRY
	SET @IdMoratoryInterestCC = 11; --MoratoryInterest ID from xml
	SET @Date = GETDATE();
	SELECT @NameMoratoryInterestCC = Name 
		FROM DB1P_ChargeConcepts 
			WHERE Id = @IdMoratoryInterestCC;
	
	SELECT NULL AS ReceiptNumber,@NameMoratoryInterestCC AS ChargeConceptName,@Date AS ReceiptDate,NULL AS DueDate,
			Amount = (Amount*MoratoryInterestRate/365)* ABS(DATEDIFF(day,DueDate,@Date))
        FROM activeReceiptsWithMoratoryRate ar
            INNER JOIN DB1P_SelectedReceipts sr
                ON ar.ReceiptNumber = sr.ReceiptNumber

        WHERE ar.DueDate < @Date

	UNION

	SELECT sr.ReceiptNumber,cc.Name,Date,DueDate,Amount
		FROM activeReceipts ar
			INNER JOIN DB1P_ChargeConcepts cc
				ON ar.Id_ChargeConcept = cc.Id
			INNER JOIN DB1P_SelectedReceipts sr
				ON sr.ReceiptNumber = ar.ReceiptNumber
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO