SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 02/06/2020
-- Description:	logical delete to a username
-- =============================================

--TODO Inputs validations.


CREATE OR ALTER PROCEDURE SP_deleteUser
	-- Add the parameters for the stored procedure here
    @pUsername varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
	BEGIN TRANSACTION
        UPDATE DB1P_Users
        set
        Active = 0
		where Username = @pUsername; 
	COMMIT
	return SCOPE_IDENTITY();
END TRY
BEGIN CATCH
	ROLLBACK
	return @@Error * -1
END CATCH
END
GO