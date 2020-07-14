SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Inserts User and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_insertUser
	
    @inUserName VARCHAR(50),
	@inPassword VARCHAR(50),
	@inIsAdmin bit,

    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityUser INT
    DECLARE @IdUser INT;
    DECLARE @Date DATETIME;

    DECLARE @jsonAfter VARCHAR(500);

	BEGIN TRY
        SET @IdEntityUser = 3;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
            EXEC @IdUser = SP_insertUser @inUserName,@inPassword,@inIsAdmin;
            IF(@IdUser > 0)
                BEGIN
                    SET @jsonAfter = 
                        (SELECT Id,Username,Password,UserType
                            FROM DB1P_Users
                            WHERE @IdUser = Id
                        FOR JSON PATH);
                    EXEC SP_insertChangeLog @IdEntityUser,@IdUser,@Date,@inInsertedBy,@inInsertedFrom,NULL,@jsonAfter;
                END
        COMMIT TRANSACTION
        RETURN @IdUser;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END

        