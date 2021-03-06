-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 02/06/2020
-- Description:	Gets Cc XML
-- =============================================
CREATE or ALTER PROCEDURE SP_XML_GetCcXML
	-- Add the parameters for the stored procedure here
    @xmlDocument xml OUTPUT
AS
BEGIN
    -- Insert statements for procedure here
BEGIN TRY
	BEGIN TRANSACTION
        SELECT @xmlDocument = 
        '<Conceptos_de_Cobro>
	<conceptocobro id="1" Nombre="Agua" DiaCobro="25" QDiasVencimiento="4" EsImpuesto="No" EsRecurrente="Si" EsFijo="No" TasaInteresMoratoria="5.2" TipoCC="CC Consumo" Monto="" ValorM3="500" ValorPorcentaje="" MontoMinRecibo="2500" />
	<conceptocobro id="2" Nombre="Patente Licores" DiaCobro="8" QDiasVencimiento="12" EsImpuesto="No" EsRecurrente="Si" EsFijo="Si" TasaInteresMoratoria="2.6" TipoCC="CC Fijo" Monto="50000" ValorM3="" ValorPorcentaje="" MontoMinRecibo="" />
	<conceptocobro id="3" Nombre="Impuesto Propiedad" DiaCobro="9" QDiasVencimiento="12" EsImpuesto="Si" EsRecurrente="Si" EsFijo="No" TasaInteresMoratoria="1.5" TipoCC="CC Porcentaje" Monto="" ValorM3="" ValorPorcentaje="5.0" MontoMinRecibo="" />
	<conceptocobro id="4" Nombre="Recolectar Basura" DiaCobro="4" QDiasVencimiento="5" EsImpuesto="No" EsRecurrente="Si" EsFijo="Si" TasaInteresMoratoria="2.2" TipoCC="CC Fijo" Monto="3000" ValorM3="" ValorPorcentaje="" MontoMinRecibo=""/>
	<conceptocobro id="5" Nombre="Mantenimiento de Parques" DiaCobro="3" QDiasVencimiento="7" EsImpuesto="No" EsRecurrente="Si" EsFijo="Si" TasaInteresMoratoria="0.87" TipoCC="CC Fijo" Monto="970" ValorM3="" ValorPorcentaje="" MontoMinRecibo="" />
	<conceptocobro id="6" Nombre="Impuesto a la Renta" DiaCobro="5" QDiasVencimiento="15" EsImpuesto="Si" EsRecurrente="Si" EsFijo="No" TasaInteresMoratoria="12.6" TipoCC="CC Porcentaje" Monto="" ValorM3="" ValorPorcentaje="5" MontoMinRecibo="" />
	<conceptocobro id="7" Nombre="Alumbrado Publico" DiaCobro="7" QDiasVencimiento="6" EsImpuesto="No" EsRecurrente="Si" EsFijo="Si" TasaInteresMoratoria="0.32" TipoCC="CC Fijo" Monto="785" ValorM3="" ValorPorcentaje="" MontoMinRecibo="" />
	<conceptocobro id="8" Nombre="Aseo de Sitios Publico" DiaCobro="1" QDiasVencimiento="10" EsImpuesto="No" EsRecurrente="Si" EsFijo="Si" TasaInteresMoratoria="7.8" TipoCC="CC Fijo" Monto="580" ValorM3="" ValorPorcentaje="" MontoMinRecibo=""/>
	<conceptocobro id="9" Nombre="Acueductos" DiaCobro="6" QDiasVencimiento="6" EsImpuesto="No" EsRecurrente="Si" EsFijo="Si" TasaInteresMoratoria="0.2" TipoCC="CC Fijo" Monto="900" ValorM3="" ValorPorcentaje="" MontoMinRecibo="" />
	<conceptocobro id="10" Nombre="Reconexion de agua" DiaCobro="" QDiasVencimiento="1" EsImpuesto="No" EsRecurrente="No" EsFijo="Si" TasaInteresMoratoria="" TipoCC="CC Fijo" Monto="5000" ValorM3="" ValorPorcentaje="" MontoMinRecibo="" />
	<conceptocobro id="11" Nombre="Interes Moratorio" DiaCobro="" QDiasVencimiento="1" EsImpuesto="Si" EsRecurrente="No" EsFijo="No" TasaInteresMoratoria="" TipoCC="CC Interes Moratorio" Monto="" ValorM3="" ValorPorcentaje="" MontoMinRecibo="" />
	<conceptocobro id="12" Nombre="AP" DiaCobro="" QDiasVencimiento="5" EsImpuesto="No" EsRecurrente="No" EsFijo="No" TasaInteresMoratoria="10.0" TipoCC="Cuota Calculada" Monto="" ValorM3="" ValorPorcentaje="" MontoMinRecibo="" />
</Conceptos_de_Cobro>'
	COMMIT
END TRY
BEGIN CATCH
	ROLLBACK
	return @@Error * -1
END CATCH
END
GO