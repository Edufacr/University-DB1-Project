SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 02/06/2020
-- Description:	updates User values with username
-- =============================================
CREATE OR ALTER PROCEDURE SP_updateUser
	-- Add the parameters for the stored procedure here
	@inUsername varchar(50),@inNewUserName varchar(50),@inNewPassword varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DECLARE @UserId INT;
BEGIN TRY
	SELECT @UserId = Id
		FROM DB1P_Users
		WHERE Username = @inUsername;
	IF(@UserId IS NOT NULL)
	BEGIN 
		UPDATE DB1P_Users
		SET
			Username = @inNewUserName,
			Password = @inNewPassword
		where Username = @inUsername;
		return @UserId;
	END
	RETURN -50002;
END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH
END
GO