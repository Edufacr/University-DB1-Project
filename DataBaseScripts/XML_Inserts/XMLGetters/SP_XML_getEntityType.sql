CREATE or ALTER PROCEDURE SP_XML_getEntityType
	-- Add the parameters for the stored procedure here
    @xmlDocument xml OUTPUT
AS
BEGIN
    -- Insert statements for procedure here
BEGIN TRY
	BEGIN TRANSACTION
        SELECT @xmlDocument = 
            '<TipoEntidades>
                <Entidad id="1" Nombre="Propiedad"/>
                <Entidad id="2" Nombre="Propietario"/>
                <Entidad id="3" Nombre="Usuario"/>
                <Entidad id="4" Nombre="PropiedadVsPropietario"/>
                <Entidad id="5" Nombre="PropiedadVsUsuario"/>
                <Entidad id="6" Nombre="PropiedadJuridico"/>
                <Entidad id="7" Nombre="ConceptoCobro"/>
            </TipoEntidades>'
	COMMIT
END TRY
BEGIN CATCH
	ROLLBACK
	return @@Error * -1
END CATCH
END
GO