-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 02/06/2020
-- Description:	Gets Users XML
-- =============================================
CREATE or ALTER PROCEDURE SP_XML_GetUsersXML
	-- Add the parameters for the stored procedure here
    @xmlDocument xml OUTPUT
AS
BEGIN
    -- Insert statements for procedure here
BEGIN TRY
	BEGIN TRANSACTION
        SELECT @xmlDocument = 
        '<Usuarios>
            <Usuario user="raymond_carver" password="vivaMax5teel" tipo="admin"/>
            <Usuario user="anisTrujillo" password="veloci345" tipo="admin"/>
            <Usuario user="cvaslentes" password="382rayomacflurry" tipo="admin"/>
            <Usuario user="papiPoker" password="alSuavite7" tipo="admin"/>
            <Usuario user="sugarelDaddy" password="4545k4jbid" tipo="admin"/>
            <Usuario user="santiCarballo21" password="rosadito" tipo="admin"/>
            <Usuario user="valecita_finsta" password="sugarpur4P4p4" tipo="admin"/>
            <Usuario user="mikoTheMeka" password="Pewdiepie" tipo="admin"/>
            <Usuario user="Elementor" password="pieis3.14" tipo="admin"/>
            <Usuario user="MrNotSoNiceGuy" password="P3.14isPie" tipo="admin"/>
            <Usuario user="mikoTheMeka2" password="PieisnotFun" tipo="admin"/>
        </Usuarios>'
	COMMIT
END TRY
BEGIN CATCH
	ROLLBACK
	return @@Error * -1
END CATCH
END
GO