SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Inserts LegalOwner and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_updateLegalOwner 
	
	@inNewResponsibleName varchar(50), 
	@inNewResp_DocId_type varchar(50),
	@inNewResp_DocValue VARCHAR(30), 
	@inLegalOwner_DocValue VARCHAR(30),
	@inNewLegalName varchar(50),

    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityLegalOwner INT
    DECLARE @IdOwner INT;
    DECLARE @Date DATETIME;
	BEGIN TRY
        SET @IdEntityLegalOwner = 6;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
            EXEC @IdOwner = SP_updateLegalOwner @inNewResponsibleName,@inNewResp_DocId_type,@inNewResp_DocValue,@inLegalOwner_DocValue,@inNewLegalName;

            IF(@IdOwner > 0)
                BEGIN
                    EXEC SP_insertChangeLog @IdEntityLegalOwner,@IdOwner,@Date,@inInsertedBy,@inInsertedFrom;
                END
        COMMIT TRANSACTION
        RETURN @IdOwner;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END