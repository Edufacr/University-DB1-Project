SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 03/06/2020
-- Description:	Inserts a user
-- =============================================
CREATE OR ALTER PROCEDURE SP_insertUser
	
	-- Add the parameters for the stored procedure here
    @inUserName VARCHAR(50),
	@inPassword VARCHAR(50),
	@inIsAdmin bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
BEGIN TRY
    INSERT INTO DB1P_Users (Username,Password, UserType,Active)
    VALUES (@inUserName,@inPassword,@inIsAdmin,1);
	RETURN SCOPE_IDENTITY()
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO