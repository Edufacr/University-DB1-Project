SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Gets all properties seen by a user
-- =============================================

-- TODO Input validations

CREATE OR ALTER PROCEDURE SP_getDocTypeNames
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT Name FROM DB1P_Doc_Id_Types;
        RETURN @@ROWCOUNT;
    END TRY
    BEGIN CATCH
        RETURN @@Error * -1
    END CATCH
END
GO
