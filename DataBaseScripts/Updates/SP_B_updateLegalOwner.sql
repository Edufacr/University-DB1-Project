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
    
    @inLegalOwner_DocValue VARCHAR(30),
    @inNewLegal_DocValue VARCHAR (30),
    @inNewLegalName varchar(50),
	@inNewResponsibleName varchar(50), 
	@inNewResp_DocId_type varchar(50),
	@inNewResp_DocValue VARCHAR(30),


    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)
    
AS
BEGIN
    DECLARE @IdEntityLegalOwner INT
    DECLARE @IdOwner INT;
    DECLARE @Date DATETIME;

    DECLARE @jsonBefore VARCHAR(500);
    DECLARE @jsonAfter VARCHAR(500);
	BEGIN TRY
        SET @IdEntityLegalOwner = 6;
        SET @Date = GETDATE();

		SELECT @IdOwner = o.Id
			FROM activeOwners AS o
			WHERE DocValue = @inLegalOwner_DocValue AND DocType_Id = 4
        SET @jsonBefore = 
            (SELECT Id,LegalName,LegalDocValue,ResponsibleName,RespDocType_Id,RespDocValue
                FROM completeLegalOwners
                WHERE Id = @IdOwner
            FOR JSON PATH);
        BEGIN TRANSACTION
            EXEC @IdOwner = SP_updateLegalOwner @inLegalOwner_DocValue,@inNewLegal_DocValue,@inNewLegalName,@inNewResp_DocId_type,@inNewResp_DocValue,@inLegalOwner_DocValue;
            IF(@IdOwner > 0)
                BEGIN
                SET @jsonAfter = 
                    (SELECT Id,LegalName,LegalDocValue,ResponsibleName,RespDocType_Id,RespDocValue
                        FROM completeLegalOwners
                        WHERE Id = @IdOwner
                    FOR JSON PATH);
                    EXEC SP_insertChangeLog @IdEntityLegalOwner,@IdOwner,@Date,@inInsertedBy,@inInsertedFrom,@jsonBefore,@jsonAfter;
                END
        COMMIT TRANSACTION
        RETURN @IdOwner;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END