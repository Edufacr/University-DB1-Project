SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Inserts Owner and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_updateOwner 
	
	@inDocValue VARCHAR(30), 
	@inDocType  varchar(50), 
	@inNewName varchar(50),
	@inNewDocValue VARCHAR(30),
	@inNewDocType varchar(50),
    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityOwner INT
    DECLARE @IdOwner INT;
    DECLARE @Date DATETIME;
	BEGIN TRY
        SET @IdEntityOwner = 2;
        SET @Date = GETDATE();
        BEGIN TRANSACTION

        EXEC @IdOwner = SP_updateOwner @inDocValue,@inDocType,@inNewName,@inNewDocValue,@inNewDocType;

        IF(@IdOwner > 0)
            BEGIN
                EXEC SP_insertChangeLog @IdEntityOwner,@IdOwner,@Date,@inInsertedBy,@inInsertedFrom;
            END
        COMMIT TRANSACTION
        RETURN @IdOwner;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END