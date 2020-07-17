SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 04/06/2020
-- Description:	logically deletes a properties user relation
-- =============================================
CREATE or ALTER PROCEDURE dbo.SP_deletePropertiesUsers
	-- Add the parameters for the stored procedure here
    @inPropertyNumber int, 
	@inUsername varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
	DECLARE @IdProperty int;
	DECLARE @IdUser int;
	DECLARE @IdRelation int;
	SET @IdProperty = (Select Id from activeProperties where PropertyNumber = @inPropertyNumber)
	SET @IdUser = (Select Id from activeUsers where Username = @inUsername)
	SELECT @IdRelation = RelationId
		FROM activePropertiesUsersRelations
		where UserId = @IdUser and PropertyId = @IdProperty;
	IF(@IdRelation IS NOT NULL)
		BEGIN
			UPDATE DB1P_PropertiesUsers
				set
				Active = 0
				WHERE @IdRelation = Id
			return @IdRelation;
		END 
	RETURN -50002;
END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH
END
GO