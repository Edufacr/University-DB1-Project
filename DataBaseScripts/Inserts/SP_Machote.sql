CREATE OR ALTER PROCEDURE SP_

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here

    DECLARE @Error INT;

BEGIN TRY

    BEGIN TRANSACTION

        
    COMMIT TRANSACTION
    RETURN 1;
	
END TRY
BEGIN CATCH

    SET @Error = @@Error

    IF @@TRANCOUNT > 0
        ROLLBACK
	RETURN @Error

END CATCH
END
GO