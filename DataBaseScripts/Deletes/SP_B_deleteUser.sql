SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	deletes User and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_deleteUser
	
    @inUserName VARCHAR(50),

    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityUser INT
    DECLARE @IdUser INT;
    DECLARE @Date DATETIME;

    DECLARE @jsonBefore VARCHAR(500);

	BEGIN TRY
        SET @IdEntityUser = 3;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
            SET @jsonBefore = 
                (SELECT Id,Username,Password,UserType
                    FROM DB1P_Users
                        WHERE Username = @inUserName
                    FOR JSON PATH);
            EXEC @IdUser = SP_deleteUser @inUserName;
            IF(@IdUser > 0)
                BEGIN
                    EXEC SP_insertChangeLog @IdEntityUser,@IdUser,@Date,@inInsertedBy,@inInsertedFrom,@jsonBefore,null;
                END
        COMMIT TRANSACTION
        RETURN @IdUser;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END