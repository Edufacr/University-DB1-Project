SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Inserts Owner and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_insertOwner 
	
	@inName varchar(50), 
	@inDocValue VARCHAR(30), 
	@inDocType VARCHAR(50),
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
        SET @IdEntityOwner = 2;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
        EXEC @IdOwner = SP_insertOwner @inName,@inDocValue,@inDocType;
        IF(@IdOwner > 0)
            BEGIN
                SET @jsonAfter = 
		            (SELECT Id,Name,DocType_Id,DocValue
			        	FROM DB1P_Owners
				    	WHERE @IdOwner = Id
			    	FOR JSON PATH);
                EXEC SP_insertChangeLog @IdEntityOwner,@IdOwner,@Date,@inInsertedBy,@inInsertedFrom,null,jsonAfter;
            END
        COMMIT TRANSACTION
        RETURN @IdOwner;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END