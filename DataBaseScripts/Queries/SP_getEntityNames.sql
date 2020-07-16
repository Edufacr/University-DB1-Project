SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Gets names of entities
-- =============================================
CREATE OR ALTER PROCEDURE SP_getEntityNames
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
    SELECT Name
        FROM DB1P_EntityType
    RETURN @@ROWCOUNT;
END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH
END
GO