SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description: Querrys selected receipts with moratory interest (Single User Table)
-- =============================================
CREATE OR ALTER PROCEDURE SP_getSelectedTotalAmount
	-- Add the parameters for the stored procedure here
	
	@outTotal MONEY OUTPUT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE @Date DATE;
DECLARE @MoratoryInterestTable TABLE (Amount MONEY);
DECLARE @MoratoryTotal MONEY;
DECLARE @ReceiptTotal MONEY;

BEGIN TRY
	SET @Date = GETDATE();
    
    INSERT INTO @MoratoryInterestTable (Amount)
		SELECT Amount = (Amount*MoratoryInterestRate/365)* ABS(DATEDIFF(day,DueDate,@Date))
			FROM activeReceiptsWithMoratoryRate ar
				INNER JOIN DB1P_SelectedReceipts sr
                	ON ar.ReceiptNumber = sr.ReceiptNumber
						WHERE ar.DueDate < @Date

	SELECT @MoratoryTotal = 
		SUM(Amount) 
			FROM @MoratoryInterestTable;
									
	SELECT @ReceiptTotal = 
		SUM(Amount) 
			FROM activeReceipts ar
				INNER JOIN DB1P_SelectedReceipts sr
					ON sr.ReceiptNumber = ar.ReceiptNumber 

	SET @outTotal = @MoratoryTotal + @ReceiptTotal
	
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO