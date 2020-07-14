SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Inserts into ChangeLog
-- =============================================
CREATE or ALTER PROCEDURE SP_insertChangeLog
	-- Add the parameters for the stored procedure here
    @inIdEntityType INT, @inEntityId INT, @inInsertedAt DATETIME,@inInsertedBy VARCHAR(50),@inInsertedFrom VARCHAR(20),
    @inJsonBefore VARCHAR(500),@inJsonAfter VARCHAR(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
    INSERT INTO DB1P_ChangeLog(IdEntityType,EntityId,InsertedAt,InsertdBy,InsertedFrom,JsonBefore,JsonAfter)
        VALUES(@inIdEntityType,@inEntityId,@inInsertedAt,@inInsertedBy,@inInsertedFrom,@inJsonBefore,@inJsonAfter);
    RETURN SCOPE_IDENTITY();
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO