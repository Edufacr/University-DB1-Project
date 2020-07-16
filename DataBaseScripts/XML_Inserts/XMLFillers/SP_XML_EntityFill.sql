SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Loads the initial EntityTypes
-- =============================================
CREATE or ALTER PROCEDURE [dbo].[SP_XML_EntityFill]
	-- Add the parameters for the stored procedure here
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;
BEGIN TRY
	DECLARE @docHandle int;
	DECLARE @xmlDocument xml;
	EXEC SP_XML_GetEntityType @xmlDocument OUTPUT;
	EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument;         
    INSERT INTO DB1P_EntityType (Id,Name)
       SELECT Id,Name
        FROM OPENXML(@docHandle,'/TipoEntidades/Entidad') with (Id int '@id', Name varchar(50) '@Nombre');
	EXEC sp_xml_removedocument @docHandle; -- Remove the internal representation of the XML document.
    RETURN @@ROWCOUNT
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH

END