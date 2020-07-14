SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Inserts Owner and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_insertLegalOwner 
	
	@inName varchar(50), 
	@inResp_DocType varchar(50), 
	@inResp_DocValue VARCHAR(30), 
	@inLegalOwner_DocValue VARCHAR(30),

    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityOwner INT
    DECLARE @IdOwner INT;
    DECLARE @Date DATETIME;

    DECLARE @jsonAfter VARCHAR(500);
	BEGIN TRY
        SET @IdEntityOwner = 6;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
        EXEC @IdOwner = SP_insertLegalOwner @inName,@inResp_DocType,@inResp_DocValue,@inLegalOwner_DocValue;

        IF(@IdOwner > 0)
            BEGIN
            SET @jsonAfter = 
				(SELECT Id,ResponsibleName,Resp_DocType_Id,Resp_DocValue
			        FROM DB1P_LegalOwners
				        WHERE Id = @IdOwner
					FOR JSON PATH);
                EXEC SP_insertChangeLog @IdEntityOwner,@IdOwner,@Date,@inInsertedBy,@inInsertedFrom,null,@jsonAfter;
            END
        COMMIT TRANSACTION
        RETURN @IdOwner;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END