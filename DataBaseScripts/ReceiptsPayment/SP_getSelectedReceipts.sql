SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description: Querrys selected receipts (Single User Table)
-- =============================================
CREATE OR ALTER PROCEDURE SP_getSelectedReceipts
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
	RETURN -50003
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO