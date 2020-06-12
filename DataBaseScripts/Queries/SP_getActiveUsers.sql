SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 03/06/2020
-- Description:	Gets all active Users
-- =============================================

-- TODO Input validations

CREATE OR ALTER PROCEDURE SP_getActiveUsers
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
	BEGIN TRANSACTION
        Select Username, UserType from ActiveUsers;
	COMMIT
	return @@ROWCOUNT;
END TRY
BEGIN CATCH
	ROLLBACK
	return @@Error * -1
END CATCH
END
GO