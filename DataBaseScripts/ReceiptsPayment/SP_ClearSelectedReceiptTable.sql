SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Selects a receipts and inserts it in the selected to payment temp table
-- =============================================
CREATE OR ALTER PROCEDURE SP_ClearSelectedReceiptsTable
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