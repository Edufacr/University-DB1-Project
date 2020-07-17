SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	updates User and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_updatetUser
	
	@inUsername varchar(50),
    @inNewUserName varchar(50),
    @inNewPassword varchar(50),

    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityUser INT
    DECLARE @IdUser INT;
    DECLARE @Date DATETIME;

    DECLARE @jsonBefore VARCHAR(500);
    DECLARE @jsonAfter VARCHAR(500);
	BEGIN TRY
        SET @IdEntityUser = 3;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
        SET @jsonBefore = 
            (SELECT Username AS Usuario,Password,UserType AS Es_Administrador
                FROM DB1P_Users
                    WHERE Username = @inUserName
                FOR JSON PATH);
        EXEC @IdUser = SP_updateUser @inUsername,@inNewUserName,@inNewPassword;
        IF(@IdUser > 0)
            BEGIN
                SET @jsonAfter = 
                    (SELECT Username AS Usuario,Password,UserType AS Es_Administrador
                        FROM DB1P_Users
                            WHERE Id = @IdUser
                        FOR JSON PATH);
                EXEC SP_insertChangeLog @IdEntityUser,@IdUser,@Date,@inInsertedBy,@inInsertedFrom,@jsonBefore,@jsonAfter;
            END
        COMMIT TRANSACTION
        RETURN @IdUser;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END