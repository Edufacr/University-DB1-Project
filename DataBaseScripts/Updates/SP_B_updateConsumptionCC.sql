SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	updates ConsumptionCC and ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_B_updatedConsumptionCC
	
	@inName varchar(50),
	@inNewName varchar(50),
	@inNewExpirationDays tinyint,
	@inNewReciptEmisionDay tinyint,
	@inNewMoratoryInterestRate real,
	@inNewValueM3 money,
	@inNewMinValue money,

    @inInsertedBy VARCHAR(50),
    @inInsertedFrom VARCHAR(20)

AS
BEGIN
	DECLARE @IdDocType INT
    DECLARE @IdEntityCC INT
    DECLARE @IdCC INT;
    DECLARE @Date DATETIME;

    DECLARE @jsonBefore VARCHAR(500);
    DECLARE @jsonAfter VARCHAR (500);
	BEGIN TRY
        SET @IdEntityCC = 7;
        SET @Date = GETDATE();
        BEGIN TRANSACTION
        SELECT @IdCC = Id 
            FROM DB1P_ChargeConcepts
            WHERE @inName = Name;
        SET @jsonBefore = 
            (SELECT Id,Name,MoratoryInterestRate,ReciptEmisionDay,ExpirationDays,ValueM3,MinValue
				FROM completeConsumption_CCs
                    WHERE @IdCC = Id
            FOR JSON PATH);
        EXEC @IdCC = SP_updateConsumptionCC @inName,@inNewName,@inNewExpirationDays,@inNewReciptEmisionDay,@inNewMoratoryInterestRate,
                                            	@inNewValueM3,@inNewMinValue;
        IF(@IdCC > 0)
            BEGIN
                SET @jsonAfter = 
                    (SELECT Id,Name,MoratoryInterestRate,ReciptEmisionDay,ExpirationDays,ValueM3,MinValue
                        FROM completeConsumption_CCs
                            WHERE @IdCC = Id
                    FOR JSON PATH);
                EXEC SP_insertChangeLog @IdEntityCC,@IdCC,@Date,@inInsertedBy,@inInsertedFrom,@jsonBefore,@jsonAfter;
            END
        COMMIT TRANSACTION
        RETURN @IdCC;
	END TRY
	BEGIN CATCH
        ROLLBACK
		RETURN @@Error * -1
	END CATCH		
END