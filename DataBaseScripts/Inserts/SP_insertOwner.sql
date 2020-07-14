SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/27
-- Description:	Alters [SP_insertOwner] procedure.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_insertOwner 
	
	@inName varchar(50), 
	@inDocValue VARCHAR(30), 
	@inDocType varchar(50)

AS
BEGIN
	DECLARE @IdDocType int
	BEGIN TRY
		SELECT @IdDocType = Id
            FROM dbo.DB1P_Doc_Id_Types
            WHERE Name = @inDocType
        IF(@IdDocType IS NOT NULL)
        BEGIN
            INSERT INTO dbo.DB1P_Owners (Name, DocValue, DocType_Id, Active)
		    VALUES (@inName, @inDocValue, @IdDocType, 1);
		    RETURN SCOPE_IDENTITY();
        END
    	RETURN -50002
	END TRY
	BEGIN CATCH
		RETURN @@Error * -1
	END CATCH		
END