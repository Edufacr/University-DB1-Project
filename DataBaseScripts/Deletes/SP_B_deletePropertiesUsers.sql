SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Deletes PropertyUser and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_deletesPropertiesUsers
	
    @inPropertyNumber int,
	@inUsername VARCHAR(50),
    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntity INT
    DECLARE @IdRelation INT;
    DECLARE @Date DATETIME;

    DECLARE @jsonBefore VARCHAR(500);
	BEGIN TRY
        SET @IdEntity = 5;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
            SET @jsonBefore = 
                (SELECT RelationId,Username,PropertyNumber
                    FROM activePropertiesUsersRelations
                     WHERE @inUsername = Username AND @inPropertyNumber = PropertyNumber
            FOR JSON PATH);
            EXEC @IdRelation = SP_deletePropertiesUsers @inPropertyNumber,@inUsername;
            IF(@IdRelation > 0)
                BEGIN
                    EXEC SP_insertChangeLog @IdEntity,@IdRelation,@Date,@inInsertedBy,@inInsertedFrom,@jsonBefore,null;
                END
        COMMIT TRANSACTION
        RETURN @IdRelation;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END