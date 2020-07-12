SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Deletes Owner with ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_DeleteOwner 
	
	@inDocValue VARCHAR(30), 
	@inDocType VARCHAR(50),
    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityOwner INT
    DECLARE @IdEntityLegalOwner INT;
    DECLARE @IdOwner INT;
    DECLARE @Date DATETIME;
	BEGIN TRY
        SET @IdEntityOwner = 2;
        SET @IdEntityLegalOwner = 6;
        SET @Date = GETDATE();

        SELECT @IdDocType = t.Id
			FROM DB1P_Doc_Id_Types AS t
			WHERE t.Name = @inDocType
		SELECT @IdOwner = o.Id
			FROM activeOwners AS o
			WHERE DocValue = @inDocValue AND DocType_Id = @IdDocType

		IF(@IdDocType IS NOT NULL AND @IdOwner IS NOT NULL)
		BEGIN 
			BEGIN TRANSACTION
				IF @IdDocType = 4
					BEGIN
						UPDATE dbo.DB1P_LegalOwners
							SET Active = 0
							WHERE Id = @IdOwner
                        EXEC SP_insertChangeLog @IdEntityLegalOwner,@IdOwner,@Date,@inInsertedBy,@inInsertedFrom;
					END
				UPDATE dbo.DB1P_Owners
					SET Active = 0
					WHERE Id = @IdOwner
                EXEC SP_insertChangeLog @IdEntityOwner,@IdOwner,@Date,@inInsertedBy,@inInsertedFrom;
			COMMIT TRANSACTION
			RETURN @IdOwner;
		END
		RETURN -50002
	END TRY
	BEGIN CATCH
		RETURN @@Error * -1
	END CATCH		
END