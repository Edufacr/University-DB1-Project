SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Inserts PropertyUser and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_insertPropertiesUsers
	
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

    DECLARE @jsonAfter VARCHAR(500);
	BEGIN TRY
        SET @IdEntity = 5;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
            EXEC @IdRelation = SP_insertPropertiesUsers @inPropertyNumber,@inUsername;
            IF(@IdRelation > 0)
                BEGIN
                    SET @jsonAfter = 
                        (SELECT RelationId,Username,PropertyNumber
                            FROM activePropertiesUsersRelations
                            WHERE @IdRelation = RelationId
                        FOR JSON PATH);
                    EXEC SP_insertChangeLog @IdEntity,@IdRelation,@Date,@inInsertedBy,@inInsertedFrom,null,@jsonAfter;
                END
        COMMIT TRANSACTION
        RETURN @IdRelation;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END