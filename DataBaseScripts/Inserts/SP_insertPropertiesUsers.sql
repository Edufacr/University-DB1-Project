SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 04/06/2020
-- Description:	inserts a relation between Properties and Users
-- =============================================
CREATE OR ALTER PROCEDURE SP_insertPropertiesUsers
	
	-- Add the parameters for the stored procedure here
    @inPropertyNumber int,
	@inUsername VARCHAR(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
	DECLARE @IdProperty int;
	DECLARE @IdUser int;
		SET @IdProperty = (Select Id from activeProperties where PropertyNumber = @inPropertyNumber);
		SET @IdUser = (Select Id from activeUsers where Username = @inUsername);
		IF(@IdUser IS NOT NULL AND @IdProperty IS NOT NULL)
			BEGIN
				INSERT INTO DB1P_PropertiesUsers
					VALUES(@IdProperty,@IdUser,1);
				RETURN SCOPE_IDENTITY();
			END
		RETURN -50002;
END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH
END
GO