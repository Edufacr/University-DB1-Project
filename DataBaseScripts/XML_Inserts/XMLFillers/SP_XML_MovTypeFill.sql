SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Loads the initial MovTypes 
-- =============================================
CREATE or ALTER PROCEDURE [dbo].[SP_XML_MovTypeFill]
	-- Add the parameters for the stored procedure here
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;
    BEGIN TRY
		DECLARE @docHandle int;
		DECLARE @xmlDocument xml;
		EXEC SP_XML_getConsumptionMovType @xmlDocument OUTPUT;
		EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument; 
		INSERT INTO DB1P_MovType(Id,Name)
		SELECT Id,Name
		FROM OPENXML(@docHandle,'/TipoTransConsumo/TransConsumo') with (Id int '@id', Name varchar(50) '@Nombre');
		EXEC sp_xml_removedocument @docHandle; -- Remove the internal representation of the XML document.
    END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH

END