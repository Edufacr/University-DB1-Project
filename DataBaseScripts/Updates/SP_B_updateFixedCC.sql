SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	updates FixedCC and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_updatetFixedCC
	
	@inName varchar(50),
	@inNewName varchar(50),
	@inNewExpirationDays tinyint,
	@inNewReciptEmisionDay tinyint,
	@inNewMoratoryInterestRate real,
	@inNewAmount money,

    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityCC INT
    DECLARE @IdCC INT;
    DECLARE @Date DATETIME;
	BEGIN TRY
        SET @IdEntityCC = 7;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
        EXEC @IdCC = SP_updatetFixedCC @inName,@inNewName,@inNewExpirationDays,@inNewReciptEmisionDay,@inNewMoratoryInterestRate,
                                            @inNewAmount;
        IF(@IdCC > 0)
            BEGIN
                EXEC SP_insertChangeLog @IdEntityCC,@IdCC,@Date,@inInsertedBy,@inInsertedFrom;
            END
        COMMIT TRANSACTION
        RETURN @IdCC;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END