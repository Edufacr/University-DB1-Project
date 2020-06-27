CREATE or ALTER PROCEDURE SP_XML_getEntityType
	-- Add the parameters for the stored procedure here
    @xmlDocument xml OUTPUT
AS
BEGIN
    -- Insert statements for procedure here
BEGIN TRY
	BEGIN TRANSACTION
        SELECT @xmlDocument = 
            '<TipoTransConsumo>
                <TransConsumo id="1" Nombre="Consumo Regular"/>
                <TransConsumo id="2" Nombre="Ajuste Debito"/>
                <TransConsumo id="3" Nombre="Ajuste Credito"/>
            </TipoTransConsumo>'
	COMMIT
END TRY
BEGIN CATCH
	ROLLBACK
	return @@Error * -1
END CATCH
END
GO