SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 02/06/2020
-- Description:	logical delete to a username
-- =============================================
CREATE OR ALTER PROCEDURE SP_deleteUser
	-- Add the parameters for the stored procedure here
    @inUsername varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DECLARE @IdUser INT;
	BEGIN TRY
			SELECT @IdUser = Id
				FROM DB1P_Users
				WHERE @inUsername = Username;
			IF(@IdUser IS NOT NULL)
			BEGIN
				UPDATE DB1P_Users
				set
				Active = 0
				where Username = @inUsername;
				RETURN @IdUser;
			END 
		RETURN -50002
	END TRY
	BEGIN CATCH
		return @@Error * -1
	END CATCH
END
GO