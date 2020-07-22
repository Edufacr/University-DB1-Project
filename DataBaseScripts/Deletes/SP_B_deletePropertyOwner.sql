SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Deletes PropertyUser and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_deletePropertyOwner
	
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

    DECLARE @jsonBefore VARCHAR(500);
	BEGIN TRY
        SET @IdEntity = 4;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
            SET @jsonBefore = 
                (SELECT ownerDocType AS Tipo_de_Documento,ownerDocValue AS Numero_de_identidad,PropertyNumber AS Numero_de_propiedad
                    FROM activePropertiesOwnersRelations
                     WHERE @inPropertyNumber = PropertyNumber AND @inOwnerDocValue = ownerDocValue AND @inOwnerDocType = @inOwnerDocType
            FOR JSON PATH);
            EXEC @IdRelation = SP_deletePropertyOwner @inOwnerDocValue,@inOwnerDocType,@inPropertyNumber;
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