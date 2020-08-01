SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Gets details of receipt with AP
-- =============================================
CREATE OR ALTER PROCEDURE SP_getReceiptWithAp
	-- Add the parameters for the stored procedure here
    @inMovNumber INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
    DECLARE @IdReceipt int;
    DECLARE @ApCCName VARCHAR(50);
BEGIN TRY
    
    SELECT @IdReceipt = ReceiptNumber
    FROM completeAPReceipts AS r
    WHERE r.MovId = @inMovNumber;

    SELECT @ApCCName = Name
    FROM completeCCs
    WHERE Id = 12;

    IF(@IdReceipt IS NOT NULL)
    BEGIN
        SELECT ReceiptNumber,@ApCCName as ChargeConceptName,Amount,DueDate,Date AS ReceiptDate
        FROM completeAPReceipts AS r
        WHERE r.ReceiptNumber = @IdReceipt
    END
    RETURN -50002
END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH
END
GO