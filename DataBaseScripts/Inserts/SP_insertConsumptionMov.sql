SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	inserts movement in consumptions Mov
-- =============================================
CREATE or ALTER PROCEDURE SP_insertConsumptionMov
	-- Add the parameters for the stored procedure here
    @inMovType int,@inPropertyNum int, @inConsumptionReading int,@inDescription VARCHAR(100), @inDate Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
    DECLARE @Exists int;
    EXEC @Exists = SP_validateProperty @inPropertyNum;
        IF(@Exists = 1)
            BEGIN
                BEGIN TRANSACTION
                    DECLARE @PropertyId int;
                    DECLARE @DifferenceM3 int;
                    DECLARE @AccumulatedM3 int;
                    DECLARE @NewAccumulatedM3 int;
                    SELECT @PropertyId = Id, @AccumulatedM3 = AccumulatedM3
                        FROM DB1P_Properties 
                        WHERE @inPropertyNum = PropertyNumber;
                    SET @DifferenceM3 = (@inConsumptionReading - @AccumulatedM3);
                    SET @NewAccumulatedM3 = (@DifferenceM3 + @AccumulatedM3);

                    INSERT INTO DB1P_ConsumptionMov (Id_MovType, Id_Property, [Date], [Description],AmountM3,ConsumptionReading,NewAccumulatedM3)
                    VALUES(@inMovType,@PropertyId,@inDate,@inDescription,@DifferenceM3,@inConsumptionReading,@NewAccumulatedM3);

                    UPDATE DB1P_Properties
                        SET AccumulatedM3 = @NewAccumulatedM3
                        WHERE Id = @PropertyId;
                COMMIT
                RETURN 1;
            END
        RETURN -50002;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK
	RETURN @@Error * -1
END CATCH
END
GO