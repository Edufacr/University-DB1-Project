SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Deletes PropertyUser and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_deletesPropertyOwner
	
	@inOwnerDocValue varchar(30), 
	@inOwnerDocType varchar(50), 
	@inPropertyNumber int,

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
        SET @IdEntity = 4;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
            EXEC @IdRelation = SP_insertPropertyOwner @inOwnerDocValue,@inOwnerDocType,@inPropertyNumber;
            IF(@IdRelation > 0)
                BEGIN
                    SET @jsonAfter = 
                        (SELECT RelationId,ownerDocType,ownerDocValue,PropertyNumber
                            FROM activePropertiesOwnersRelations
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