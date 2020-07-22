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

    DECLARE @jsonBefore VARCHAR(500);
	DECLARE @jsonAfter VARCHAR(500);	
    BEGIN TRY
        SET @IdEntityOwner = 2;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
        SELECT @IdDocType = t.Id
			FROM DB1P_Doc_Id_Types AS t
			WHERE t.Name = @inDocType
            
            SET @jsonBefore = 
                (SELECT Name AS Nombre,DocType_Id AS Id_Tipo_Identidad,DocValue AS Numero_de_Identidad
					FROM DB1P_Owners
                        WHERE DocValue = @inDocValue AND DocType_Id = @IdDocType
                FOR JSON PATH);
            EXEC @IdOwner = SP_updateOwner @inDocValue,@inDocType,@inNewName,@inNewDocValue,@inNewDocType;
            IF(@IdOwner > 0)
                BEGIN
                    SET @jsonAfter = 
                        (SELECT Name AS Nombre,DocType_Id AS Id_Tipo_Identidad,DocValue AS Numero_de_Identidad
					        FROM DB1P_Owners
                                WHERE Id = @IdOwner
                        FOR JSON PATH);
                    EXEC SP_insertChangeLog @IdEntityOwner,@IdOwner,@Date,@inInsertedBy,@inInsertedFrom,@jsonBefore,@jsonAfter;
                END
        COMMIT TRANSACTION
        RETURN @IdOwner;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END