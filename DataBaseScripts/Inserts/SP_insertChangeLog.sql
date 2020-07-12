SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Inserts into ChangeLog
-- =============================================

-- TODO Input validation
-- TODO Remove transaction


CREATE or ALTER PROCEDURE SP_insertChangeLog
	-- Add the parameters for the stored procedure here
    @inIdEntityType INT, @inEntityId INT, @inInsertedAt DATETIME,@inInsertedBy VARCHAR(50),@inInsertedFrom VARCHAR(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
    DECLARE @jsonBefore VARCHAR(500);
    DECLARE @jsonAfter VARCHAR(500);
    DECLARE @IdChangeLog INT;
    BEGIN TRANSACTION
        SET @jsonBefore = 
            (SELECT IdEntityType,EntityId,InsertedAt,InsertdBy,InsertedFrom
                FROM DB1P_ChangeLog
                FOR JSON PATH);

        INSERT INTO DB1P_ChangeLog(IdEntityType,EntityId,InsertedAt,InsertdBy,InsertedFrom,JsonBefore,JsonAfter)
            VALUES(@inIdEntityType,@inEntityId,@inInsertedAt,@inInsertedBy,@inInsertedFrom,@jsonBefore,NULL)

        SET @IdChangeLog = SCOPE_IDENTITY();

        SET @jsonAfter = 
        (SELECT IdEntityType,EntityId,InsertedAt,InsertdBy,InsertedFrom
            FROM DB1P_ChangeLog
            FOR JSON PATH);

        UPDATE DB1P_ChangeLog
            SET JsonAfter = @jsonAfter
            WHERE Id = @IdChangeLog;
    COMMIT TRANSACTION
    RETURN @IdChangeLog
END TRY
BEGIN CATCH
    ROLLBACK
	RETURN @@Error * -1
END CATCH
END
GO