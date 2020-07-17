SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Delete  an element from DB1P_Owners.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_deleteOwner
	@inDocValue varchar(30), 
	@inDocType varchar(50)
AS
BEGIN

	DECLARE @Id int;
	DECLARE @IdDocType int;

	BEGIN TRY
		SELECT @IdDocType = t.Id
			FROM DB1P_Doc_Id_Types AS t
			WHERE t.Name = @inDocType
		SELECT @Id = o.Id
			FROM activeOwners AS o
			WHERE DocValue = @inDocValue AND DocType_Id = @IdDocType

		IF(@IdDocType IS NOT NULL AND @Id IS NOT NULL)
		BEGIN 
			BEGIN TRANSACTION
				IF @IdDocType = 4
					BEGIN
						UPDATE dbo.DB1P_LegalOwners
							SET Active = 0
							WHERE Id = @Id
					END
				UPDATE dbo.DB1P_Owners
					SET Active = 0
					WHERE Id = @Id
			COMMIT TRANSACTION
			RETURN @Id;
		END
		RETURN -50002
	END TRY
	BEGIN CATCH
		ROLLBACK
		RETURN @@Error * -1
	END CATCH
END