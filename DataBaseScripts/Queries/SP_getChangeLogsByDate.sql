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
    @inEntityName VARCHAR(50) = null,
	@inStartDate DATETIME = '2000/01/01', 
	@inEndDate DATETIME = '2100/01/01'

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE @IdEntityType INT;

BEGIN TRY

	SELECT 
		et.Name as EntityName,
		cl.InsertedAt, cl.InsertdBy, 
		cl.InsertedFrom, cl.JsonBefore,
		cl.JsonAfter
	
	FROM 
		DB1P_ChangeLog as cl
		INNER JOIN DB1P_EntityType as et
			ON cl.IdEntityType = et.Id
    
	WHERE 
		InsertedAt >= @inStartDate 
		AND InsertedAt <= @inEndDate 
		AND (et.Name = @inEntityName  OR @inEntityName IS NULL)
	
	ORDER BY 
		InsertedAt DESC
    
	RETURN @@ROWCOUNT;
 
END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH
END
GO