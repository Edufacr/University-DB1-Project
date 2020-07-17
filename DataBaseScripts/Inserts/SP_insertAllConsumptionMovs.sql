SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	inserts movement in consumptions Mov
-- =============================================
CREATE or ALTER PROCEDURE SP_insertAllConsumptionMovs
    -- Add the parameters for the stored procedure here
    @inMovTable dbo.TodayConsumptionMovsTable  READONLY, @inDate DATE
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
    DECLARE @MaxRow int;
	DECLARE @CurrentRow int;

    DECLARE @IdMovType int;
    DECLARE @PropertyNum int;
    DECLARE @ConsumptionReading int;
    DECLARE @Description VARCHAR(100);
    DECLARE @Date DATE;
    DECLARE @MovTable TABLE (Id int, IdMovType int ,PropertyNum int,ConsumptionReading int,Description VARCHAR(100) )
    DECLARE @Row int;

    DECLARE @RETVALUE int ;

    SELECT @MaxRow = COUNT(Id)
    FROM @inMovTable;
    SET @CurrentRow = 1;
    INSERT INTO @MovTable
    SELECT ROW_NUMBER() OVER(ORDER BY Id ASC),IdMovType,PropertyNum,ConsumptionReading,[Description]
    FROM @inMovTable;
    BEGIN TRANSACTION
        WHILE(@CurrentRow <= @MaxRow)
            BEGIN
                SELECT @IdMovType = IdMovType, @PropertyNum = PropertyNum, @ConsumptionReading = ConsumptionReading, @Description = [Description]
                FROM @MovTable
                WHERE Id = @CurrentRow
                EXEC  @RETVALUE = SP_insertConsumptionMov @IdMovType,@PropertyNum,@ConsumptionReading,@Description,@inDate;
                IF (@RETVALUE < 0)
                    BEGIN
                        ROLLBACK
                        RETURN @RETVALUE;
                    END
                SET @CurrentRow = @CurrentRow +1
            END
    COMMIT
    RETURN 1;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK
	RETURN @@Error * -1
END CATCH
END
GO