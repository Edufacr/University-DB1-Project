SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Gets logs by date and Entity Name
-- =============================================
CREATE OR ALTER PROCEDURE SP_getChangeLogsByDate
	-- Add the parameters for the stored procedure here
    @inEntityName VARCHAR(50),@inStartDate DATE, @inEndDate DATE

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE @IdEntityType INT;
BEGIN TRY
    SELECT @IdEntityType = Id
        FROM DB1P_EntityType
            WHERE Name = @inEntityName;
    IF(@IdEntityType IS NOT NULL)
        BEGIN
            SELECT @inEntityName as EntityName, InsertedAt, InsertdBy, InsertedFrom, JsonBefore,JsonAfter
                FROM DB1P_ChangeLog
                WHERE InsertedAt >= @inStartDate AND InsertedAt <= @inEndDate AND IdEntityType = @IdEntityType
            RETURN @@ROWCOUNT;
        END
    RETURN -50002;
END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH
END
GO