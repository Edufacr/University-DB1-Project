SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Selects a receipts and inserts it in the selected to payment temp table
-- =============================================
CREATE OR ALTER PROCEDURE SP_selectReceipt
	-- Add the parameters for the stored procedure here
    @inReceiptNumber INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DECLARE @ReturnValue INT;
	BEGIN TRY
		EXEC @ReturnValue = SP_validateReceiptSelection @inReceiptNumber
		
		IF(@ReturnValue > 0)
		BEGIN
			INSERT INTO DB1P_SelectedReceipts(ReceiptNumber)
			VALUES(@inReceiptNumber);
		END
		
		RETURN @ReturnValue;
	END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO