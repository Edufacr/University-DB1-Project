SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
-- =============================================
-- Author:		Eduardo Madrigal MarÃ­n
-- Create date: 
-- Description:	Gets Cc XML
-- =============================================
CREATE or ALTER PROCEDURE [dbo].[SP_XML_GetOperationsXML]
	-- Add the parameters for the stored procedure here
    @xmlDocument xml OUTPUT
AS
BEGIN
    -- Insert statements for procedure here
BEGIN TRY
    SELECT @xmlDocument = '<Operaciones_por_Dia>
  <OperacionDia fecha="2020-01-30">
    <Propiedad NumFinca="3206723" Valor="128964324.00" Direccion="Calle Vargas - Calle Kizarrá 300 m desde la entrada, casa color verde a la izquierda"/>
    <Propiedad NumFinca="2201960" Valor="32453342.35" Direccion="Santa Rosa, 300 m Sur de la Terminal de Buses"/>
    <Propiedad NumFinca="2512174" Valor="47913097.00" Direccion="Barrio Los Ángeles, 625 m Norte y 140 m Oeste del templo Católico"/>
    <Propiedad NumFinca="3168593" Valor="99348102.50" Direccion="Urbanización La Fundación"/>
    <Propiedad NumFinca="2520127" Valor="38979996.25" Direccion="Bajo Caliente, contiguo al costado Oeste de las piscinas Bajo Caliente"/>
    <Propiedad NumFinca="2225118" Valor="1153123.90" Direccion="Acapulco, 300 m Oeste de la Iglesia Católica de Acapulco"/>
    <Propiedad NumFinca="2346334" Valor="102853700.05" Direccion="Marsella, 200 m Sureste de la entrada al Centro Turístico Recreo Verde"/>
    <Propiedad NumFinca="2132441" Valor="145396777.00" Direccion="De la esquina Noroeste de la Escuela Simón Bolivar 110 m Oeste"/>
    <Propiedad NumFinca="2346431" Valor="29540605.00" Direccion="San Pedro, Condominio Residencial Vista del Valle"/>
    <Propiedad NumFinca="1565045" Valor="42286295.55" Direccion="Arenal, 500 m Este de la iglesia católica, carretera a Parrita"/>
    <Propiedad NumFinca="3107084" Valor="61452600.00" Direccion="De la Iglesia de Dulce Nombre de Cartago, 200 m Sur y 150 m al Este Condominio Horizontal Residencial Villas Dulce Nombre Filial N°11"/>
    <Propietario Nombre="Ferrer S.A." TipoDocIdentidad="4" identificacion="301659662"/>
    <Propietario Nombre="Arenal" TipoDocIdentidad="4" identificacion="301790528"/>
    <Propietario Nombre="UCR" TipoDocIdentidad="4" identificacion="301777068"/>
    <Propietario Nombre="Azul Tierra" TipoDocIdentidad="4" identificacion="301315406"/>
    <Propietario Nombre="Alto Miguel" TipoDocIdentidad="4" identificacion="301644539"/>
    <Propietario Nombre="Manzanar" TipoDocIdentidad="4" identificacion="301410305"/>
    <Propietario Nombre="Fe Sur" TipoDocIdentidad="4" identificacion="301044918"/>
    <Propietario Nombre="Astua" TipoDocIdentidad="4" identificacion="301240966"/>
    <Propietario Nombre="OLALDE" TipoDocIdentidad="4" identificacion="301116564"/>
    <PersonaJuridica docidPersonaJuridica="301659662" TipDocIdPJ="4" DocidRepresentante="282173820" Nombre="Daniela Parra Ferrer" TipDocIdRepresentante="1"/>
    <PersonaJuridica docidPersonaJuridica="301790528" TipDocIdPJ="4" DocidRepresentante="647781624" Nombre="Nora Juan Guerra" TipDocIdRepresentante="1"/>
    <PersonaJuridica docidPersonaJuridica="301777068" TipDocIdPJ="4" DocidRepresentante="688983521" Nombre="Laia Estevez Esteban" TipDocIdRepresentante="1"/>
    <PersonaJuridica docidPersonaJuridica="301315406" TipDocIdPJ="4" DocidRepresentante="470107776" Nombre="Nora Pozo Mateo" TipDocIdRepresentante="1"/>
    <PersonaJuridica docidPersonaJuridica="301644539" TipDocIdPJ="4" DocidRepresentante="121063441" Nombre="Martín Otero Romero" TipDocIdRepresentante="1"/>
    <PersonaJuridica docidPersonaJuridica="301410305" TipDocIdPJ="4" DocidRepresentante="144344001" Nombre="María Garcia Vargas" TipDocIdRepresentante="1"/>
    <PersonaJuridica docidPersonaJuridica="301044918" TipDocIdPJ="4" DocidRepresentante="417552185" Nombre="Iván Vidal Robles" TipDocIdRepresentante="1"/>
    <PersonaJuridica docidPersonaJuridica="301240966" TipDocIdPJ="4" DocidRepresentante="468543939" Nombre="Juan Prieto Perez" TipDocIdRepresentante="1"/>
    <PersonaJuridica docidPersonaJuridica="301116564" TipDocIdPJ="4" DocidRepresentante="450541446" Nombre="Gabriel Soriano Prado" TipDocIdRepresentante="1"/>
    <Propietario Nombre="DIEGO ARMANDO RAMIREZ MATA" TipoDocIdentidad="1" identificacion="110670556"/>
    <PropiedadVersusPropietario NumFinca="3107084" identificacion="301659662"/>
    <PropiedadVersusPropietario NumFinca="1565045" identificacion="301790528"/>
    <PropiedadVersusPropietario NumFinca="2346431" identificacion="301777068"/>
    <PropiedadVersusPropietario NumFinca="2132441" identificacion="301315406"/>
    <PropiedadVersusPropietario NumFinca="2346334" identificacion="301644539"/>
    <PropiedadVersusPropietario NumFinca="2225118" identificacion="304530463"/>
    <PropiedadVersusPropietario NumFinca="2520127" identificacion="301410305"/>
    <PropiedadVersusPropietario NumFinca="3168593" identificacion="301044918"/>
    <PropiedadVersusPropietario NumFinca="2201960" identificacion="301240966"/>
    <PropiedadVersusPropietario NumFinca="3206723" identificacion="301116564"/>
    <PropiedadVersusPropietario NumFinca="2512174" identificacion="110670556"/>

    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="3107084"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3107084"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3107084"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3107084"/>

    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="1565045"/>
    <ConceptoCobroVersusPropiedad idcobro="7" NumFinca="1565045"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1565045"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1565045"/>

    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2346431"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2346431"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2346431"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2346431"/>
    
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2132441"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2132441"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2132441"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2132441"/>

    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2346334"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2225118"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2520127"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="3168593"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2201960"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="3206723"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2512174"/>
  </OperacionDia>
  <OperacionDia fecha="2020-01-31">
    <Propiedad NumFinca="4158692" Valor="25315651" Direccion="Manzanar, 532 m Noreste."/>
    <Propiedad NumFinca="6526774" Valor="17817015" Direccion="Canoas, 800 m Sur."/>
    <Propiedad NumFinca="9782331" Valor="11499439" Direccion="Cementerio de Santa Rosa, 420 m Este."/>
    <Propiedad NumFinca="2888543" Valor="16615152" Direccion="Bri-Bri Centro, 99 m Noroeste."/>
    <Propiedad NumFinca="3178673" Valor="10503725" Direccion=" Central Electrica, 730 m Noreste."/>
    <Propiedad NumFinca="2186347" Valor="8695554" Direccion="Plantel de COPRESA, 34 m Noroeste."/>
    <Propiedad NumFinca="7040783" Valor="19085887" Direccion="ITEC, 665 m Sur."/>
    <Propiedad NumFinca="1042185" Valor="17303021" Direccion=" AM-PM, 519 m Oeste."/>
    <Propiedad NumFinca="1424417" Valor="9478720" Direccion="Manzanar, 283 m Noreste."/>
    <Propietario Nombre="Nicolás Vicente Calvo" TipoDocIdentidad="1" identificacion="603871025"/>
    <Propietario Nombre="Triana Soler Mata" TipoDocIdentidad="2" identificacion="897719866"/>
    <Propietario Nombre="Pablo Galan Vera" TipoDocIdentidad="2" identificacion="863863098"/>
    <Propietario Nombre="Elena Gonzalez Exposito" TipoDocIdentidad="1" identificacion="116071283"/>
    <Propietario Nombre="Ainara Corral Nuñez" TipoDocIdentidad="1" identificacion="533728904"/>
    <Propietario Nombre="Aitor Blanco Nuñez" TipoDocIdentidad="1" identificacion="339653843"/>
    <Propietario Nombre="Manuel Blazquez Rios" TipoDocIdentidad="1" identificacion="361597351"/>
    <Propietario Nombre="Martín Mora Torre" TipoDocIdentidad="1" identificacion="596080433"/>
    <Propietario Nombre="Adam Rio Caballero" TipoDocIdentidad="2" identificacion="879915260"/>
    <PropiedadVersusPropietario NumFinca="4158692" identificacion="603871025"/>
    <PropiedadVersusPropietario NumFinca="6526774" identificacion="897719866"/>
    <PropiedadVersusPropietario NumFinca="9782331" identificacion="863863098"/>
    <PropiedadVersusPropietario NumFinca="2888543" identificacion="116071283"/>
    <PropiedadVersusPropietario NumFinca="3178673" identificacion="533728904"/>
    <PropiedadVersusPropietario NumFinca="2186347" identificacion="339653843"/>
    <PropiedadVersusPropietario NumFinca="7040783" identificacion="361597351"/>
    <PropiedadVersusPropietario NumFinca="1042185" identificacion="596080433"/>
    <PropiedadVersusPropietario NumFinca="1424417" identificacion="879915260"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4158692"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6526774"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9782331"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2888543"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3178673"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2186347"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7040783"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1042185"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1424417"/>
    <CambioPropiedad NumFinca="2512174" NuevoValor="58608884"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-01"> 
  </OperacionDia>
  <OperacionDia fecha="2020-02-02">

	</OperacionDia>
  <OperacionDia fecha="2020-02-03">
    <Propiedad NumFinca="3132315" Valor="23504936.95" Direccion="Rio Azul, del templo de Río Azul 130 m Oeste y 30 m Sur Entrada por acera con gradas"/>
    <Propiedad NumFinca="2185600" Valor="62679098.10" Direccion="De la esquina del Colegio San Fe, 100 m Oeste y 25 m Sureste"/>
    <Propiedad NumFinca="2481855" Valor="34887400.00" Direccion="San Luis, 200 Sur y 50 Oeste del Salón Comunal de San Luis"/>
    <Propiedad NumFinca="1269724" Valor="132778691.80" Direccion="De la Iglesia Católica del Perpetuo Socorro, 165 m al este, edificio de dos plantas a mano derecha"/>
    <Propietario Nombre="STEPHANIE ANDREA RIVERA ANGULO" TipoDocIdentidad="2" identificacion="801120685"/>
    <Propietario Nombre="MARIA PAULA RODRIGUEZ MERINO" TipoDocIdentidad="1" identificacion="111550650"/>
    <Propietario Nombre="ANGIE VANESSA ROJAS AGUILAR" TipoDocIdentidad="1" identificacion="602920400"/>
    <Propietario Nombre="STEPHANIE ROJAS VILLAFUERTE" TipoDocIdentidad="1" identificacion="502830839"/>
    <PropiedadVersusPropietario NumFinca="3132315" identificacion="801120685"/>
    <PropiedadVersusPropietario NumFinca="2185600" identificacion="111550650"/>
    <PropiedadVersusPropietario NumFinca="2481855" identificacion="602920400"/>
    <PropiedadVersusPropietario NumFinca="1269724" identificacion="502830839"/>
    <CambioPropiedad NumFinca="3107084" NuevoValor="46448155"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-04">
    <Propietario Nombre="GABRIEL ANTONIO SALAS ARAYA" TipoDocIdentidad="1" identificacion="112530781"/>
    <Propietario Nombre="ASTRID ANDREA SOLANO MORA" TipoDocIdentidad="1" identificacion="901130799"/>
    <Propietario Nombre="ALEX ANDRE SOLIS BARRANTES" TipoDocIdentidad="1" identificacion="112090121"/>
    <Propiedad NumFinca="2199506" Valor="33248444.25" Direccion="San Ramón, del bar la Chiringüina 200 m sur y 25 m este, propiedad costado sur de vía"/>
    <Propiedad NumFinca="2262176" Valor="47901155.00" Direccion="Bijagua, 100 Oeste y 75 Sur del cementerio de Bijagua"/>
    <Propiedad NumFinca="2484595" Valor="71670900.00" Direccion="Candelaria, del taller mecánico FJ Automotriz, 197 m Norte"/>
    <Propiedad NumFinca="3129684" Valor="21306425.00" Direccion="Lourdes, del antiguo Bar Houstone, 100 m Oeste, 200 m Sur y 75 m Oeste Urbanización Las Loma, Casa N° 8"/>
    <Propietario Nombre="XINIA VARGAS BALTODANO" TipoDocIdentidad="1" identificacion="116240038"/>
    <Propietario Nombre="RAFAEL GUILLERMO VARGAS SOLIS" TipoDocIdentidad="1" identificacion="303581304"/>
    <Propietario Nombre="VALERY VEGA LIZANO" TipoDocIdentidad="1" identificacion="206680010"/>
    <Propietario Nombre="ALBERTO FELIPE ZAMORA MENDIETA" TipoDocIdentidad="1" identificacion="108340385"/>
    <Propietario Nombre="LONSO JOSE ZUÑIGA AGUERO" TipoDocIdentidad="1" identificacion="304850836"/>
    <Propiedad NumFinca="3126377" Valor="40746982.00" Direccion="Concovas, Condominio Residencial Los Helechos, 300 m Oeste y 150 m Sur del Parque de la Expresión"/>
    <Propiedad NumFinca="1565227" Valor="48615795.75" Direccion="Aproximadamente 450 m al sureste de la escuela pública"/>
    <Propiedad NumFinca="2536342" Valor="54043470.00" Direccion="De la Terminal de Autobuses aproximadamente 250 m Oeste y, por servidumbre, 45 m Sur"/>
    <Propiedad NumFinca="1329793" Valor="13499518.20" Direccion="Altamonte, Residencial Altamonte Condominio Vistas del Este "/>
    <Propiedad NumFinca="1576804" Valor="66867808.50" Direccion="Brasil de Mora, 250 m Oeste de la Escuela Brasil de Mora, Condominio Novara"/>
    <Propiedad NumFinca="2284985" Valor="43591755.00" Direccion="50 Suroeste de la Iglesia Católica de Cartago Norte"/>
    <Propiedad NumFinca="3151236" Valor="65429492.50" Direccion="Urbanización Los Helechos, bloque E, Birrisito, Paraíso "/>
    <Propiedad NumFinca="2239480" Valor="7885760.30" Direccion="San Jorge, 150 m al sur de la plaza de deportes de San Jorge"/>
    <Propiedad NumFinca="2588420" Valor="41059924.05" Direccion="Condominio Vertical Residencial Comercial Bosque Real I"/>
    <PropiedadVersusPropietario NumFinca="3126377" identificacion="116240038"/>
    <PropiedadVersusPropietario NumFinca="1565227" identificacion="303581304"/>
    <PropiedadVersusPropietario NumFinca="2536342" identificacion="206680010"/>
    <PropiedadVersusPropietario NumFinca="1329793" identificacion="108340385"/>
    <PropiedadVersusPropietario NumFinca="1576804" identificacion="304850836"/>
    <PropiedadVersusPropietario NumFinca="2284985" identificacion="304850836"/>
    <PropiedadVersusPropietario NumFinca="3151236" identificacion="901130799"/>
    <PropiedadVersusPropietario NumFinca="2239480" identificacion="304850836"/>
    <PropiedadVersusPropietario NumFinca="2588420" identificacion="901130799"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-05">
    <Propiedad NumFinca="4400689" Valor="6151077" Direccion="El Jardín, 482 m Este."/>
    <Propiedad NumFinca="2246405" Valor="14836309" Direccion="Brasil de Mora, 870 m Sur."/>
    <Propiedad NumFinca="4569644" Valor="14742621" Direccion="La Giralda, 84 m Noreste."/>
    <Propiedad NumFinca="1714464" Valor="20282540" Direccion=" Río Camarón, 706 m Noroeste."/>
    <Propietario Nombre="Marta Parra Alonso" TipoDocIdentidad="1" identificacion="703471814"/>
    <Propietario Nombre="Carla Vazquez Otero" TipoDocIdentidad="1" identificacion="487534739"/>
    <Propietario Nombre="David Prado Cano" TipoDocIdentidad="1" identificacion="732403331"/>
    <Propietario Nombre="Blanca Prado Redondo" TipoDocIdentidad="6" identificacion="867284757"/>
    <PropiedadVersusPropietario NumFinca="4400689" identificacion="703471814"/>
    <PropiedadVersusPropietario NumFinca="2246405" identificacion="487534739"/>
    <PropiedadVersusPropietario NumFinca="4569644" identificacion="732403331"/>
    <PropiedadVersusPropietario NumFinca="1714464" identificacion="867284757"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4400689"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2246405"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4569644"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1714464"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-06">
    <Propiedad NumFinca="1160169" Valor="57636500.00" Direccion="Granja, 200 m Sur de la Estación de Servicio el Higuerón"/>
    <Propiedad NumFinca="2758490" Valor="62360280.00" Direccion="Ciruelas, Condominio Málaga Ciruales I"/>
    <Propietario Nombre="FABIOLA MURILLO FONSECA" TipoDocIdentidad="1" identificacion="304530463"/>
    <Propiedad NumFinca="3120927" Valor="388997090.00" Direccion="El Alto, Urbanización EL Tirrá, bloque "/>
    <PropiedadVersusPropietario NumFinca="3120927" identificacion="304530463"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="3120927"/>
    <PropiedadVersusPropietario NumFinca="1160169" identificacion="110670556"/>
    <PropiedadVersusPropietario NumFinca="2758490" identificacion="303540864"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="1160169"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2758490"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-07">
    <Usuario Nombre="EMadrigal" password="bgNH1" tipo= "cliente"/>
    <Propiedad NumFinca="1176180" Valor="12348471.20" Direccion="Condominio Mar del Plata, Filial 186"/>
    <Propiedad NumFinca="1394522" Valor="14704765.00" Direccion="Mata Plátano, Urbanización La Estefanía (465 m. oeste del Templo y 100 m. sur)"/>
    <PropiedadVersusPropietario NumFinca="1176180" identificacion="304110067"/>
    <PropiedadVersusPropietario NumFinca="1394522" identificacion="304110067"/>
    <UsuarioVersusPropiedad NumFinca="1176180" nombreUsuario="EMadrigal"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1176180"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1176180"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1176180"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1176180"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1394522"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1394522"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1394522"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1394522"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1394522"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1394522"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-08">
	</OperacionDia>
  <OperacionDia fecha="2020-02-09">
	</OperacionDia>
  <OperacionDia fecha="2020-02-10">
    <Propiedad NumFinca="1750401" Valor="12971280.00" Direccion="Condominio Terrazas del Este, de la Iglesia de San Rafael 360 m. Este. "/>
    <Propiedad NumFinca="4121713" Valor="26921725.00" Direccion="Los Angeles, de la glesia de Montecito, 40 m este y 700 m sur."/>
    <Propiedad NumFinca="1420570" Valor="12834860.00" Direccion="Zapote, 125 m. al Oeste de Casa Presidencial, frente a la Soda El Shrek Tico."/>
    <Propiedad NumFinca="1605224" Valor="24124150.00" Direccion="Urbanización Montemayor, casa A-3, 900 m. del cruce a los Sitios al Noroeste"/>
    <Propiedad NumFinca="4162559" Valor="26372010.00" Direccion="Manantiales de Belén, de la esquina Noroeste de la Plaza de Deportes de la Asunción, 150 m. oeste"/>
    <Propiedad NumFinca="1423800" Valor="61034265.00" Direccion="El Ruano, Urbanización El Fortín"/>
    <Propiedad NumFinca="1568495" Valor="26046200.00" Direccion="Las Delicias, de la Guardia Rural, aproximadamente 375 m. Sur"/>
    <Propiedad NumFinca="2291223" Valor="26035640.00" Direccion="Cantarrana, Santa Fé de Aguas Zargas, del Acueducto 100 m. Por el Súper Camacho."/>
    <Propietario Nombre="ERICK ALONSO ALFARO HERNANDEZ" TipoDocIdentidad="1" identificacion="304110067"/>
    <Propietario Nombre="LOLA PEREZ ROJAS" TipoDocIdentidad="1" identificacion="110201818"/>
    <Propietario Nombre="CRISTOPHER DANIEL ALVARADO RAMIREZ" TipoDocIdentidad="1" identificacion="112450868"/>
    <PropiedadVersusPropietario NumFinca="1750401" identificacion="304110067"/>
    <PropiedadVersusPropietario NumFinca="4121713" identificacion="304110067"/>
    <PropiedadVersusPropietario NumFinca="1420570" identificacion="112450868"/>
    <PropiedadVersusPropietario NumFinca="1605224" identificacion="112450868"/>
    <PropiedadVersusPropietario NumFinca="4162559" identificacion="112450868"/>
    <PropiedadVersusPropietario NumFinca="1423800" identificacion="110201818"/>
    <PropiedadVersusPropietario NumFinca="1568495" identificacion="110201818"/>
    <Propietario Nombre="FUNDECA" TipoDocIdentidad="4" identificacion="3102456541"/>
    <PersonaJuridica docidPersonaJuridica="3102456541" DocidRepresentante="110201818" Nombre="LOLA PEREZ ROJAS" TipDocIdRepresentante="1"/>
    <PropiedadVersusPropietario NumFinca="2291223" identificacion="3102456541"/>
    <Usuario Nombre="CPenalla" password="tXfIF" tipo= "cliente"/>
    <UsuarioVersusPropiedad NumFinca="1423800" nombreUsuario="CPenalla"/>
    <UsuarioVersusPropiedad NumFinca="1568495" nombreUsuario="CPenalla"/>
    <UsuarioVersusPropiedad NumFinca="2291223" nombreUsuario="CPenalla"/>
    <UsuarioVersusPropiedad NumFinca="4121713" nombreUsuario="EMadrigal"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1750401"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="1750401"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1750401"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1750401"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4121713"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4121713"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4121713"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4121713"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4121713"/>
    <ConceptoCobroVersusPropiedad idcobro="8" NumFinca="1420570"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1420570"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1420570"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1605224"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4162559"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1423800"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1423800"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1423800"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1423800"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1423800"/>
    <ConceptoCobroVersusPropiedad idcobro="7" NumFinca="1423800"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1568495"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2291223"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2291223"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2291223"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2291223"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2291223"/>
    <CambioPropiedad NumFinca="3168593" NuevoValor="122645348"/>
    <CambioPropiedad NumFinca="4121713" NuevoValor="33199333"/>
    <CambioPropiedad NumFinca="1750401" NuevoValor="15613552"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-11">
    <Propiedad NumFinca="9005997" Valor="9621634" Direccion="Astua Pirie, 939 m Noreste."/>
    <Propiedad NumFinca="1659333" Valor="23843403" Direccion="El Jardín, 640 m Este."/>
    <Propiedad NumFinca="9907089" Valor="24785870" Direccion="San Felipe, 346 m Sureste."/>
    <Propiedad NumFinca="5694094" Valor="6603727" Direccion="Residencias Pacific Sun, 875 m Norte."/>
    <Propiedad NumFinca="7301730" Valor="20590084" Direccion="Calle Vargas, 212 m Suroeste."/>
    <Propiedad NumFinca="4828218" Valor="4329337" Direccion="Cementerio de Santa Rosa, 359 m Oeste."/>
    <Propiedad NumFinca="6516190" Valor="22627573" Direccion="El Jardín, 403 m Noreste."/>
    <Propiedad NumFinca="4782873" Valor="6919417" Direccion="El Alto, 418 m Este."/>
    <Propietario Nombre="Paula Prieto Caballero" TipoDocIdentidad="1" identificacion="339643669"/>
    <Propietario Nombre="Lara Contreras San" TipoDocIdentidad="1" identificacion="256709681"/>
    <Propietario Nombre="David Castillo Duran" TipoDocIdentidad="1" identificacion="408677163"/>
    <Propietario Nombre="Antonio Marcos Rivero" TipoDocIdentidad="1" identificacion="714080681"/>
    <Propietario Nombre="Manuel Diez Torres" TipoDocIdentidad="1" identificacion="792498329"/>
    <Propietario Nombre="Marina Castro Campo" TipoDocIdentidad="1" identificacion="576429851"/>
    <Propietario Nombre="Álvaro Jimenez Gutierrez" TipoDocIdentidad="1" identificacion="291781687"/>
    <Propietario Nombre="Mario Dominguez Segura" TipoDocIdentidad="1" identificacion="557481377"/>
    <PropiedadVersusPropietario NumFinca="9005997" identificacion="339643669"/>
    <PropiedadVersusPropietario NumFinca="1659333" identificacion="256709681"/>
    <PropiedadVersusPropietario NumFinca="9907089" identificacion="408677163"/>
    <PropiedadVersusPropietario NumFinca="5694094" identificacion="714080681"/>
    <PropiedadVersusPropietario NumFinca="7301730" identificacion="792498329"/>
    <PropiedadVersusPropietario NumFinca="4828218" identificacion="576429851"/>
    <PropiedadVersusPropietario NumFinca="6516190" identificacion="291781687"/>
    <PropiedadVersusPropietario NumFinca="4782873" identificacion="557481377"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9005997"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1659333"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9907089"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5694094"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7301730"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4828218"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6516190"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4782873"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-12">
    <Propiedad NumFinca="8104368" Valor="20801239" Direccion="Iglesia Católica de Cartago Norte, 213 m Sureste."/>
    <Propiedad NumFinca="7539590" Valor="15644192" Direccion=" La Paz, 503 m Sureste."/>
    <Propiedad NumFinca="6325448" Valor="25204028" Direccion="Urbanización La Fundación, 873 m Suroeste."/>
    <Propiedad NumFinca="6766683" Valor="21177145" Direccion="Las Cascadas, 446 m Sur."/>
    <Propiedad NumFinca="6736147" Valor="19932481" Direccion=" Iglecia Los capuchinos, 891 m Noreste."/>
    <Propiedad NumFinca="3081243" Valor="14496559" Direccion="Soda la Paz, 514 m Suroeste."/>
    <Propiedad NumFinca="4901706" Valor="11319333" Direccion=" Hospital Central, 340 m Oeste."/>
    <Propiedad NumFinca="6147839" Valor="29281339" Direccion=" UNA, 46 m Sureste."/>
    <Propiedad NumFinca="7981775" Valor="19984790" Direccion=" La fuente central, 572 m Sureste."/>
    <Propiedad NumFinca="1212294" Valor="11569515" Direccion="ITEC, 865 m Sureste."/>
    <Propiedad NumFinca="7929322" Valor="26289354" Direccion=" UNA, 417 m Noreste."/>
    <Propietario Nombre="Héctor Flores Gracia" TipoDocIdentidad="1" identificacion="189352040"/>
    <Propietario Nombre="Javier Bermudez Ramos" TipoDocIdentidad="1" identificacion="397106509"/>
    <Propietario Nombre="Clara Vega Cruz" TipoDocIdentidad="1" identificacion="767573379"/>
    <Propietario Nombre="Lara Bermejo Vazquez" TipoDocIdentidad="1" identificacion="565121705"/>
    <Propietario Nombre="Eric Rios Castaño" TipoDocIdentidad="1" identificacion="556988362"/>
    <Propietario Nombre="Mateo Marcos Galan" TipoDocIdentidad="1" identificacion="381227423"/>
    <Propietario Nombre="Eric Valero Rico" TipoDocIdentidad="6" identificacion="841229205"/>
    <Propietario Nombre="Ainara Quintana Rojas" TipoDocIdentidad="1" identificacion="516882215"/>
    <Propietario Nombre="Pablo Muñoz Marin" TipoDocIdentidad="2" identificacion="826221578"/>
    <Propietario Nombre="Gabriel Puente Velasco" TipoDocIdentidad="1" identificacion="466161082"/>
    <Propietario Nombre="Elena Perez Vargas" TipoDocIdentidad="1" identificacion="570203533"/>
    <PropiedadVersusPropietario NumFinca="8104368" identificacion="189352040"/>
    <PropiedadVersusPropietario NumFinca="7539590" identificacion="397106509"/>
    <PropiedadVersusPropietario NumFinca="6325448" identificacion="767573379"/>
    <PropiedadVersusPropietario NumFinca="6766683" identificacion="565121705"/>
    <PropiedadVersusPropietario NumFinca="6736147" identificacion="556988362"/>
    <PropiedadVersusPropietario NumFinca="3081243" identificacion="381227423"/>
    <PropiedadVersusPropietario NumFinca="4901706" identificacion="841229205"/>
    <PropiedadVersusPropietario NumFinca="6147839" identificacion="516882215"/>
    <PropiedadVersusPropietario NumFinca="7981775" identificacion="826221578"/>
    <PropiedadVersusPropietario NumFinca="1212294" identificacion="466161082"/>
    <PropiedadVersusPropietario NumFinca="7929322" identificacion="570203533"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8104368"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7539590"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6325448"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6766683"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6736147"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3081243"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4901706"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6147839"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7981775"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1212294"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7929322"/>
    <CambioPropiedad NumFinca="2262176" NuevoValor="58042630"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-13">
    <Propiedad NumFinca="1858970" Valor="71305290.00" Direccion="San Antonio, del costado sur de la Iglesia Católica de San Antonio, 300 m este y 50 m sur"/>
    <Propiedad NumFinca="4182442" Valor="19735205.00" Direccion="Barrio Cristo Rey, costado sur del salón comunal, casa color verde limón"/>
    <Propiedad NumFinca="1236736" Valor="23378250.00" Direccion="Urbanización Santa Catalina, 140 m este, 200 sur"/>
    <Propiedad NumFinca="1476188" Valor="40031009.00" Direccion="Calle Valverde, Urbanización, Veracruz, primera casa"/>
    <Propiedad NumFinca="2101885" Valor="59884644.00" Direccion="Condominio Terrazas del Oeste, San Rafael, Finca Filial "/>
    <Propiedad NumFinca="4182870" Valor="79598837.00" Direccion="Colonia Victoria, del salón comunal 825 m al Norte y 133 m al Oeste "/>
    <Propietario Nombre="PRISCILLA ALVAREZ GRIJALBA" TipoDocIdentidad="1" identificacion="110060884"/>
    <Propietario Nombre="ANGELICA MARIA ANGELICA MARIA" TipoDocIdentidad="1" identificacion="116540323"/>
    <PropiedadVersusPropietario NumFinca="1858970" identificacion="110060884"/>
    <PropiedadVersusPropietario NumFinca="4182442" identificacion="110060884"/>
    <PropiedadVersusPropietario NumFinca="1236736" identificacion="116540323"/>
    <PropiedadVersusPropietario NumFinca="1476188" identificacion="116540323"/>
    <PropiedadVersusPropietario NumFinca="2101885" identificacion="116540323"/>
    <PropiedadVersusPropietario NumFinca="4182870" identificacion="116540323"/>
    <Usuario Nombre="LDiaz" password="2o8Gd" tipo="cliente"/>
    <Usuario Nombre="EHernandez" password="v65XB" tipo="cliente"/>
    <Usuario Nombre="KPerez" password="j3VS2" tipo="cliente"/>
    <UsuarioVersusPropiedad NumFinca="1236736" nombreUsuario="LDiaz"/>
    <UsuarioVersusPropiedad NumFinca="1476188" nombreUsuario="LDiaz"/>
    <UsuarioVersusPropiedad NumFinca="2101885" nombreUsuario="LDiaz"/>
    <UsuarioVersusPropiedad NumFinca="4182870" nombreUsuario="LDiaz"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1858970"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4182442"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1236736"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1476188"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2101885"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4182870"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-14">
    <Propiedad NumFinca="2734696" Valor="26655816" Direccion=" Río Camarón, 926 m Norte."/>
    <Propiedad NumFinca="6722024" Valor="12105823" Direccion=" UNA, 736 m Oeste."/>
    <Propiedad NumFinca="5310895" Valor="16075620" Direccion="Manzanar, 281 m Suroeste."/>
    <Propiedad NumFinca="8743195" Valor="7915734" Direccion="Plantel de COPRESA, 423 m Sureste."/>
    <Propiedad NumFinca="7393203" Valor="6279519" Direccion="UCR, 803 m Norte."/>
    <Propiedad NumFinca="9072945" Valor="10676753" Direccion="De Nava Café, 563 m Oeste."/>
    <Propiedad NumFinca="9538337" Valor="29317151" Direccion="Iglesia Católica de Cartago Norte, 232 m Este."/>
    <Propiedad NumFinca="3443064" Valor="26418530" Direccion="La Giralda, 884 m Noreste."/>
    <Propiedad NumFinca="7238495" Valor="22793908" Direccion="San Gerardo, 189 m Este."/>
    <Propiedad NumFinca="7254630" Valor="8864424" Direccion="Urbanización La Fundación, 650 m Norte."/>
    <Propiedad NumFinca="3901661" Valor="7372626" Direccion="Cuestillas, 883 m Noreste."/>
    <Propiedad NumFinca="4896538" Valor="17714097" Direccion=" MasxMenos, 304 m Este."/>
    <Propiedad NumFinca="5086841" Valor="4413462" Direccion="ITEC, 615 m Este."/>
    <Propiedad NumFinca="4207552" Valor="22854489" Direccion="Astua Pirie, 48 m Norte."/>
    <Propiedad NumFinca="3958319" Valor="29381787" Direccion="La Francia, 88 m Norte."/>
    <Propiedad NumFinca="8584160" Valor="6212212" Direccion=" Hospital Central, 395 m Este."/>
    <Propiedad NumFinca="1551601" Valor="21326776" Direccion="Iglesia Católica de Cartago Norte, 348 m Sureste."/>
    <Propiedad NumFinca="5308209" Valor="8603623" Direccion=" AM-PM, 923 m Sureste."/>
    <Propiedad NumFinca="6883678" Valor="15243905" Direccion="San Joser, 156 m Sur."/>
    <Propiedad NumFinca="4867842" Valor="11734930" Direccion="El Alto, 331 m Noreste."/>
    <Propietario Nombre="Adrián Manzano Blazquez" TipoDocIdentidad="1" identificacion="620594586"/>
    <Propietario Nombre="Alejandra Valero Torres" TipoDocIdentidad="1" identificacion="377848424"/>
    <Propietario Nombre="Julia Fuente Gallego" TipoDocIdentidad="1" identificacion="761612201"/>
    <Propietario Nombre="Irene Lorenzo Casado" TipoDocIdentidad="1" identificacion="571666148"/>
    <Propietario Nombre="Daniela Diaz Moreno" TipoDocIdentidad="1" identificacion="347165507"/>
    <Propietario Nombre="Alberto Soriano Herrera" TipoDocIdentidad="1" identificacion="473672549"/>
    <Propietario Nombre="David Gomez Moreno" TipoDocIdentidad="1" identificacion="405113242"/>
    <Propietario Nombre="Alex Conde Quintana" TipoDocIdentidad="1" identificacion="136987599"/>
    <Propietario Nombre="Guillermo Rueda Rojas" TipoDocIdentidad="1" identificacion="208058000"/>
    <Propietario Nombre="Clara Peña Reyes" TipoDocIdentidad="1" identificacion="351134592"/>
    <Propietario Nombre="Martina Campos Rodriguez" TipoDocIdentidad="6" identificacion="863508028"/>
    <Propietario Nombre="Triana Suarez Castaño" TipoDocIdentidad="1" identificacion="354851664"/>
    <Propietario Nombre="José Lozano Rivas" TipoDocIdentidad="2" identificacion="886757350"/>
    <Propietario Nombre="Gabriel Segura Rojas" TipoDocIdentidad="1" identificacion="723433510"/>
    <Propietario Nombre="Lola Mendez Vazquez" TipoDocIdentidad="1" identificacion="466182021"/>
    <Propietario Nombre="Alejandro Ruiz Diaz" TipoDocIdentidad="1" identificacion="613361308"/>
    <Propietario Nombre="Alba Camacho Roca" TipoDocIdentidad="1" identificacion="667902495"/>
    <Propietario Nombre="Clara Espinosa Santamaria" TipoDocIdentidad="1" identificacion="405893916"/>
    <Propietario Nombre="Ainara Castaño Contreras" TipoDocIdentidad="1" identificacion="284534966"/>
    <Propietario Nombre="Vera Andres Muñoz" TipoDocIdentidad="1" identificacion="570266199"/>
    <PropiedadVersusPropietario NumFinca="2734696" identificacion="620594586"/>
    <PropiedadVersusPropietario NumFinca="6722024" identificacion="377848424"/>
    <PropiedadVersusPropietario NumFinca="5310895" identificacion="761612201"/>
    <PropiedadVersusPropietario NumFinca="8743195" identificacion="571666148"/>
    <PropiedadVersusPropietario NumFinca="7393203" identificacion="347165507"/>
    <PropiedadVersusPropietario NumFinca="9072945" identificacion="473672549"/>
    <PropiedadVersusPropietario NumFinca="9538337" identificacion="405113242"/>
    <PropiedadVersusPropietario NumFinca="3443064" identificacion="136987599"/>
    <PropiedadVersusPropietario NumFinca="7238495" identificacion="208058000"/>
    <PropiedadVersusPropietario NumFinca="7254630" identificacion="351134592"/>
    <PropiedadVersusPropietario NumFinca="3901661" identificacion="863508028"/>
    <PropiedadVersusPropietario NumFinca="4896538" identificacion="354851664"/>
    <PropiedadVersusPropietario NumFinca="5086841" identificacion="886757350"/>
    <PropiedadVersusPropietario NumFinca="4207552" identificacion="723433510"/>
    <PropiedadVersusPropietario NumFinca="3958319" identificacion="466182021"/>
    <PropiedadVersusPropietario NumFinca="8584160" identificacion="613361308"/>
    <PropiedadVersusPropietario NumFinca="1551601" identificacion="667902495"/>
    <PropiedadVersusPropietario NumFinca="5308209" identificacion="405893916"/>
    <PropiedadVersusPropietario NumFinca="6883678" identificacion="284534966"/>
    <PropiedadVersusPropietario NumFinca="4867842" identificacion="570266199"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2734696"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6722024"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5310895"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8743195"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7393203"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9072945"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9538337"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3443064"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7238495"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7254630"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3901661"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4896538"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5086841"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4207552"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3958319"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8584160"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1551601"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5308209"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6883678"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4867842"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-15">
	</OperacionDia>
  <OperacionDia fecha="2020-02-16">
	</OperacionDia>
  <OperacionDia fecha="2020-02-17">
    <Propiedad NumFinca="1201330" Valor="11440644.00" Direccion="Urbanización La Pacífica, lote 40-Z"/>
    <Propiedad NumFinca="1368271" Valor="13499518.00" Direccion="75 m al oeste del puente sobre el Río Camarón, en ruta San Pablo - San Pedro"/>
    <Propiedad NumFinca="2287722" Valor="16187168.00" Direccion="El Tanque, 500 m al noreste y 175 m al este de la plaza de deportes del Tanque"/>
    <Propiedad NumFinca="4184252" Valor="11389230.00" Direccion="Calle potrerillos, de la entrada de Rumba 25 m Oeste y 50 m Norte "/>
    <Propiedad NumFinca="1393022" Valor="56515500.00" Direccion="Granja, 200 m sur de la Estación de Servicio El Higuerón"/>
    <Propiedad NumFinca="4193112" Valor="21543802.00" Direccion="Urbanización Quizarco, 5ta Etapa, Lote 40-Y De la nueva Estación de Bomberos 100 metros Norte y 25 metros Este"/>
    <Propiedad NumFinca="1610884" Valor="13091323.00" Direccion="Del Restaurante Bacchus, 200 m al este y 500 m al norte Condominio Nuvo"/>
    <Propietario Nombre="JUAN CARLOS BARRANTES PEREZ" TipoDocIdentidad="1" identificacion="304650444"/>
    <Propietario Nombre="JOSE PABLO BENAVIDES UMAÑA" TipoDocIdentidad="1" identificacion="116250038"/>
    <PropiedadVersusPropietario NumFinca="1201330" identificacion="304650444"/>
    <PropiedadVersusPropietario NumFinca="1368271" identificacion="304650444"/>
    <PropiedadVersusPropietario NumFinca="2287722" identificacion="304650444"/>
    <PropiedadVersusPropietario NumFinca="4184252" identificacion="304650444"/>
    <PropiedadVersusPropietario NumFinca="1393022" identificacion="116250038"/>
    <PropiedadVersusPropietario NumFinca="4193112" identificacion="116250038"/>
    <Propietario Nombre="Master Lex" TipoDocIdentidad="4" identificacion="3101213575"/>
    <PropiedadVersusPropietario NumFinca="1610884" identificacion="3101213575"/>
    <PersonaJuridica docidPersonaJuridica="3101213575" DocidRepresentante="304650444" Nombre="JUAN CARLOS BARRANTES PEREZ" TipDocIdRepresentante="1"/>
    <UsuarioVersusPropiedad NumFinca="1610884" nombreUsuario="EHernandez"/>
    <UsuarioVersusPropiedad NumFinca="1201330" nombreUsuario="EHernandez"/>
    <UsuarioVersusPropiedad NumFinca="1368271" nombreUsuario="EHernandez"/>
    <UsuarioVersusPropiedad NumFinca="4193112" nombreUsuario="KPerez"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1201330"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1368271"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2287722"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4184252"/>
    <ConceptoCobroVersusPropiedad idcobro="7" NumFinca="1393022"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4193112"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-18">
    <Propiedad NumFinca="3158340" Valor="3679623" Direccion="San Joser, 759 m Sur."/>
    <Propiedad NumFinca="8513969" Valor="3687107" Direccion=" AM-PM, 527 m Suroeste."/>
    <Propiedad NumFinca="6527953" Valor="29009197" Direccion="El Alto, 302 m Noreste."/>
    <Propiedad NumFinca="9582939" Valor="26110809" Direccion=" Fresh Markert, 497 m Oeste."/>
    <Propiedad NumFinca="6374877" Valor="14778628" Direccion="Canoas, 264 m Norte."/>
    <Propiedad NumFinca="9380786" Valor="13497467" Direccion="UCR, 478 m Noroeste."/>
    <Propiedad NumFinca="5612982" Valor="12520502" Direccion="Ciruelas, 842 m Norte."/>
    <Propiedad NumFinca="1667419" Valor="16043592" Direccion="San Gerardo, 445 m Sur."/>
    <Propiedad NumFinca="4987514" Valor="22062715" Direccion="San Felipe, 181 m Noreste."/>
    <Propiedad NumFinca="7733971" Valor="18250406" Direccion="Banco Nacional, 361 m Sureste."/>
    <Propiedad NumFinca="7991150" Valor="29844254" Direccion="Manzanar, 192 m Norte."/>
    <Propiedad NumFinca="1463009" Valor="26570644" Direccion="El Jardín, 589 m Sureste."/>
    <Propiedad NumFinca="2499250" Valor="29514699" Direccion="San Felipe, 688 m Oeste."/>
    <Propiedad NumFinca="6215848" Valor="12810888" Direccion="Plantel de COPRESA, 911 m Noroeste."/>
    <Propiedad NumFinca="9373199" Valor="19441271" Direccion=" MasxMenos, 125 m Este."/>
    <Propiedad NumFinca="2481735" Valor="15386972" Direccion="Cuestillas, 885 m Sureste."/>
    <Propiedad NumFinca="7253078" Valor="10723445" Direccion="Canoas, 848 m Suroeste."/>
    <Propiedad NumFinca="6584320" Valor="22627279" Direccion="Astua Pirie, 251 m Noroeste."/>
    <Propiedad NumFinca="6741380" Valor="5267578" Direccion="Santa Rosa, 240 m Oeste."/>
    <Propiedad NumFinca="8719164" Valor="6833432" Direccion="Iglesia Católica de Cartago Norte, 322 m Sur."/>
    <Propietario Nombre="Alberto Menendez Flores" TipoDocIdentidad="1" identificacion="751178275"/>
    <Propietario Nombre="Gonzalo Navarro Rio" TipoDocIdentidad="1" identificacion="774288245"/>
    <Propietario Nombre="Leo Montes Rojo" TipoDocIdentidad="1" identificacion="588263441"/>
    <Propietario Nombre="Martín Rubio Prado" TipoDocIdentidad="1" identificacion="491174878"/>
    <Propietario Nombre="Héctor Gil Vazquez" TipoDocIdentidad="1" identificacion="576401310"/>
    <Propietario Nombre="Alicia Gonzalez Vazquez" TipoDocIdentidad="1" identificacion="511247081"/>
    <Propietario Nombre="Sara Roca Garcia" TipoDocIdentidad="1" identificacion="436931935"/>
    <Propietario Nombre="Jorge Rodriguez Quintana" TipoDocIdentidad="1" identificacion="252761200"/>
    <Propietario Nombre="Alba Rico Saez" TipoDocIdentidad="1" identificacion="678265178"/>
    <Propietario Nombre="Alberto Morales Carmona" TipoDocIdentidad="1" identificacion="170214145"/>
    <Propietario Nombre="Clara Rio Casas" TipoDocIdentidad="1" identificacion="602872488"/>
    <Propietario Nombre="Inés Lara Pozo" TipoDocIdentidad="1" identificacion="120864923"/>
    <Propietario Nombre="Elena Varela Franco" TipoDocIdentidad="1" identificacion="734865374"/>
    <Propietario Nombre="Alejandra Bermudez Del Rio" TipoDocIdentidad="1" identificacion="422727446"/>
    <Propietario Nombre="Julia Mendoza Rubio" TipoDocIdentidad="2" identificacion="892560731"/>
    <Propietario Nombre="Ariadna Segura Parra" TipoDocIdentidad="1" identificacion="613902424"/>
    <Propietario Nombre="Daniela Palacios Gil" TipoDocIdentidad="1" identificacion="116354546"/>
    <Propietario Nombre="Eric Garrido Beltran" TipoDocIdentidad="1" identificacion="715055064"/>
    <Propietario Nombre="Mateo Montes Escudero" TipoDocIdentidad="2" identificacion="816304727"/>
    <Propietario Nombre="Alex Gallego Cuesta" TipoDocIdentidad="1" identificacion="206408930"/>
    <PropiedadVersusPropietario NumFinca="3158340" identificacion="751178275"/>
    <PropiedadVersusPropietario NumFinca="8513969" identificacion="774288245"/>
    <PropiedadVersusPropietario NumFinca="6527953" identificacion="588263441"/>
    <PropiedadVersusPropietario NumFinca="9582939" identificacion="491174878"/>
    <PropiedadVersusPropietario NumFinca="6374877" identificacion="576401310"/>
    <PropiedadVersusPropietario NumFinca="9380786" identificacion="511247081"/>
    <PropiedadVersusPropietario NumFinca="5612982" identificacion="436931935"/>
    <PropiedadVersusPropietario NumFinca="1667419" identificacion="252761200"/>
    <PropiedadVersusPropietario NumFinca="4987514" identificacion="678265178"/>
    <PropiedadVersusPropietario NumFinca="7733971" identificacion="170214145"/>
    <PropiedadVersusPropietario NumFinca="7991150" identificacion="602872488"/>
    <PropiedadVersusPropietario NumFinca="1463009" identificacion="120864923"/>
    <PropiedadVersusPropietario NumFinca="2499250" identificacion="734865374"/>
    <PropiedadVersusPropietario NumFinca="6215848" identificacion="422727446"/>
    <PropiedadVersusPropietario NumFinca="9373199" identificacion="892560731"/>
    <PropiedadVersusPropietario NumFinca="2481735" identificacion="613902424"/>
    <PropiedadVersusPropietario NumFinca="7253078" identificacion="116354546"/>
    <PropiedadVersusPropietario NumFinca="6584320" identificacion="715055064"/>
    <PropiedadVersusPropietario NumFinca="6741380" identificacion="816304727"/>
    <PropiedadVersusPropietario NumFinca="8719164" identificacion="206408930"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3158340"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8513969"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6527953"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9582939"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6374877"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9380786"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5612982"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1667419"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4987514"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7733971"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7991150"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1463009"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2499250"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6215848"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9373199"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2481735"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7253078"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6584320"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6741380"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8719164"/>
    <CambioPropiedad NumFinca="7040783" NuevoValor="21869030"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-19">
    <Propiedad NumFinca="1480840" Valor="14558220.00" Direccion="San Rafael, de la Escuela Abel Umaña 100 m Sur y 30 m Oeste, a mano derecha, acceso por servidumbre"/>
    <Propiedad NumFinca="2103983" Valor="57762600.00" Direccion="De la esquina Noreste de la plaza de Calle San José, 500 m al Norte y 142 m al Oeste"/>
    <Propiedad NumFinca="4203725" Valor="77982989.00" Direccion="Horquetas, de la entrada principal de Horquetas 10 m al Noroeste"/>
    <Propiedad NumFinca="1514282" Valor="56534500.00" Direccion="Granja, 200 m Sur de la Estación de Servicio El Higuerón"/>
    <Propiedad NumFinca="7605510" Valor="36933812.00" Direccion="Calle Los Colegios, del Colegio Nocturno 250 m este y 60 m sur casa de concreto mano derecha"/>
    <Propietario Nombre="KENNETH ANDREY BLANCO SANCHO" TipoDocIdentidad="1" identificacion="303580304"/>
    <Propietario Nombre="TRISTAN ELIDO BODRA JIMENEZ" TipoDocIdentidad="1" identificacion="113360365"/>
    <PropiedadVersusPropietario NumFinca="1480840" identificacion="303580304"/>
    <PropiedadVersusPropietario NumFinca="2103983" identificacion="303580304"/>
    <PropiedadVersusPropietario NumFinca="4203725" identificacion="303580304"/>
    <PropiedadVersusPropietario NumFinca="1514282" identificacion="113360365"/>
    <PropiedadVersusPropietario NumFinca="7605510" identificacion="113360365"/>
    <Usuario Nombre="DCornero" password="MLo4Z" tipo="cliente"/>
    <UsuarioVersusPropiedad NumFinca="4203725" nombreUsuario="DCornero"/>
    <UsuarioVersusPropiedad NumFinca="1480840" nombreUsuario="DCornero"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1480840"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2103983"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4203725"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1514282"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7605510"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-20">
    <Propiedad NumFinca="1514445" Valor="3699328.00" Direccion="María Auxiliadora, 1,10 Km al Este de la iglesia de Aserrí, o 200 m al Oeste del Plantel de COPRESA y 14,32 m al Sur"/>
    <Propiedad NumFinca="2108129" Valor="1162805.00" Direccion="Orotina, Residencias Pacific Sun, Costado este del Campo Ferial, finca nº 19"/>
    <Propiedad NumFinca="7632960" Valor="12596298.00" Direccion="Florida, carretera a La Alegría, de la localidad de El Cruce, 1,1 km Este en dirección a La Florida y 600 m Norte sobre calle de lastre"/>
    <Propiedad NumFinca="1527660" Valor="6457492.00" Direccion="San Felipe, Urbanización Boulevard de la Guardia"/>
    <Propiedad NumFinca="7738110" Valor="11991612.00" Direccion="Las Cascadas, del Hogar Bethel, 75 m Norte"/>
    <Propiedad NumFinca="4108772" Valor="98640877.00" Direccion="Finca Cinco, de la esquina de la escuela de Finca Cinco 45 m Norte y 194 m Este, lote cabecero mano derecha con casa"/>
    <Propiedad NumFinca="2465209" Valor="21446192.00" Direccion="350 m al noroeste, 90 m al este y 40 m al norte del cementerio de Santa Rosa"/>
    <Propietario Nombre="MILENE BUSTAMANTE ROJAS" TipoDocIdentidad="1" identificacion="110850057"/>
    <Propietario Nombre="SOFIA MATA SOLANO" TipoDocIdentidad="1" identificacion="111450435"/>
    <PropiedadVersusPropietario NumFinca="1514445" identificacion="110850057"/>
    <PropiedadVersusPropietario NumFinca="2108129" identificacion="110850057"/>
    <PropiedadVersusPropietario NumFinca="7632960" identificacion="110850057"/>
    <PropiedadVersusPropietario NumFinca="1527660" identificacion="111450435"/>
    <PropiedadVersusPropietario NumFinca="7738110" identificacion="111450435"/>
    <Propietario Nombre="HBL Solutions" TipoDocIdentidad="4" identificacion="3102597410"/>
    <PropiedadVersusPropietario NumFinca="2465209" identificacion="3102597410"/>
    <PropiedadVersusPropietario NumFinca="4108772" identificacion="3102597410"/>
    <PersonaJuridica docidPersonaJuridica="3102597410" DocidRepresentante="113360365" Nombre="TRISTAN ELIDO BODRA JIMENEZ" TipDocIdRepresentante="1"/>
    <Usuario Nombre="RSalas" password="e9mFa" tipo="cliente"/>
    <Usuario Nombre="PVindas" password="3ktBp" tipo="cliente"/>
    <UsuarioVersusPropiedad NumFinca="1527660" nombreUsuario="RSalas"/>
    <UsuarioVersusPropiedad NumFinca="7738110" nombreUsuario="RSalas"/>
    <UsuarioVersusPropiedad NumFinca="2465209" nombreUsuario="PVindas"/>
    <UsuarioVersusPropiedad NumFinca="4108772" nombreUsuario="PVindas"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1514445"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2108129"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7632960"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1527660"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7738110"/>
    <CambioPropiedad NumFinca="8513969" NuevoValor="4529626"/>
    <CambioPropiedad NumFinca="1480840" NuevoValor="16553054"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-21">
    <Propiedad NumFinca="1538868" Valor="86410401.00" Direccion="Barrio Pilar Contiguo a Bar Mi Taberna"/>
    <Propiedad NumFinca="7762610" Valor="5607200.00" Direccion="Bri-Bri Centro, de la Municipalidad de Bri Bri, 60 m Suroeste y 150 m al Noroeste M/Izquierda (Esquinera)"/>
    <Propiedad NumFinca="1528789" Valor="19438366.00" Direccion="La Sabana, del Minisuper Las Flores, 50 m Sur, 75 m Este y 75 m Sur, mano derecha"/>
    <Propiedad NumFinca="2134489" Valor="19228178.00" Direccion="Cuestillas, 600 m Noreste de la escuela de Cuestillas"/>
    <Propiedad NumFinca="2415723" Valor="735941.00" Direccion="Canoas, Urbanización Altos de Montenegro"/>
    <Propiedad NumFinca="7787120" Valor="62302020.00" Direccion="La Francia, de la entrada principal de Cairo 201,12 m norte, lote en margen izquierda"/>
    <Propiedad NumFinca="2405935" Valor="85441617.00" Direccion="San Luis, de la esquina noroeste del cementerio de Florencia, San Carlos, 340 m norte, 55 m oeste y 25 m sur"/>
    <Propiedad NumFinca="2416612" Valor="2377324.00" Direccion="Urbanización La Cataluña, 1º etapa"/>
    <Propiedad NumFinca="4204033" Valor="77982989.00" Direccion="Heredia, San Rafael, de la esquina Oeste de la plaza de fútbol 250 m al sur"/>
    <Propiedad NumFinca="7799701" Valor="14764383.00" Direccion="De Nava Café, 75 m Este y 30 m Norte, mano derecha "/>
    <Propietario Nombre="IGNACIO BOGARIN MARIN" TipoDocIdentidad="1" identificacion="206130789"/>
    <Propietario Nombre="MARIELA DE LOS ANGEL BOGARIN MARIN" TipoDocIdentidad="1" identificacion="206480034"/>
    <Propietario Nombre="FABIO JOSUE CALDERON TORRES" TipoDocIdentidad="1" identificacion="304310762"/>
    <PropiedadVersusPropietario NumFinca="1538868" identificacion="206130789"/>
    <PropiedadVersusPropietario NumFinca="7762610" identificacion="206130789"/>
    <PropiedadVersusPropietario NumFinca="2415723" identificacion="206480034"/>
    <PropiedadVersusPropietario NumFinca="1528789" identificacion="206480034"/>
    <PropiedadVersusPropietario NumFinca="2134489" identificacion="206480034"/>
    <PropiedadVersusPropietario NumFinca="7787120" identificacion="206480034"/>
    <PropiedadVersusPropietario NumFinca="2405935" identificacion="304310762"/>
    <PropiedadVersusPropietario NumFinca="7799701" identificacion="304310762"/>
    <Propietario Nombre="Fe De Calle" TipoDocIdentidad="4" identificacion="3101375604"/>
    <PropiedadVersusPropietario NumFinca="4204033" identificacion="3101375604"/>
    <PersonaJuridica docidPersonaJuridica="3101375604" DocidRepresentante="111450435" Nombre="SOFIA MATA SOLANO" TipDocIdRepresentante="1"/>
    <Usuario Nombre="FChaves" password="5YwM2" tipo="cliente"/>
    <Usuario Nombre="AAlfaro" password="fwZwI" tipo="cliente"/>
    <Usuario Nombre="TJimenez" password="pmGht" tipo="cliente"/>
    <UsuarioVersusPropiedad NumFinca="2415723" nombreUsuario="FChaves"/>
    <UsuarioVersusPropiedad NumFinca="1528789" nombreUsuario="FChaves"/>
    <UsuarioVersusPropiedad NumFinca="2405935" nombreUsuario="TJimenez"/>
    <UsuarioVersusPropiedad NumFinca="7799701" nombreUsuario="TJimenez"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1538868"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7762610"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1528789"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2134489"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2415723"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7787120"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2405935"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2416612"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7799701"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-22">
	</OperacionDia>
  <OperacionDia fecha="2020-02-23">
	</OperacionDia>
  <OperacionDia fecha="2020-02-24">
    <Propiedad NumFinca="2789388" Valor="22694926" Direccion="Bar las delicias, 652 m Suroeste."/>
    <Propiedad NumFinca="9082340" Valor="3794068" Direccion=" La fuente central, 642 m Noroeste."/>
    <Propiedad NumFinca="9363951" Valor="8811740" Direccion="Urbanización La Pacífica, 195 m Oeste."/>
    <Propiedad NumFinca="1104650" Valor="17655704" Direccion="Iglesia Católica de Cartago Norte, 928 m Oeste."/>
    <Propiedad NumFinca="3151260" Valor="8513333" Direccion=" Iglecia Los capuchinos, 628 m Sur."/>
    <Propiedad NumFinca="5333273" Valor="11825946" Direccion="Residencias Pacific Sun, 333 m Oeste."/>
    <Propiedad NumFinca="8076596" Valor="6588243" Direccion="Ciruelas, 847 m Noreste."/>
    <Propiedad NumFinca="5359919" Valor="4390492" Direccion="La Francia, 46 m Noreste."/>
    <Propiedad NumFinca="6163924" Valor="10002071" Direccion=" Central Electrica, 821 m Oeste."/>
    <Propiedad NumFinca="9944467" Valor="14008599" Direccion="Corazón de Jesús, 708 m Sur."/>
    <Propiedad NumFinca="8717485" Valor="9883062" Direccion="El Alto, 789 m Sureste."/>
    <Propiedad NumFinca="8500064" Valor="23658045" Direccion=" Autolavado Nuestra Señora, 835 m Norte."/>
    <Propiedad NumFinca="9829237" Valor="12918334" Direccion="Soda el Higueron, 826 m Sur."/>
    <Propiedad NumFinca="6696849" Valor="5073301" Direccion=" Fresh Markert, 230 m Suroeste."/>
    <Propiedad NumFinca="5518445" Valor="20721534" Direccion=" La Paz, 796 m Oeste."/>
    <Propiedad NumFinca="5677891" Valor="24308242" Direccion="Manzanar, 781 m Norte."/>
    <Propiedad NumFinca="1337841" Valor="10883333" Direccion="UCR, 600 m Noreste."/>
    <Propiedad NumFinca="2029555" Valor="11823456" Direccion="De Nava Café, 582 m Oeste."/>
    <Propiedad NumFinca="2205723" Valor="7775695" Direccion="Santa Rosa, 946 m Oeste."/>
    <Propiedad NumFinca="6531847" Valor="28010447" Direccion="Hacienda Vieja, 86 m Oeste."/>
    <Propietario Nombre="José Rico Gallego" TipoDocIdentidad="1" identificacion="402710346"/>
    <Propietario Nombre="Valeria Sancho Garrido" TipoDocIdentidad="1" identificacion="245227111"/>
    <Propietario Nombre="Pablo Espinosa Cortes" TipoDocIdentidad="2" identificacion="808961786"/>
    <Propietario Nombre="Dylan Lozano Segura" TipoDocIdentidad="1" identificacion="658485240"/>
    <Propietario Nombre="Gonzalo Marcos Montes" TipoDocIdentidad="1" identificacion="385097660"/>
    <Propietario Nombre="Carlos Roldan Blazquez" TipoDocIdentidad="1" identificacion="111766599"/>
    <Propietario Nombre="Vera Caballero Guillen" TipoDocIdentidad="2" identificacion="812472039"/>
    <Propietario Nombre="Lola Contreras Perez" TipoDocIdentidad="1" identificacion="459325125"/>
    <Propietario Nombre="Laura Herrera Asensio" TipoDocIdentidad="1" identificacion="191106528"/>
    <Propietario Nombre="Vega Silva Dominguez" TipoDocIdentidad="1" identificacion="698697235"/>
    <Propietario Nombre="José Rodriguez Conde" TipoDocIdentidad="1" identificacion="530052353"/>
    <Propietario Nombre="Jorge Vidal Del Rio" TipoDocIdentidad="1" identificacion="618164985"/>
    <Propietario Nombre="Ainhoa Santamaria Blanco" TipoDocIdentidad="1" identificacion="759604304"/>
    <Propietario Nombre="Marta Garrido Rojo" TipoDocIdentidad="1" identificacion="260214134"/>
    <Propietario Nombre="Mario Parra Diaz" TipoDocIdentidad="2" identificacion="852108987"/>
    <Propietario Nombre="Dylan Aparicio Redondo" TipoDocIdentidad="1" identificacion="435118450"/>
    <Propietario Nombre="Miguel Aparicio Herrero" TipoDocIdentidad="1" identificacion="784354701"/>
    <Propietario Nombre="Ana Segura Redondo" TipoDocIdentidad="1" identificacion="788715069"/>
    <Propietario Nombre="Adam Fuentes Crespo" TipoDocIdentidad="1" identificacion="266090297"/>
    <Propietario Nombre="Lucas Robles Castaño" TipoDocIdentidad="1" identificacion="746390410"/>
    <PropiedadVersusPropietario NumFinca="2789388" identificacion="402710346"/>
    <PropiedadVersusPropietario NumFinca="9082340" identificacion="245227111"/>
    <PropiedadVersusPropietario NumFinca="9363951" identificacion="808961786"/>
    <PropiedadVersusPropietario NumFinca="1104650" identificacion="658485240"/>
    <PropiedadVersusPropietario NumFinca="3151260" identificacion="385097660"/>
    <PropiedadVersusPropietario NumFinca="5333273" identificacion="111766599"/>
    <PropiedadVersusPropietario NumFinca="8076596" identificacion="812472039"/>
    <PropiedadVersusPropietario NumFinca="5359919" identificacion="459325125"/>
    <PropiedadVersusPropietario NumFinca="6163924" identificacion="191106528"/>
    <PropiedadVersusPropietario NumFinca="9944467" identificacion="698697235"/>
    <PropiedadVersusPropietario NumFinca="8717485" identificacion="530052353"/>
    <PropiedadVersusPropietario NumFinca="8500064" identificacion="618164985"/>
    <PropiedadVersusPropietario NumFinca="9829237" identificacion="759604304"/>
    <PropiedadVersusPropietario NumFinca="6696849" identificacion="260214134"/>
    <PropiedadVersusPropietario NumFinca="5518445" identificacion="852108987"/>
    <PropiedadVersusPropietario NumFinca="5677891" identificacion="435118450"/>
    <PropiedadVersusPropietario NumFinca="1337841" identificacion="784354701"/>
    <PropiedadVersusPropietario NumFinca="2029555" identificacion="788715069"/>
    <PropiedadVersusPropietario NumFinca="2205723" identificacion="266090297"/>
    <PropiedadVersusPropietario NumFinca="6531847" identificacion="746390410"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2789388"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9082340"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9363951"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1104650"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3151260"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5333273"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8076596"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5359919"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6163924"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9944467"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8717485"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8500064"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9829237"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6696849"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5518445"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5677891"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1337841"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2029555"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2205723"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6531847"/>
    <CambioPropiedad NumFinca="7539590" NuevoValor="13157023"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-25">
	</OperacionDia>
  <OperacionDia fecha="2020-02-26">
    <Propiedad NumFinca="7825963" Valor="26637201.00" Direccion="Astua Pirie, del antiguo Bar Montiel, 355 m Este, mano derecha Costado Este del taller de ebanistería"/>
    <Propiedad NumFinca="1298862" Valor="2880375.00" Direccion="De la Escuela Mont View, 100 m norte, 250 m este, Condominio Vistas del Rio, casa N° 2"/>
    <Propiedad NumFinca="2407485" Valor="15541677.00" Direccion="Urbanización Prados del San Juan 100 al Sur y 13 m al Este de la entrada"/>
    <Propiedad NumFinca="2425954" Valor="3820557.00" Direccion="Barrio de San José, De la escuela pública del Barrio de San José 50 m al Sur"/>
    <Propiedad NumFinca="7816509" Valor="4116212.00" Direccion="El Jardín, de la escuela, 100 m Sur Mano izquierda "/>
    <Propiedad NumFinca="1230183" Valor="65334854.00" Direccion="Residencial Santa Catalina, frente al Colegio Británico"/>
    <Propiedad NumFinca="1340644" Valor="28803750.00" Direccion="Del Centro Comercial Los Laureles 475 m al norte y 250 m al este"/>
    <Propiedad NumFinca="3130126" Valor="10236458.00" Direccion="Cartago, Cartago, San Nicolás, Loyola, Del COVAO, 200 mts al oeste, y 200 mts mts norte, al final de la calle pública "/>
    <Propiedad NumFinca="5109920" Valor="10380650.00" Direccion="Del Cruce de San Gerardo y Santa Elena 420m norte hacia San Pedro, Hotel Vista Verde Lodge "/>
    <Propietario Nombre="ANTHONY RICHARD CALLOW MONGE" TipoDocIdentidad="1" identificacion="206350949"/>
    <Propietario Nombre="FABRICIO CECILIANO NAVARRO" TipoDocIdentidad="1" identificacion="112230878"/>
    <Propietario Nombre="EMMANUEL GERARDO CERDAS VALVERDE" TipoDocIdentidad="1" identificacion="401880400"/>
    <Propietario Nombre="MARIE PAZ CHAPMAN LACHNER" TipoDocIdentidad="1" identificacion="110590391"/>
    <PropiedadVersusPropietario NumFinca="7825963" identificacion="206350949"/>
    <PropiedadVersusPropietario NumFinca="2425954" identificacion="112230878"/>
    <PropiedadVersusPropietario NumFinca="1298862" identificacion="112230878"/>
    <PropiedadVersusPropietario NumFinca="2407485" identificacion="112230878"/>
    <PropiedadVersusPropietario NumFinca="7816509" identificacion="112230878"/>
    <PropiedadVersusPropietario NumFinca="1230183" identificacion="401880400"/>
    <PropiedadVersusPropietario NumFinca="3130126" identificacion="401880400"/>
    <PropiedadVersusPropietario NumFinca="5109920" identificacion="110590391"/>
    <Propietario Nombre="CTPA" TipoDocIdentidad="4" identificacion="3101359071"/>
    <PropiedadVersusPropietario NumFinca="1340644" identificacion="3101359071"/>
    <PersonaJuridica docidPersonaJuridica="3101359071" DocidRepresentante="206130789" Nombre="IGNACIO BOGARIN MARIN" TipDocIdRepresentante="1"/>
    <Usuario Nombre="JFallas" password="19Nph" tipo="cliente"/>
    <UsuarioVersusPropiedad NumFinca="7825963" nombreUsuario="AAlfaro"/>
    <UsuarioVersusPropiedad NumFinca="1230183" nombreUsuario="JFallas"/>
    <UsuarioVersusPropiedad NumFinca="3130126" nombreUsuario="JFallas"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7825963"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1298862"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2407485"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2425954"/>
    <ConceptoCobroVersusPropiedad idcobro="8" NumFinca="2425954"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7816509"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1230183"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3130126"/>
    <CambioPropiedad NumFinca="1337841" NuevoValor="8302905"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-27">
    <Propiedad NumFinca="1579482" Valor="62872320.50" Direccion="Corazón de Jesús, calle Manuel Solano Jiménez, local de oficina 2 niveles color crema con cortina metálica y bodega a mano izquierda, penúltima construcción "/>
    <Propiedad NumFinca="1339574" Valor="56515500.00" Direccion="San Rafael Arriba de Desamparados Barrio La Guaría, del Super la Guaría, 100 Oeste y 135 Norte"/>
    <Propiedad NumFinca="2360478" Valor="3982670.00" Direccion="San Juan, del Bar Los Pilones, 1 km al Norte, camino lastre y asfalto, camino secundario a San Juanillo"/>
    <Propiedad NumFinca="2400057" Valor="19735205.00" Direccion="250m Sur y 700 Oeste de entrada a San José de la Tigra"/>
    <Propiedad NumFinca="1247220" Valor="92458275.00" Direccion="Urbanización Los Árboles, del costado Sureste del Colegio Madre del Divino Pastor, 100 m Noreste y 100 Sureste"/>
    <Propiedad NumFinca="2239600" Valor="1348500.00" Direccion="San Jorge, 150 m al sur de la plaza de deportes de San Jorge"/>
    <Propiedad NumFinca="2281645" Valor="2234664.00" Direccion="La Giralda, Residencial La Giralda, bloque F, lote # 28"/>
    <Propiedad NumFinca="1130552" Valor="694195.00" Direccion="localidad de Barrio Cristo Rey, del costado Este del Liceo del Sur, 30 metros al Este de la intersección entre Avenida No22 y Calle No 16, Terreno medianero con edificación de dos niveles"/>
    <Propietario Nombre="CARLOS ADRIAN GOMEZ SEGURA" TipoDocIdentidad="1" identificacion="401740457"/>
    <Propietario Nombre="GEINER JOSUE GRANADOS BRENES" TipoDocIdentidad="1" identificacion="602990385"/>
    <Propietario Nombre="MARTIN ALBERTO HERNANDEZ CARRASQUILLA" TipoDocIdentidad="1" identificacion="402220519"/>
    <PropiedadVersusPropietario NumFinca="1130552" identificacion="402220519"/>
    <PropiedadVersusPropietario NumFinca="1247220" identificacion="402220519"/>
    <PropiedadVersusPropietario NumFinca="2239600" identificacion="402220519"/>
    <PropiedadVersusPropietario NumFinca="2281645" identificacion="402220519"/>
    <PropiedadVersusPropietario NumFinca="1339574" identificacion="602990385"/>
    <PropiedadVersusPropietario NumFinca="2360478" identificacion="602990385"/>
    <PropiedadVersusPropietario NumFinca="2400057" identificacion="602990385"/>
    <PropiedadVersusPropietario NumFinca="1579482" identificacion="401740457"/>
    <Propiedad NumFinca="3169432" Valor="10410783 " Direccion="Urbanización Los Mirlos, Parte Oriental de Cartago"/>
    <Propietario Nombre="Fuegos Artificiales S.A" TipoDocIdentidad="4" identificacion="3101250683"/>
    <PropiedadVersusPropietario NumFinca="3169432" identificacion="3101250683"/>
    <PersonaJuridica docidPersonaJuridica="3101250683" DocidRepresentante="304310762" Nombre="FABIO JOSUE CALDERON TORRES" TipDocIdRepresentante="1"/>
    <Propiedad NumFinca="1597586" Valor="68990760 " Direccion="Guadalupe, del cruce Moravia Guadalupe (estación Gasolina) 120 m sur y 50 m este"/>
    <Propietario Nombre="Coca-cola" TipoDocIdentidad="4" identificacion="3101574107"/>
    <PropiedadVersusPropietario NumFinca="1597586" identificacion="3101574107"/>
    <PersonaJuridica docidPersonaJuridica="3101574107" DocidRepresentante="110590391" Nombre="MARIE PAZ CHAPMAN LACHNER" TipDocIdRepresentante="1"/>
    <Usuario Nombre="MBarquero" password="qTtZx" tipo="cliente"/>
    <UsuarioVersusPropiedad NumFinca="1579482" nombreUsuario="MBarquero"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5109920"/>
    <ConceptoCobroVersusPropiedad idcobro="7" NumFinca="1579482"/>
    <ConceptoCobroVersusPropiedad idcobro="8" NumFinca="1339574"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2360478"/>
    <ConceptoCobroVersusPropiedad idcobro="9" NumFinca="2400057"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1247220"/>
    <ConceptoCobroVersusPropiedad idcobro="7" NumFinca="2239600"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2281645"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1130552"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-28">
    <Propiedad NumFinca="1118180" Valor="30565427.00" Direccion="Hacienda Vieja, Condominio la Estancia, Finca Filial No 3-12, edificio No 3, primer nivel"/>
    <Propiedad NumFinca="7148454" Valor="21306425.00" Direccion="San Gerardo, 192 metros oeste de la escuela de Ticabán"/>
    <Propiedad NumFinca="1596904" Valor="21609482.00" Direccion="Repunta, del Cen, 500 m al Este, 35 m Norte y 59 m Oeste"/>
    <Propiedad NumFinca="7804860" Valor="14764383.00" Direccion="Astua Pirie, del antiguo Bar Montiel, 355 m Este, mano derecha Costado Este del taller de ebanistería"/>
    <Propiedad NumFinca="1545327" Valor="1305375.00" Direccion="Santa Ana, Pozos, Residencial bosques de Santa Ana, de las bodegas de Wallmart, 50 m al Oeste, 100 m al Sur y 25 m al Este"/>
    <Propiedad NumFinca="7810652" Valor="26637201.00" Direccion="El Jardín, de la escuela, 100 m Sur Mano izquierda"/>
    <Propietario Nombre="MARCO HIDALGO MACRE" TipoDocIdentidad="1" identificacion="105940276"/>
    <Propietario Nombre="JOSE DE JESUS ISLAS OLALDE" TipoDocIdentidad="1" identificacion="115350695"/>
    <Propietario Nombre="MICHELLE JIMENEZ RAMIREZ" TipoDocIdentidad="1" identificacion="113390105"/>
    <PropiedadVersusPropietario NumFinca="1118180" identificacion="110590391"/>
    <PropiedadVersusPropietario NumFinca="7148454" identificacion="110590391"/>
    <PropiedadVersusPropietario NumFinca="1596904" identificacion="110590391"/>
    <PropiedadVersusPropietario NumFinca="7804860" identificacion="115350695"/>
    <PropiedadVersusPropietario NumFinca="1545327" identificacion="113390105"/>
    <PropiedadVersusPropietario NumFinca="7810652" identificacion="113390105"/>
    <Propiedad NumFinca="2512274" Valor="47913097.00" Direccion="Barrio Los Ángeles, 625 m Norte y 140 m Oeste del templo Católico"/>
    <Propietario Nombre="Intelec" TipoDocIdentidad="4" identificacion="3102640105"/>
    <PropiedadVersusPropietario NumFinca="2512274" identificacion="3102640105"/>
    <PersonaJuridica docidPersonaJuridica="3102640105" DocidRepresentante="206350949" Nombre="ANTHONY RICHARD CALLOW MONGE" TipDocIdRepresentante="1"/>
    <Propiedad NumFinca="1136447" Valor="72041378.55" Direccion="Dulce Nombre de Jesús, de la Lechería Nevada 300 m Este y 200 m Norte"/>
    <Propietario Nombre="Dos Pinos" TipoDocIdentidad="4" identificacion="3102854321"/>
    <PersonaJuridica docidPersonaJuridica="3102854321" DocidRepresentante="105940276" Nombre="MARCO HIDALGO MACRE" TipDocIdRepresentante="1"/>
    <PropiedadVersusPropietario NumFinca="1136447" identificacion="3102854321"/>
    <Usuario Nombre="IBogarin" password="FL8bA5" tipo="cliente"/>
    <UsuarioVersusPropiedad NumFinca="7804860" nombreUsuario="IBogarin"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1118180"/>
    <ConceptoCobroVersusPropiedad idcobro="8" NumFinca="7148454"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7804860"/>
    <ConceptoCobroVersusPropiedad idcobro="7" NumFinca="1545327"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7810652"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1596904"/>
    <CambioPropiedad NumFinca="4400689" NuevoValor="4824953"/>
  </OperacionDia>
  <OperacionDia fecha="2020-02-29">
	</OperacionDia>
  <OperacionDia fecha="2020-03-01">
	</OperacionDia>
  <OperacionDia fecha="2020-03-02">
    <Propiedad NumFinca="4515090" Valor="52548750.00" Direccion="450m Oeste y 45 m Sur del Cementerio de Aguas Zarcas, o 45 m Sur de cabinas Adonay, lote al fondo de servidumbre de paso"/>
    <Propiedad NumFinca="7864479" Valor="41059924.00" Direccion="Urbanización Walter Céspedes, de la esquina Noroeste de parque infantil, 30 m Este, casa sobre pilotes"/>
    <Propiedad NumFinca="2463803" Valor="9500917.00" Direccion="María Auxiliadora, Condominio Vertical Residencial Comercial Campo Alto, Edificio # 3, Finca Filial # 20 Ubicado en quinto piso"/>
    <Propiedad NumFinca="3623306" Valor="34340007.00" Direccion="Las Virtudes De la plaza de deportes, aproximadamente 800 m al noreste"/>
    <Propiedad NumFinca="7965590" Valor="21543802.00" Direccion="Barrio Nazareth, Urbanización La Sole, etapa dos"/>
    <Propietario Nombre="ANA KENNEDY RUSSELL" TipoDocIdentidad="1" identificacion="115240973"/>
    <Propietario Nombre="JOSE DAVID MADRIGAL CHAVES" TipoDocIdentidad="1" identificacion="114990434"/>
    <PropiedadVersusPropietario NumFinca="4515090" identificacion="115240973"/>
    <PropiedadVersusPropietario NumFinca="7864479" identificacion="115240973"/>
    <PropiedadVersusPropietario NumFinca="2463803" identificacion="114990434"/>
    <PropiedadVersusPropietario NumFinca="3623306" identificacion="114990434"/>
    <PropiedadVersusPropietario NumFinca="7965590" identificacion="114990434"/>
    <Usuario Nombre="SMiranda" password="wU6kB" tipo= "cliente"/>
    <UsuarioVersusPropiedad NumFinca="7864479" nombreUsuario="SMiranda"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4515090"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7864479"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2463803"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3623306"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7965590"/>
    <CambioPropiedad NumFinca="3178673" NuevoValor="7907648"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-03">
    <Propiedad NumFinca="3093591" Valor="11309035" Direccion=" Río Camarón, 181 m Norte."/>
    <Propiedad NumFinca="8573120" Valor="14713320" Direccion=" UNA, 336 m Noreste."/>
    <Propiedad NumFinca="5998719" Valor="19511407" Direccion="San Gerardo, 349 m Sureste."/>
    <Propiedad NumFinca="6838727" Valor="17488658" Direccion=" Maxi Pali, 843 m Sureste."/>
    <Propiedad NumFinca="8154453" Valor="24943313" Direccion="Hacienda Vieja, 396 m Este."/>
    <Propietario Nombre="Nerea Moreno Plaza" TipoDocIdentidad="1" identificacion="229895268"/>
    <Propietario Nombre="Javier Navarro Dominguez" TipoDocIdentidad="1" identificacion="665547705"/>
    <Propietario Nombre="Alma Anton Cruz" TipoDocIdentidad="1" identificacion="717193928"/>
    <Propietario Nombre="Ainhoa Leon Camacho" TipoDocIdentidad="1" identificacion="621025456"/>
    <Propietario Nombre="Lucas Alonso Sancho" TipoDocIdentidad="1" identificacion="632152474"/>
    <PropiedadVersusPropietario NumFinca="3093591" identificacion="229895268"/>
    <PropiedadVersusPropietario NumFinca="8573120" identificacion="665547705"/>
    <PropiedadVersusPropietario NumFinca="5998719" identificacion="717193928"/>
    <PropiedadVersusPropietario NumFinca="6838727" identificacion="621025456"/>
    <PropiedadVersusPropietario NumFinca="8154453" identificacion="632152474"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3093591"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="8573120"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5998719"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6838727"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8154453"/>
    <CambioPropiedad NumFinca="4901706" NuevoValor="13977608"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-04">
    <Propiedad NumFinca="4663528" Valor="8718453" Direccion="Iglesia Católica de Cartago Norte, 584 m Suroeste."/>
    <Propiedad NumFinca="4514551" Valor="5212631" Direccion="Santa Rosa, 63 m Este."/>
    <Propiedad NumFinca="7631082" Valor="13394075" Direccion=" La fuente central, 809 m Sureste."/>
    <Propiedad NumFinca="7229874" Valor="24395347" Direccion="La Francia, 338 m Noroeste."/>
    <Propiedad NumFinca="7494272" Valor="3181957" Direccion="ITEC, 865 m Suroeste."/>
    <Propiedad NumFinca="1075105" Valor="20902592" Direccion="Plantel de COPRESA, 447 m Noroeste."/>
    <Propiedad NumFinca="5590052" Valor="19199881" Direccion=" Contrasuli, 818 m Suroeste."/>
    <Propiedad NumFinca="7661654" Valor="11233999" Direccion="Brasil de Mora, 222 m Suroeste."/>
    <Propiedad NumFinca="8271399" Valor="25262104" Direccion=" Fresh Markert, 478 m Suroeste."/>
    <Propiedad NumFinca="5759986" Valor="26525204" Direccion=" MasxMenos, 822 m Oeste."/>
    <Propiedad NumFinca="6732750" Valor="13017768" Direccion="Cuestillas, 207 m Noroeste."/>
    <Propiedad NumFinca="9324439" Valor="26449627" Direccion="Rio Azul, 354 m Sureste."/>
    <Propiedad NumFinca="7055500" Valor="20950142" Direccion="Corazón de Jesús, 737 m Noreste."/>
    <Propiedad NumFinca="3487316" Valor="13743513" Direccion=" MasxMenos, 724 m Noroeste."/>
    <Propiedad NumFinca="5649015" Valor="25447239" Direccion=" Iglecia Los capuchinos, 873 m Suroeste."/>
    <Propietario Nombre="Oliver Mendoza Gracia" TipoDocIdentidad="2" identificacion="817437298"/>
    <Propietario Nombre="Claudia Rosa Herrera" TipoDocIdentidad="1" identificacion="695123386"/>
    <Propietario Nombre="Alberto Ortiz Salvador" TipoDocIdentidad="1" identificacion="528135168"/>
    <Propietario Nombre="María Rico Hidalgo" TipoDocIdentidad="1" identificacion="247338297"/>
    <Propietario Nombre="Héctor Mendez Nuñez" TipoDocIdentidad="1" identificacion="342466915"/>
    <Propietario Nombre="Aitor Merino Paz" TipoDocIdentidad="1" identificacion="155602586"/>
    <Propietario Nombre="Gabriel Merino Garcia" TipoDocIdentidad="1" identificacion="757428200"/>
    <Propietario Nombre="Antonio Crespo Roman" TipoDocIdentidad="1" identificacion="757884421"/>
    <Propietario Nombre="Valeria Vargas Guillen" TipoDocIdentidad="1" identificacion="589765545"/>
    <Propietario Nombre="Sofía Sierra Lorenzo" TipoDocIdentidad="1" identificacion="319689273"/>
    <Propietario Nombre="Marcos Iglesias Miranda" TipoDocIdentidad="1" identificacion="764293031"/>
    <Propietario Nombre="Samuel Ortega Bueno" TipoDocIdentidad="1" identificacion="583379316"/>
    <Propietario Nombre="Marta Franco Prado" TipoDocIdentidad="1" identificacion="356569179"/>
    <Propietario Nombre="Samuel Fuente Arias" TipoDocIdentidad="1" identificacion="508533438"/>
    <Propietario Nombre="Iker Carrillo Menendez" TipoDocIdentidad="1" identificacion="364027462"/>
    <PropiedadVersusPropietario NumFinca="4663528" identificacion="817437298"/>
    <PropiedadVersusPropietario NumFinca="4514551" identificacion="695123386"/>
    <PropiedadVersusPropietario NumFinca="7631082" identificacion="528135168"/>
    <PropiedadVersusPropietario NumFinca="7229874" identificacion="247338297"/>
    <PropiedadVersusPropietario NumFinca="7494272" identificacion="342466915"/>
    <PropiedadVersusPropietario NumFinca="1075105" identificacion="155602586"/>
    <PropiedadVersusPropietario NumFinca="5590052" identificacion="757428200"/>
    <PropiedadVersusPropietario NumFinca="7661654" identificacion="757884421"/>
    <PropiedadVersusPropietario NumFinca="8271399" identificacion="589765545"/>
    <PropiedadVersusPropietario NumFinca="5759986" identificacion="319689273"/>
    <PropiedadVersusPropietario NumFinca="6732750" identificacion="764293031"/>
    <PropiedadVersusPropietario NumFinca="9324439" identificacion="583379316"/>
    <PropiedadVersusPropietario NumFinca="7055500" identificacion="356569179"/>
    <PropiedadVersusPropietario NumFinca="3487316" identificacion="508533438"/>
    <PropiedadVersusPropietario NumFinca="5649015" identificacion="364027462"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4663528"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4514551"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7631082"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7229874"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7494272"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1075105"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5590052"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7661654"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8271399"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5759986"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6732750"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9324439"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7055500"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3487316"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5649015"/>
    <CambioPropiedad NumFinca="1527660" NuevoValor="7900935"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-05">
    <Propiedad NumFinca="2450807" Valor="23343685" Direccion=" La fuente central, 950 m Noroeste."/>
    <Propiedad NumFinca="2660360" Valor="25013580" Direccion="Las Cascadas, 242 m Suroeste."/>
    <Propiedad NumFinca="5368476" Valor="29130853" Direccion="Soda el Higueron, 483 m Norte."/>
    <Propietario Nombre="Eric Diez Nieto" TipoDocIdentidad="1" identificacion="597143493"/>
    <Propietario Nombre="Alejandra Muñoz De La Fuente" TipoDocIdentidad="1" identificacion="660083023"/>
    <Propietario Nombre="Valentina Herrero Iglesias" TipoDocIdentidad="1" identificacion="707975669"/>
    <PropiedadVersusPropietario NumFinca="2450807" identificacion="597143493"/>
    <PropiedadVersusPropietario NumFinca="2660360" identificacion="660083023"/>
    <PropiedadVersusPropietario NumFinca="5368476" identificacion="707975669"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2450807"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2660360"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5368476"/>
    <CambioPropiedad NumFinca="1667419" NuevoValor="12178022"/>
    <Pago TipoRecibo="5" NumFinca="4158692"/>
    <Pago TipoRecibo="5" NumFinca="9782331"/>
    <Pago TipoRecibo="5" NumFinca="2186347"/>
    <Pago TipoRecibo="5" NumFinca="1394522"/>
    <Pago TipoRecibo="5" NumFinca="4121713"/>
    <Pago TipoRecibo="5" NumFinca="1423800"/>
    <Pago TipoRecibo="5" NumFinca="1659333"/>
    <Pago TipoRecibo="5" NumFinca="6516190"/>
    <Pago TipoRecibo="5" NumFinca="6147839"/>
    <Pago TipoRecibo="5" NumFinca="7981775"/>
    <Pago TipoRecibo="5" NumFinca="4182442"/>
    <Pago TipoRecibo="5" NumFinca="1236736"/>
    <Pago TipoRecibo="5" NumFinca="7393203"/>
    <Pago TipoRecibo="5" NumFinca="3958319"/>
    <Pago TipoRecibo="5" NumFinca="3158340"/>
    <Pago TipoRecibo="5" NumFinca="9582939"/>
    <Pago TipoRecibo="5" NumFinca="6374877"/>
    <Pago TipoRecibo="5" NumFinca="7733971"/>
    <Pago TipoRecibo="5" NumFinca="2499250"/>
    <Pago TipoRecibo="5" NumFinca="2108129"/>
    <Pago TipoRecibo="5" NumFinca="1528789"/>
    <Pago TipoRecibo="5" NumFinca="7799701"/>
    <Pago TipoRecibo="5" NumFinca="5359919"/>
    <Pago TipoRecibo="5" NumFinca="6163924"/>
    <Pago TipoRecibo="5" NumFinca="6696849"/>
    <Pago TipoRecibo="5" NumFinca="5677891"/>
    <Pago TipoRecibo="5" NumFinca="7825963"/>
    <Pago TipoRecibo="5" NumFinca="8573120"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-06">
    <Propiedad NumFinca="4805505" Valor="26660693" Direccion="Urbanización La Fundación, 332 m Sureste."/>
    <Propiedad NumFinca="4081887" Valor="19300029" Direccion="Soda la Paz, 66 m Este."/>
    <Propiedad NumFinca="1041312" Valor="17567803" Direccion="Orotina, 864 m Norte."/>
    <Propiedad NumFinca="2580485" Valor="22441075" Direccion="Rio Azul, 385 m Norte."/>
    <Propiedad NumFinca="3958792" Valor="25554260" Direccion="San Joser, 408 m Sur."/>
    <Propiedad NumFinca="4184842" Valor="15640516" Direccion="Santa Rosa, 647 m Sur."/>
    <Propiedad NumFinca="3558821" Valor="24243836" Direccion="Orotina, 698 m Norte."/>
    <Propiedad NumFinca="3336538" Valor="18575734" Direccion="Banco Nacional, 802 m Sureste."/>
    <Propietario Nombre="Víctor Hernandez Espinosa" TipoDocIdentidad="1" identificacion="366106147"/>
    <Propietario Nombre="Marina Vega Herrero" TipoDocIdentidad="1" identificacion="770521716"/>
    <Propietario Nombre="Carlos Vila Lorenzo" TipoDocIdentidad="1" identificacion="259716025"/>
    <Propietario Nombre="Samuel Villanueva Parra" TipoDocIdentidad="1" identificacion="380547567"/>
    <Propietario Nombre="Nerea Herrera Romero" TipoDocIdentidad="1" identificacion="393419391"/>
    <Propietario Nombre="Ainhoa Campo Moya" TipoDocIdentidad="1" identificacion="337494141"/>
    <Propietario Nombre="Daniela Cruz Salas" TipoDocIdentidad="1" identificacion="538060379"/>
    <Propietario Nombre="Lucía Moya Marin" TipoDocIdentidad="2" identificacion="864087035"/>
    <PropiedadVersusPropietario NumFinca="4805505" identificacion="366106147"/>
    <PropiedadVersusPropietario NumFinca="4081887" identificacion="770521716"/>
    <PropiedadVersusPropietario NumFinca="1041312" identificacion="259716025"/>
    <PropiedadVersusPropietario NumFinca="2580485" identificacion="380547567"/>
    <PropiedadVersusPropietario NumFinca="3958792" identificacion="393419391"/>
    <PropiedadVersusPropietario NumFinca="4184842" identificacion="337494141"/>
    <PropiedadVersusPropietario NumFinca="3558821" identificacion="538060379"/>
    <PropiedadVersusPropietario NumFinca="3336538" identificacion="864087035"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4805505"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4081887"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1041312"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2580485"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3958792"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4184842"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3558821"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3336538"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-07">
    <TransConsumo id="1" LecturaM3="397" descripcion="Cobro Mensual" NumFinca="1176180"/>
    <TransConsumo id="1" LecturaM3="470" descripcion="Cobro Mensual" NumFinca="1394522"/>
    <Pago TipoRecibo="4" NumFinca="2246405"/>
    <Pago TipoRecibo="4" NumFinca="1176180"/>
    <Pago TipoRecibo="4" NumFinca="1394522"/>
    <Pago TipoRecibo="4" NumFinca="4121713"/>
    <Pago TipoRecibo="4" NumFinca="1420570"/>
    <Pago TipoRecibo="4" NumFinca="1423800"/>
    <Pago TipoRecibo="4" NumFinca="2291223"/>
    <Pago TipoRecibo="4" NumFinca="9005997"/>
    <Pago TipoRecibo="4" NumFinca="8104368"/>
    <Pago TipoRecibo="4" NumFinca="1551601"/>
    <Pago TipoRecibo="4" NumFinca="4867842"/>
    <Pago TipoRecibo="4" NumFinca="6584320"/>
    <Pago TipoRecibo="4" NumFinca="7605510"/>
    <Pago TipoRecibo="4" NumFinca="7632960"/>
    <Pago TipoRecibo="4" NumFinca="7738110"/>
    <Pago TipoRecibo="4" NumFinca="1538868"/>
    <Pago TipoRecibo="4" NumFinca="7787120"/>
    <Pago TipoRecibo="4" NumFinca="1104650"/>
    <Pago TipoRecibo="4" NumFinca="9829237"/>
    <Pago TipoRecibo="4" NumFinca="2029555"/>
    <Pago TipoRecibo="4" NumFinca="7810652"/>
    <Pago TipoRecibo="4" NumFinca="7864479"/>
    <Pago TipoRecibo="4" NumFinca="3093591"/>
    <Pago TipoRecibo="4" NumFinca="7055500"/>
    <Pago TipoRecibo="4" NumFinca="2660360"/>
    <Pago TipoRecibo="4" NumFinca="5368476"/>
    <Pago TipoRecibo="4" NumFinca="4081887"/>
    <Pago TipoRecibo="4" NumFinca="4184842"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-08">
	</OperacionDia>
  <OperacionDia fecha="2020-03-09">
    <Propiedad NumFinca="4786459" Valor="16075458" Direccion=" Hospital Central, 173 m Noreste."/>
    <Propiedad NumFinca="7833848" Valor="15164474" Direccion=" Fresh Markert, 347 m Noreste."/>
    <Propiedad NumFinca="9406874" Valor="22059278" Direccion=" La fuente central, 608 m Este."/>
    <Propiedad NumFinca="9860743" Valor="24334021" Direccion="Calle Vargas, 120 m Oeste."/>
    <Propiedad NumFinca="3419006" Valor="17319326" Direccion=" Contrasuli, 873 m Norte."/>
    <Propiedad NumFinca="9760688" Valor="19396509" Direccion="La Giralda, 678 m Este."/>
    <Propietario Nombre="Lucía Rico Herrera" TipoDocIdentidad="2" identificacion="818969615"/>
    <Propietario Nombre="Mía Alonso Rosa" TipoDocIdentidad="1" identificacion="327901834"/>
    <Propietario Nombre="Inés Rodriguez Manzano" TipoDocIdentidad="1" identificacion="353050895"/>
    <Propietario Nombre="Javier Roca Montero" TipoDocIdentidad="1" identificacion="586127928"/>
    <Propietario Nombre="Sofía Navarro Gallego" TipoDocIdentidad="1" identificacion="372898419"/>
    <Propietario Nombre="Antonio Flores Miranda" TipoDocIdentidad="1" identificacion="778747636"/>
    <PropiedadVersusPropietario NumFinca="4786459" identificacion="818969615"/>
    <PropiedadVersusPropietario NumFinca="7833848" identificacion="327901834"/>
    <PropiedadVersusPropietario NumFinca="9406874" identificacion="353050895"/>
    <PropiedadVersusPropietario NumFinca="9860743" identificacion="586127928"/>
    <PropiedadVersusPropietario NumFinca="3419006" identificacion="372898419"/>
    <PropiedadVersusPropietario NumFinca="9760688" identificacion="778747636"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4786459"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7833848"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9406874"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9860743"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3419006"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9760688"/>
    <CambioPropiedad NumFinca="1858970" NuevoValor="59381164"/>
    <Pago TipoRecibo="7" NumFinca="1423800"/>
    <Pago TipoRecibo="7" NumFinca="1393022"/>
    <Pago TipoRecibo="7" NumFinca="1579482"/>
    <Pago TipoRecibo="7" NumFinca="2239600"/>
    <Pago TipoRecibo="7" NumFinca="1545327"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-10">
    <Propiedad NumFinca="6792148" Valor="8861386" Direccion="San Joser, 350 m Norte."/>
    <Propiedad NumFinca="9358386" Valor="22868551" Direccion="Las Cascadas, 329 m Sur."/>
    <Propiedad NumFinca="7416445" Valor="4467045" Direccion="Astua Pirie, 560 m Sureste."/>
    <Propiedad NumFinca="7748824" Valor="20416041" Direccion="Hacienda Vieja, 504 m Este."/>
    <Propiedad NumFinca="8698761" Valor="21028940" Direccion="Astua Pirie, 42 m Suroeste."/>
    <Propiedad NumFinca="6914115" Valor="26955110" Direccion=" Contrasuli, 545 m Oeste."/>
    <Propiedad NumFinca="6832824" Valor="6338878" Direccion="Cuestillas, 286 m Sur."/>
    <Propiedad NumFinca="5434825" Valor="9857665" Direccion="Calle Vargas, 379 m Sur."/>
    <Propiedad NumFinca="5185877" Valor="23223316" Direccion="Bri-Bri Centro, 146 m Sur."/>
    <Propiedad NumFinca="6715187" Valor="16999891" Direccion=" UNA, 909 m Oeste."/>
    <Propiedad NumFinca="4325136" Valor="5011491" Direccion=" Contrasuli, 154 m Oeste."/>
    <Propiedad NumFinca="2510451" Valor="24314280" Direccion="ITEC, 860 m Sureste."/>
    <Propiedad NumFinca="8583838" Valor="28852243" Direccion="Iglesia Católica de Cartago Norte, 710 m Este."/>
    <Propietario Nombre="Emma Otero Estevez" TipoDocIdentidad="1" identificacion="593457545"/>
    <Propietario Nombre="Guillermo Contreras Vicente" TipoDocIdentidad="1" identificacion="798605186"/>
    <Propietario Nombre="Carlota De La Fuente Nuñez" TipoDocIdentidad="1" identificacion="398316111"/>
    <Propietario Nombre="Eric Prieto Carrillo" TipoDocIdentidad="1" identificacion="124126854"/>
    <Propietario Nombre="Blanca Vila Salvador" TipoDocIdentidad="1" identificacion="236052291"/>
    <Propietario Nombre="Juan Gimenez Puente" TipoDocIdentidad="1" identificacion="472210723"/>
    <Propietario Nombre="Jimena Nuñez Benito" TipoDocIdentidad="1" identificacion="684757702"/>
    <Propietario Nombre="Chloe Campo Vazquez" TipoDocIdentidad="1" identificacion="180688740"/>
    <Propietario Nombre="Blanca Castillo Rios" TipoDocIdentidad="1" identificacion="201698496"/>
    <Propietario Nombre="Claudia Flores Marti" TipoDocIdentidad="1" identificacion="653441496"/>
    <Propietario Nombre="Mía Villar Caballero" TipoDocIdentidad="1" identificacion="572506930"/>
    <Propietario Nombre="Álvaro Lazaro Benitez" TipoDocIdentidad="1" identificacion="725786604"/>
    <Propietario Nombre="Rubén Fuentes Valle" TipoDocIdentidad="1" identificacion="150524027"/>
    <PropiedadVersusPropietario NumFinca="6792148" identificacion="593457545"/>
    <PropiedadVersusPropietario NumFinca="9358386" identificacion="798605186"/>
    <PropiedadVersusPropietario NumFinca="7416445" identificacion="398316111"/>
    <PropiedadVersusPropietario NumFinca="7748824" identificacion="124126854"/>
    <PropiedadVersusPropietario NumFinca="8698761" identificacion="236052291"/>
    <PropiedadVersusPropietario NumFinca="6914115" identificacion="472210723"/>
    <PropiedadVersusPropietario NumFinca="6832824" identificacion="684757702"/>
    <PropiedadVersusPropietario NumFinca="5434825" identificacion="180688740"/>
    <PropiedadVersusPropietario NumFinca="5185877" identificacion="201698496"/>
    <PropiedadVersusPropietario NumFinca="6715187" identificacion="653441496"/>
    <PropiedadVersusPropietario NumFinca="4325136" identificacion="572506930"/>
    <PropiedadVersusPropietario NumFinca="2510451" identificacion="725786604"/>
    <PropiedadVersusPropietario NumFinca="8583838" identificacion="150524027"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6792148"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9358386"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7416445"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7748824"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8698761"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6914115"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6832824"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5434825"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5185877"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6715187"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4325136"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2510451"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8583838"/>
    <TransConsumo id="1" LecturaM3="309" descripcion="Cobro Mensual" NumFinca="1750401"/>
    <TransConsumo id="1" LecturaM3="396" descripcion="Cobro Mensual" NumFinca="4121713"/>
    <TransConsumo id="1" LecturaM3="320" descripcion="Cobro Mensual" NumFinca="1605224"/>
    <TransConsumo id="1" LecturaM3="459" descripcion="Cobro Mensual" NumFinca="1423800"/>
    <TransConsumo id="1" LecturaM3="435" descripcion="Cobro Mensual" NumFinca="1568495"/>
    <TransConsumo id="1" LecturaM3="482" descripcion="Cobro Mensual" NumFinca="2291223"/>
    <TransConsumo id="2" LecturaM3="19" descripcion="Reclamo de cliente" NumFinca="1750401"/>
    <Pago TipoRecibo="8" NumFinca="1420570"/>
    <Pago TipoRecibo="8" NumFinca="2425954"/>
    <Pago TipoRecibo="8" NumFinca="1339574"/>
    <Pago TipoRecibo="8" NumFinca="7148454"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-11">
    <Propiedad NumFinca="3159179" Valor="4094749" Direccion="El Alto, 679 m Este."/>
    <Propiedad NumFinca="7321231" Valor="11636733" Direccion="San Felipe, 228 m Noreste."/>
    <Propiedad NumFinca="3312213" Valor="22071385" Direccion="ITEC, 773 m Oeste."/>
    <Propietario Nombre="Clara Rojo Rivas" TipoDocIdentidad="1" identificacion="678165325"/>
    <Propietario Nombre="Jimena Tomas Vila" TipoDocIdentidad="1" identificacion="199694941"/>
    <Propietario Nombre="Nicolás Ruiz Rueda" TipoDocIdentidad="1" identificacion="346416412"/>
    <PropiedadVersusPropietario NumFinca="3159179" identificacion="678165325"/>
    <PropiedadVersusPropietario NumFinca="7321231" identificacion="199694941"/>
    <PropiedadVersusPropietario NumFinca="3312213" identificacion="346416412"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3159179"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7321231"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3312213"/>
    <TransConsumo id="1" LecturaM3="497" descripcion="Cobro Mensual" NumFinca="4782873"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-12">
    <Propiedad NumFinca="3610606" Valor="3479049" Direccion=" Maxi Pali, 576 m Suroeste."/>
    <Propiedad NumFinca="3598213" Valor="20994381" Direccion="Bri-Bri Centro, 837 m Sureste."/>
    <Propiedad NumFinca="9597064" Valor="9161641" Direccion="Soda el Higueron, 761 m Suroeste."/>
    <Propiedad NumFinca="9365866" Valor="11075190" Direccion="Soda el Higueron, 653 m Suroeste."/>
    <Propiedad NumFinca="3407892" Valor="16277519" Direccion="Bar las delicias, 569 m Noreste."/>
    <Propiedad NumFinca="8558350" Valor="27055691" Direccion=" Fresh Markert, 408 m Noreste."/>
    <Propietario Nombre="Julia Bernal Moya" TipoDocIdentidad="1" identificacion="405622304"/>
    <Propietario Nombre="Oliver Ferrer Cuesta" TipoDocIdentidad="1" identificacion="583038121"/>
    <Propietario Nombre="Miguel Arias Pereira" TipoDocIdentidad="1" identificacion="245869091"/>
    <Propietario Nombre="Gabriel Soler Rubio" TipoDocIdentidad="2" identificacion="810235271"/>
    <Propietario Nombre="Ariadna Campos Lorenzo" TipoDocIdentidad="1" identificacion="262806626"/>
    <Propietario Nombre="Nicolás Castaño Otero" TipoDocIdentidad="1" identificacion="648548127"/>
    <PropiedadVersusPropietario NumFinca="3610606" identificacion="405622304"/>
    <PropiedadVersusPropietario NumFinca="3598213" identificacion="583038121"/>
    <PropiedadVersusPropietario NumFinca="9597064" identificacion="245869091"/>
    <PropiedadVersusPropietario NumFinca="9365866" identificacion="810235271"/>
    <PropiedadVersusPropietario NumFinca="3407892" identificacion="262806626"/>
    <PropiedadVersusPropietario NumFinca="8558350" identificacion="648548127"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3610606"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3598213"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9597064"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9365866"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3407892"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8558350"/>
    <CambioPropiedad NumFinca="8698761" NuevoValor="24263129"/>
    <TransConsumo id="1" LecturaM3="445" descripcion="Cobro Mensual" NumFinca="6325448"/>
    <TransConsumo id="1" LecturaM3="424" descripcion="Cobro Mensual" NumFinca="6766683"/>
    <TransConsumo id="1" LecturaM3="433" descripcion="Cobro Mensual" NumFinca="6736147"/>
    <Pago TipoRecibo="3" NumFinca="6526774"/>
    <Pago TipoRecibo="3" NumFinca="2888543"/>
    <Pago TipoRecibo="3" NumFinca="4569644"/>
    <Pago TipoRecibo="3" NumFinca="1714464"/>
    <Pago TipoRecibo="3" NumFinca="1176180"/>
    <Pago TipoRecibo="3" NumFinca="1394522"/>
    <Pago TipoRecibo="3" NumFinca="1423800"/>
    <Pago TipoRecibo="3" NumFinca="2291223"/>
    <Pago TipoRecibo="3" NumFinca="9907089"/>
    <Pago TipoRecibo="3" NumFinca="4828218"/>
    <Pago TipoRecibo="3" NumFinca="7539590"/>
    <Pago TipoRecibo="3" NumFinca="1212294"/>
    <Pago TipoRecibo="3" NumFinca="1476188"/>
    <Pago TipoRecibo="3" NumFinca="4182870"/>
    <Pago TipoRecibo="3" NumFinca="2734696"/>
    <Pago TipoRecibo="3" NumFinca="8743195"/>
    <Pago TipoRecibo="3" NumFinca="9072945"/>
    <Pago TipoRecibo="3" NumFinca="9538337"/>
    <Pago TipoRecibo="3" NumFinca="7238495"/>
    <Pago TipoRecibo="3" NumFinca="4184252"/>
    <Pago TipoRecibo="3" NumFinca="4193112"/>
    <Pago TipoRecibo="3" NumFinca="6527953"/>
    <Pago TipoRecibo="3" NumFinca="9380786"/>
    <Pago TipoRecibo="3" NumFinca="7991150"/>
    <Pago TipoRecibo="3" NumFinca="7762610"/>
    <Pago TipoRecibo="3" NumFinca="2789388"/>
    <Pago TipoRecibo="3" NumFinca="9082340"/>
    <Pago TipoRecibo="3" NumFinca="9363951"/>
    <Pago TipoRecibo="3" NumFinca="8076596"/>
    <Pago TipoRecibo="3" NumFinca="9944467"/>
    <Pago TipoRecibo="3" NumFinca="8717485"/>
    <Pago TipoRecibo="3" NumFinca="8500064"/>
    <Pago TipoRecibo="3" NumFinca="2407485"/>
    <Pago TipoRecibo="3" NumFinca="2360478"/>
    <Pago TipoRecibo="3" NumFinca="2281645"/>
    <Pago TipoRecibo="3" NumFinca="3623306"/>
    <Pago TipoRecibo="3" NumFinca="6838727"/>
    <Pago TipoRecibo="3" NumFinca="8154453"/>
    <Pago TipoRecibo="3" NumFinca="5759986"/>
    <Pago TipoRecibo="3" NumFinca="2450807"/>
    <Pago TipoRecibo="3" NumFinca="9358386"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-13">
    <Propiedad NumFinca="6727257" Valor="29138991" Direccion="Bar las delicias, 528 m Noroeste."/>
    <Propiedad NumFinca="4308732" Valor="19553984" Direccion=" La fuente central, 160 m Noroeste."/>
    <Propietario Nombre="Enzo Cuesta Cabrera" TipoDocIdentidad="1" identificacion="452350467"/>
    <Propietario Nombre="Ainara Bravo Vazquez" TipoDocIdentidad="1" identificacion="315840790"/>
    <PropiedadVersusPropietario NumFinca="6727257" identificacion="452350467"/>
    <PropiedadVersusPropietario NumFinca="4308732" identificacion="315840790"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6727257"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4308732"/>
    <TransConsumo id="1" LecturaM3="336" descripcion="Cobro Mensual" NumFinca="1858970"/>
    <TransConsumo id="1" LecturaM3="419" descripcion="Cobro Mensual" NumFinca="2101885"/>
    <TransConsumo id="2" LecturaM3="27" descripcion="Reclamo de cliente" NumFinca="2291223"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-14">
    <TransConsumo id="1" LecturaM3="495" descripcion="Cobro Mensual" NumFinca="6722024"/>
    <TransConsumo id="1" LecturaM3="416" descripcion="Cobro Mensual" NumFinca="5310895"/>
    <TransConsumo id="1" LecturaM3="448" descripcion="Cobro Mensual" NumFinca="3443064"/>
    <TransConsumo id="1" LecturaM3="422" descripcion="Cobro Mensual" NumFinca="7254630"/>
    <TransConsumo id="1" LecturaM3="345" descripcion="Cobro Mensual" NumFinca="3901661"/>
    <TransConsumo id="1" LecturaM3="394" descripcion="Cobro Mensual" NumFinca="6883678"/>
    <TransConsumo id="2" LecturaM3="33" descripcion="Reclamo de cliente" NumFinca="6736147"/>
    <Pago TipoRecibo="2" NumFinca="3178673"/>
    <Pago TipoRecibo="2" NumFinca="1424417"/>
    <Pago TipoRecibo="2" NumFinca="1176180"/>
    <Pago TipoRecibo="2" NumFinca="1394522"/>
    <Pago TipoRecibo="2" NumFinca="1750401"/>
    <Pago TipoRecibo="2" NumFinca="4121713"/>
    <Pago TipoRecibo="2" NumFinca="1423800"/>
    <Pago TipoRecibo="2" NumFinca="2291223"/>
    <Pago TipoRecibo="2" NumFinca="5694094"/>
    <Pago TipoRecibo="2" NumFinca="7301730"/>
    <Pago TipoRecibo="2" NumFinca="3081243"/>
    <Pago TipoRecibo="2" NumFinca="7929322"/>
    <Pago TipoRecibo="2" NumFinca="5086841"/>
    <Pago TipoRecibo="2" NumFinca="1201330"/>
    <Pago TipoRecibo="2" NumFinca="6215848"/>
    <Pago TipoRecibo="2" NumFinca="9373199"/>
    <Pago TipoRecibo="2" NumFinca="7253078"/>
    <Pago TipoRecibo="2" NumFinca="6741380"/>
    <Pago TipoRecibo="2" NumFinca="8719164"/>
    <Pago TipoRecibo="2" NumFinca="1514282"/>
    <Pago TipoRecibo="2" NumFinca="2205723"/>
    <Pago TipoRecibo="2" NumFinca="6531847"/>
    <Pago TipoRecibo="2" NumFinca="1298862"/>
    <Pago TipoRecibo="2" NumFinca="3130126"/>
    <Pago TipoRecibo="2" NumFinca="5109920"/>
    <Pago TipoRecibo="2" NumFinca="1247220"/>
    <Pago TipoRecibo="2" NumFinca="1130552"/>
    <Pago TipoRecibo="2" NumFinca="4515090"/>
    <Pago TipoRecibo="2" NumFinca="2463803"/>
    <Pago TipoRecibo="2" NumFinca="7965590"/>
    <Pago TipoRecibo="2" NumFinca="4514551"/>
    <Pago TipoRecibo="2" NumFinca="7229874"/>
    <Pago TipoRecibo="2" NumFinca="1075105"/>
    <Pago TipoRecibo="2" NumFinca="7661654"/>
    <Pago TipoRecibo="2" NumFinca="4805505"/>
    <Pago TipoRecibo="2" NumFinca="1041312"/>
    <Pago TipoRecibo="2" NumFinca="4786459"/>
    <Pago TipoRecibo="2" NumFinca="9406874"/>
    <Pago TipoRecibo="2" NumFinca="9860743"/>
    <Pago TipoRecibo="2" NumFinca="6792148"/>
    <Pago TipoRecibo="2" NumFinca="7416445"/>
    <Pago TipoRecibo="2" NumFinca="7748824"/>
    <Pago TipoRecibo="2" NumFinca="5434825"/>
    <Pago TipoRecibo="2" NumFinca="3598213"/>
    <Pago TipoRecibo="2" NumFinca="9597064"/>
    <Pago TipoRecibo="2" NumFinca="3407892"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-15">
	</OperacionDia>
  <OperacionDia fecha="2020-03-16">
    <Propiedad NumFinca="1523587" Valor="8437328" Direccion="Banco Nacional, 427 m Noreste."/>
    <Propiedad NumFinca="7029032" Valor="24815983" Direccion=" Iglecia Los capuchinos, 25 m Oeste."/>
    <Propiedad NumFinca="8088162" Valor="24934997" Direccion=" La Paz, 919 m Suroeste."/>
    <Propiedad NumFinca="9597151" Valor="29031131" Direccion="Orotina, 722 m Noroeste."/>
    <Propiedad NumFinca="7021501" Valor="11928339" Direccion=" La Paz, 213 m Sur."/>
    <Propiedad NumFinca="3745857" Valor="9124883" Direccion="Bar las delicias, 373 m Noroeste."/>
    <Propiedad NumFinca="9320206" Valor="3763737" Direccion="Bri-Bri Centro, 94 m Este."/>
    <Propiedad NumFinca="7651166" Valor="16524452" Direccion="San Gerardo, 459 m Este."/>
    <Propietario Nombre="Pablo Franco Caballero" TipoDocIdentidad="1" identificacion="774823359"/>
    <Propietario Nombre="Ariadna Simon Moreno" TipoDocIdentidad="1" identificacion="443499019"/>
    <Propietario Nombre="Eric Lopez Carrillo" TipoDocIdentidad="1" identificacion="291568936"/>
    <Propietario Nombre="Leo Robles Mora" TipoDocIdentidad="1" identificacion="614705659"/>
    <Propietario Nombre="Blanca Bernal Rojo" TipoDocIdentidad="1" identificacion="524816654"/>
    <Propietario Nombre="Adrián Otero Rojo" TipoDocIdentidad="1" identificacion="355741728"/>
    <Propietario Nombre="Juan Martin Torres" TipoDocIdentidad="2" identificacion="843156329"/>
    <Propietario Nombre="Marta Castro Lara" TipoDocIdentidad="2" identificacion="850178007"/>
    <PropiedadVersusPropietario NumFinca="1523587" identificacion="774823359"/>
    <PropiedadVersusPropietario NumFinca="7029032" identificacion="443499019"/>
    <PropiedadVersusPropietario NumFinca="8088162" identificacion="291568936"/>
    <PropiedadVersusPropietario NumFinca="9597151" identificacion="614705659"/>
    <PropiedadVersusPropietario NumFinca="7021501" identificacion="524816654"/>
    <PropiedadVersusPropietario NumFinca="3745857" identificacion="355741728"/>
    <PropiedadVersusPropietario NumFinca="9320206" identificacion="843156329"/>
    <PropiedadVersusPropietario NumFinca="7651166" identificacion="850178007"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1523587"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7029032"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8088162"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9597151"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7021501"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3745857"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9320206"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7651166"/>
    <CambioPropiedad NumFinca="1368271" NuevoValor="11351885"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-17">
    <Propiedad NumFinca="4686808" Valor="20558220" Direccion="Urbanización La Fundación, 91 m Noroeste."/>
    <Propiedad NumFinca="8583828" Valor="8146705" Direccion="Brasil de Mora, 199 m Sur."/>
    <Propietario Nombre="Mía Santamaria Aguilar" TipoDocIdentidad="1" identificacion="201784740"/>
    <Propietario Nombre="Laia Vila Lara" TipoDocIdentidad="2" identificacion="822102039"/>
    <PropiedadVersusPropietario NumFinca="4686808" identificacion="201784740"/>
    <PropiedadVersusPropietario NumFinca="8583828" identificacion="822102039"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4686808"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8583828"/>
    <CambioPropiedad NumFinca="6527953" NuevoValor="22759449"/>
    <TransConsumo id="1" LecturaM3="453" descripcion="Cobro Mensual" NumFinca="2287722"/>
    <Pago TipoRecibo="6" NumFinca="7040783"/>
    <Pago TipoRecibo="6" NumFinca="1042185"/>
    <Pago TipoRecibo="6" NumFinca="4400689"/>
    <Pago TipoRecibo="6" NumFinca="1394522"/>
    <Pago TipoRecibo="6" NumFinca="1750401"/>
    <Pago TipoRecibo="6" NumFinca="4121713"/>
    <Pago TipoRecibo="6" NumFinca="1420570"/>
    <Pago TipoRecibo="6" NumFinca="4162559"/>
    <Pago TipoRecibo="6" NumFinca="2291223"/>
    <Pago TipoRecibo="6" NumFinca="4901706"/>
    <Pago TipoRecibo="6" NumFinca="4896538"/>
    <Pago TipoRecibo="6" NumFinca="4207552"/>
    <Pago TipoRecibo="6" NumFinca="8584160"/>
    <Pago TipoRecibo="6" NumFinca="5308209"/>
    <Pago TipoRecibo="6" NumFinca="1368271"/>
    <Pago TipoRecibo="6" NumFinca="8513969"/>
    <Pago TipoRecibo="6" NumFinca="4987514"/>
    <Pago TipoRecibo="6" NumFinca="2481735"/>
    <Pago TipoRecibo="6" NumFinca="1480840"/>
    <Pago TipoRecibo="6" NumFinca="2103983"/>
    <Pago TipoRecibo="6" NumFinca="4203725"/>
    <Pago TipoRecibo="6" NumFinca="1514445"/>
    <Pago TipoRecibo="6" NumFinca="1527660"/>
    <Pago TipoRecibo="6" NumFinca="2134489"/>
    <Pago TipoRecibo="6" NumFinca="5518445"/>
    <Pago TipoRecibo="6" NumFinca="1230183"/>
    <Pago TipoRecibo="6" NumFinca="7804860"/>
    <Pago TipoRecibo="6" NumFinca="7631082"/>
    <Pago TipoRecibo="6" NumFinca="3487316"/>
    <Pago TipoRecibo="6" NumFinca="3558821"/>
    <Pago TipoRecibo="6" NumFinca="9760688"/>
    <Pago TipoRecibo="6" NumFinca="6914115"/>
    <Pago TipoRecibo="6" NumFinca="7321231"/>
    <Pago TipoRecibo="6" NumFinca="8088162"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-18">
    <Propiedad NumFinca="1257232" Valor="22808376" Direccion=" UNA, 827 m Noreste."/>
    <Propiedad NumFinca="6298656" Valor="20375407" Direccion="San Felipe, 228 m Sur."/>
    <Propiedad NumFinca="1377010" Valor="6097611" Direccion="El Jardín, 72 m Sureste."/>
    <Propiedad NumFinca="4916825" Valor="15185091" Direccion="Santa Rosa, 377 m Oeste."/>
    <Propiedad NumFinca="9984034" Valor="29436198" Direccion="Urbanización La Fundación, 837 m Oeste."/>
    <Propiedad NumFinca="5109436" Valor="18584902" Direccion=" Contrasuli, 683 m Sur."/>
    <Propiedad NumFinca="2371257" Valor="3106060" Direccion=" Lumaca, 363 m Noreste."/>
    <Propiedad NumFinca="3660611" Valor="11081745" Direccion="Urbanización La Fundación, 28 m Sur."/>
    <Propiedad NumFinca="1190024" Valor="27408981" Direccion="San Felipe, 94 m Este."/>
    <Propiedad NumFinca="8569569" Valor="7287902" Direccion=" UNA, 481 m Este."/>
    <Propiedad NumFinca="7878334" Valor="24029667" Direccion="Las Cascadas, 100 m Oeste."/>
    <Propiedad NumFinca="3146361" Valor="5061520" Direccion=" Hospital Central, 167 m Este."/>
    <Propietario Nombre="Daniela Velasco Miguel" TipoDocIdentidad="2" identificacion="893825564"/>
    <Propietario Nombre="Jesús Jimenez Rio" TipoDocIdentidad="1" identificacion="447810455"/>
    <Propietario Nombre="Nerea Arroyo Herrero" TipoDocIdentidad="1" identificacion="173683024"/>
    <Propietario Nombre="Vera Montes Roldan" TipoDocIdentidad="1" identificacion="450824745"/>
    <Propietario Nombre="Marco Navarro Camacho" TipoDocIdentidad="1" identificacion="687971495"/>
    <Propietario Nombre="Víctor Merino Moya" TipoDocIdentidad="1" identificacion="790181390"/>
    <Propietario Nombre="Marco Rio Muñoz" TipoDocIdentidad="1" identificacion="467695522"/>
    <Propietario Nombre="Sara Prieto Diaz" TipoDocIdentidad="1" identificacion="573231545"/>
    <Propietario Nombre="Alejandra Franco Torre" TipoDocIdentidad="1" identificacion="452116029"/>
    <Propietario Nombre="Olivia Vargas Villanueva" TipoDocIdentidad="1" identificacion="473525669"/>
    <Propietario Nombre="Irene Muñoz Galan" TipoDocIdentidad="1" identificacion="724334711"/>
    <Propietario Nombre="Hugo Bermudez De La Fuente" TipoDocIdentidad="1" identificacion="474499354"/>
    <PropiedadVersusPropietario NumFinca="1257232" identificacion="893825564"/>
    <PropiedadVersusPropietario NumFinca="6298656" identificacion="447810455"/>
    <PropiedadVersusPropietario NumFinca="1377010" identificacion="173683024"/>
    <PropiedadVersusPropietario NumFinca="4916825" identificacion="450824745"/>
    <PropiedadVersusPropietario NumFinca="9984034" identificacion="687971495"/>
    <PropiedadVersusPropietario NumFinca="5109436" identificacion="790181390"/>
    <PropiedadVersusPropietario NumFinca="2371257" identificacion="467695522"/>
    <PropiedadVersusPropietario NumFinca="3660611" identificacion="573231545"/>
    <PropiedadVersusPropietario NumFinca="1190024" identificacion="452116029"/>
    <PropiedadVersusPropietario NumFinca="8569569" identificacion="473525669"/>
    <PropiedadVersusPropietario NumFinca="7878334" identificacion="724334711"/>
    <PropiedadVersusPropietario NumFinca="3146361" identificacion="474499354"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1257232"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6298656"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1377010"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4916825"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9984034"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5109436"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2371257"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3660611"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1190024"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8569569"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7878334"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3146361"/>
    <CambioPropiedad NumFinca="5649015" NuevoValor="20682757"/>
    <CambioPropiedad NumFinca="2463803" NuevoValor="7369588"/>
    <TransConsumo id="1" LecturaM3="499" descripcion="Cobro Mensual" NumFinca="5612982"/>
    <TransConsumo id="1" LecturaM3="456" descripcion="Cobro Mensual" NumFinca="1667419"/>
    <TransConsumo id="1" LecturaM3="432" descripcion="Cobro Mensual" NumFinca="1463009"/>
    <TransConsumo id="2" LecturaM3="1" descripcion="Reclamo de cliente" NumFinca="6736147"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-19">
	</OperacionDia>
  <OperacionDia fecha="2020-03-20">
	</OperacionDia>
  <OperacionDia fecha="2020-03-21">
    <TransConsumo id="1" LecturaM3="335" descripcion="Cobro Mensual" NumFinca="2415723"/>
    <TransConsumo id="1" LecturaM3="451" descripcion="Cobro Mensual" NumFinca="2405935"/>
    <TransConsumo id="1" LecturaM3="428" descripcion="Cobro Mensual" NumFinca="2416612"/>
    <TransConsumo id="3" LecturaM3="39" descripcion="Lectura errónea" NumFinca="1667419"/>
    <TransConsumo id="3" LecturaM3="43" descripcion="Lectura errónea" NumFinca="6722024"/>
    <TransConsumo id="3" LecturaM3="42" descripcion="Lectura errónea" NumFinca="5612982"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-22">
	</OperacionDia>
  <OperacionDia fecha="2020-03-23">
    <Propiedad NumFinca="6120307" Valor="5162860" Direccion="Soda la Paz, 85 m Suroeste."/>
    <Propiedad NumFinca="5706265" Valor="25133999" Direccion="Santa Rosa, 390 m Sureste."/>
    <Propiedad NumFinca="8978244" Valor="28984933" Direccion=" UNA, 111 m Norte."/>
    <Propiedad NumFinca="9483099" Valor="7682117" Direccion="Bar las delicias, 521 m Oeste."/>
    <Propietario Nombre="Noa Flores Varela" TipoDocIdentidad="1" identificacion="471886910"/>
    <Propietario Nombre="Vera Campo Gallardo" TipoDocIdentidad="1" identificacion="471650170"/>
    <Propietario Nombre="Jorge Rueda Peña" TipoDocIdentidad="1" identificacion="467417343"/>
    <Propietario Nombre="Paula Serrano Molina" TipoDocIdentidad="1" identificacion="750320271"/>
    <PropiedadVersusPropietario NumFinca="6120307" identificacion="471886910"/>
    <PropiedadVersusPropietario NumFinca="5706265" identificacion="471650170"/>
    <PropiedadVersusPropietario NumFinca="8978244" identificacion="467417343"/>
    <PropiedadVersusPropietario NumFinca="9483099" identificacion="750320271"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6120307"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5706265"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8978244"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9483099"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-24">
    <Propiedad NumFinca="4012617" Valor="26446376" Direccion=" Autolavado Nuestra Señora, 883 m Sureste."/>
    <Propiedad NumFinca="4188723" Valor="17658863" Direccion="El Jardín, 496 m Noreste."/>
    <Propiedad NumFinca="5603734" Valor="13519062" Direccion="Canoas, 590 m Este."/>
    <Propiedad NumFinca="2675651" Valor="13730777" Direccion="Plantel de COPRESA, 104 m Norte."/>
    <Propietario Nombre="María Costa De La Fuente" TipoDocIdentidad="1" identificacion="728750941"/>
    <Propietario Nombre="Nicolás Rubio Valero" TipoDocIdentidad="1" identificacion="317325529"/>
    <Propietario Nombre="Enzo Velasco Nieto" TipoDocIdentidad="2" identificacion="811361238"/>
    <Propietario Nombre="Olivia Vera Corral" TipoDocIdentidad="1" identificacion="752731482"/>
    <PropiedadVersusPropietario NumFinca="4012617" identificacion="728750941"/>
    <PropiedadVersusPropietario NumFinca="4188723" identificacion="317325529"/>
    <PropiedadVersusPropietario NumFinca="5603734" identificacion="811361238"/>
    <PropiedadVersusPropietario NumFinca="2675651" identificacion="752731482"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4012617"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4188723"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5603734"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2675651"/>
    <TransConsumo id="1" LecturaM3="470" descripcion="Cobro Mensual" NumFinca="3151260"/>
    <TransConsumo id="1" LecturaM3="384" descripcion="Cobro Mensual" NumFinca="5333273"/>
    <TransConsumo id="1" LecturaM3="472" descripcion="Cobro Mensual" NumFinca="1337841"/>
    <TransConsumo id="2" LecturaM3="28" descripcion="Reclamo de cliente" NumFinca="4782873"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-25">
    <Propiedad NumFinca="8970701" Valor="6526147" Direccion="San Gerardo, 56 m Sureste."/>
    <Propiedad NumFinca="2318994" Valor="11743446" Direccion="San Joser, 632 m Noreste."/>
    <Propiedad NumFinca="1339166" Valor="22311814" Direccion="Astua Pirie, 653 m Sur."/>
    <Propiedad NumFinca="2749656" Valor="15628685" Direccion=" Central Electrica, 185 m Oeste."/>
    <Propiedad NumFinca="9383952" Valor="6102786" Direccion="El Alto, 605 m Sureste."/>
    <Propietario Nombre="Claudia Hidalgo Lozano" TipoDocIdentidad="1" identificacion="395394311"/>
    <Propietario Nombre="Ainhoa Rodriguez Crespo" TipoDocIdentidad="1" identificacion="715954027"/>
    <Propietario Nombre="Irene Garrido Corral" TipoDocIdentidad="2" identificacion="867536560"/>
    <Propietario Nombre="Marc Casado Plaza" TipoDocIdentidad="1" identificacion="442811687"/>
    <Propietario Nombre="Chloe Diez Alvarez" TipoDocIdentidad="1" identificacion="728791918"/>
    <PropiedadVersusPropietario NumFinca="8970701" identificacion="395394311"/>
    <PropiedadVersusPropietario NumFinca="2318994" identificacion="715954027"/>
    <PropiedadVersusPropietario NumFinca="1339166" identificacion="867536560"/>
    <PropiedadVersusPropietario NumFinca="2749656" identificacion="442811687"/>
    <PropiedadVersusPropietario NumFinca="9383952" identificacion="728791918"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8970701"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2318994"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1339166"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2749656"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9383952"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-26">
    <Propiedad NumFinca="3106811" Valor="16736527" Direccion="San Joser, 566 m Suroeste."/>
    <Propiedad NumFinca="1265498" Valor="8851464" Direccion="Ciruelas, 948 m Sur."/>
    <Propiedad NumFinca="8647522" Valor="9632210" Direccion="Ciruelas, 810 m Oeste."/>
    <Propiedad NumFinca="9031163" Valor="17021657" Direccion="Calle Vargas, 649 m Norte."/>
    <Propiedad NumFinca="7735977" Valor="14217078" Direccion="San Rafael, 135 m Sureste."/>
    <Propiedad NumFinca="4096388" Valor="18894034" Direccion="Cementerio de Santa Rosa, 95 m Este."/>
    <Propiedad NumFinca="1328804" Valor="14256908" Direccion=" Contrasuli, 757 m Este."/>
    <Propiedad NumFinca="8669107" Valor="26108443" Direccion="La Giralda, 651 m Este."/>
    <Propiedad NumFinca="1849959" Valor="16513316" Direccion="UCR, 207 m Noroeste."/>
    <Propietario Nombre="Guillermo Calderon Mata" TipoDocIdentidad="2" identificacion="890998125"/>
    <Propietario Nombre="Nora Moreno Blanco" TipoDocIdentidad="1" identificacion="564755247"/>
    <Propietario Nombre="Carlota Bravo Andres" TipoDocIdentidad="2" identificacion="835625217"/>
    <Propietario Nombre="Inés Santamaria Bernal" TipoDocIdentidad="1" identificacion="545987514"/>
    <Propietario Nombre="Gabriel Puente Montes" TipoDocIdentidad="1" identificacion="775886571"/>
    <Propietario Nombre="Adriana Ortiz Mateo" TipoDocIdentidad="1" identificacion="756753314"/>
    <Propietario Nombre="Triana Lazaro Vera" TipoDocIdentidad="2" identificacion="851108288"/>
    <Propietario Nombre="Jesús Rueda Lorenzo" TipoDocIdentidad="1" identificacion="551447147"/>
    <Propietario Nombre="Oliver Carrillo Rodrigo" TipoDocIdentidad="1" identificacion="466967915"/>
    <PropiedadVersusPropietario NumFinca="3106811" identificacion="890998125"/>
    <PropiedadVersusPropietario NumFinca="1265498" identificacion="564755247"/>
    <PropiedadVersusPropietario NumFinca="8647522" identificacion="835625217"/>
    <PropiedadVersusPropietario NumFinca="9031163" identificacion="545987514"/>
    <PropiedadVersusPropietario NumFinca="7735977" identificacion="775886571"/>
    <PropiedadVersusPropietario NumFinca="4096388" identificacion="756753314"/>
    <PropiedadVersusPropietario NumFinca="1328804" identificacion="851108288"/>
    <PropiedadVersusPropietario NumFinca="8669107" identificacion="551447147"/>
    <PropiedadVersusPropietario NumFinca="1849959" identificacion="466967915"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3106811"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1265498"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8647522"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9031163"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7735977"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4096388"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1328804"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8669107"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1849959"/>
    <TransConsumo id="1" LecturaM3="436" descripcion="Cobro Mensual" NumFinca="2425954"/>
    <TransConsumo id="1" LecturaM3="449" descripcion="Cobro Mensual" NumFinca="7816509"/>
    <TransConsumo id="3" LecturaM3="39" descripcion="Lectura errónea" NumFinca="2405935"/>
    <Pago TipoRecibo="1" NumFinca="4782873"/>
    <Pago TipoRecibo="1" NumFinca="1858970"/>
    <Pago TipoRecibo="1" NumFinca="2101885"/>
    <Pago TipoRecibo="1" NumFinca="6722024"/>
    <Pago TipoRecibo="1" NumFinca="5310895"/>
    <Pago TipoRecibo="1" NumFinca="3443064"/>
    <Pago TipoRecibo="1" NumFinca="7254630"/>
    <Pago TipoRecibo="1" NumFinca="3901661"/>
    <Pago TipoRecibo="1" NumFinca="6883678"/>
    <Pago TipoRecibo="1" NumFinca="2287722"/>
    <Pago TipoRecibo="1" NumFinca="5612982"/>
    <Pago TipoRecibo="1" NumFinca="1667419"/>
    <Pago TipoRecibo="1" NumFinca="1463009"/>
    <Pago TipoRecibo="1" NumFinca="2415723"/>
    <Pago TipoRecibo="1" NumFinca="2405935"/>
    <Pago TipoRecibo="1" NumFinca="2416612"/>
    <Pago TipoRecibo="1" NumFinca="3151260"/>
    <Pago TipoRecibo="1" NumFinca="5333273"/>
    <Pago TipoRecibo="1" NumFinca="1337841"/>
    <Pago TipoRecibo="1" NumFinca="2425954"/>
    <Pago TipoRecibo="1" NumFinca="7816509"/>
    <Pago TipoRecibo="1" NumFinca="1118180"/>
    <Pago TipoRecibo="1" NumFinca="1596904"/>
    <Pago TipoRecibo="1" NumFinca="5998719"/>
    <Pago TipoRecibo="1" NumFinca="4663528"/>
    <Pago TipoRecibo="1" NumFinca="7494272"/>
    <Pago TipoRecibo="1" NumFinca="5590052"/>
    <Pago TipoRecibo="1" NumFinca="8271399"/>
    <Pago TipoRecibo="1" NumFinca="6732750"/>
    <Pago TipoRecibo="1" NumFinca="9324439"/>
    <Pago TipoRecibo="1" NumFinca="5649015"/>
    <Pago TipoRecibo="1" NumFinca="3336538"/>
    <Pago TipoRecibo="1" NumFinca="6832824"/>
    <Pago TipoRecibo="1" NumFinca="8583838"/>
    <Pago TipoRecibo="1" NumFinca="3159179"/>
    <Pago TipoRecibo="1" NumFinca="3312213"/>
    <Pago TipoRecibo="1" NumFinca="9365866"/>
    <Pago TipoRecibo="1" NumFinca="9597151"/>
    <Pago TipoRecibo="1" NumFinca="3745857"/>
    <Pago TipoRecibo="1" NumFinca="9984034"/>
    <Pago TipoRecibo="1" NumFinca="3146361"/>
    <Pago TipoRecibo="1" NumFinca="9483099"/>
    <Pago TipoRecibo="1" NumFinca="5603734"/>
    <Pago TipoRecibo="1" NumFinca="2675651"/>
    <Pago TipoRecibo="1" NumFinca="9383952"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-27">
    <Propiedad NumFinca="9420897" Valor="10464676" Direccion="Soda el Higueron, 447 m Noreste."/>
    <Propiedad NumFinca="8209332" Valor="4307518" Direccion=" Iglecia Los capuchinos, 471 m Norte."/>
    <Propietario Nombre="Valentina Zamora Rivas" TipoDocIdentidad="1" identificacion="158195908"/>
    <Propietario Nombre="Daniel Ortiz Roman" TipoDocIdentidad="1" identificacion="733577521"/>
    <PropiedadVersusPropietario NumFinca="9420897" identificacion="158195908"/>
    <PropiedadVersusPropietario NumFinca="8209332" identificacion="733577521"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9420897"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8209332"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-28">
    <TransConsumo id="1" LecturaM3="362" descripcion="Cobro Mensual" NumFinca="1118180"/>
    <TransConsumo id="1" LecturaM3="474" descripcion="Cobro Mensual" NumFinca="1596904"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-29">
	</OperacionDia>
  <OperacionDia fecha="2020-03-30">
    <Propiedad NumFinca="3999926" Valor="28861830" Direccion="San Joser, 99 m Este."/>
    <Propiedad NumFinca="5227673" Valor="23817061" Direccion="El Jardín, 395 m Oeste."/>
    <Propiedad NumFinca="3626844" Valor="29152223" Direccion=" Contrasuli, 900 m Norte."/>
    <Propiedad NumFinca="2692524" Valor="16426791" Direccion="Manzanar, 196 m Oeste."/>
    <Propietario Nombre="Juan Gutierrez Ortiz" TipoDocIdentidad="1" identificacion="343529586"/>
    <Propietario Nombre="Marina Romero Marcos" TipoDocIdentidad="1" identificacion="759512904"/>
    <Propietario Nombre="Ainara Perez Juan" TipoDocIdentidad="1" identificacion="751730151"/>
    <Propietario Nombre="Carla Ortiz Velasco" TipoDocIdentidad="1" identificacion="753219692"/>
    <PropiedadVersusPropietario NumFinca="3999926" identificacion="343529586"/>
    <PropiedadVersusPropietario NumFinca="5227673" identificacion="759512904"/>
    <PropiedadVersusPropietario NumFinca="3626844" identificacion="751730151"/>
    <PropiedadVersusPropietario NumFinca="2692524" identificacion="753219692"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3999926"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5227673"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3626844"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2692524"/>
  </OperacionDia>
  <OperacionDia fecha="2020-03-31">
    <Propiedad NumFinca="1995705" Valor="19970882" Direccion="Plantel de COPRESA, 223 m Este."/>
    <Propiedad NumFinca="8394022" Valor="26941211" Direccion="Astua Pirie, 270 m Oeste."/>
    <Propiedad NumFinca="4790430" Valor="5991405" Direccion="Brasil de Mora, 296 m Noreste."/>
    <Propiedad NumFinca="2574148" Valor="17320694" Direccion="San Felipe, 820 m Noroeste."/>
    <Propiedad NumFinca="6433570" Valor="25228764" Direccion="Las Cascadas, 410 m Este."/>
    <Propiedad NumFinca="2810152" Valor="15113605" Direccion="San Gerardo, 743 m Oeste."/>
    <Propiedad NumFinca="6896983" Valor="27213632" Direccion="Soda el Higueron, 77 m Norte."/>
    <Propietario Nombre="Lara Alonso Cano" TipoDocIdentidad="1" identificacion="121868154"/>
    <Propietario Nombre="Jimena Vargas Sanz" TipoDocIdentidad="1" identificacion="356338992"/>
    <Propietario Nombre="Guillermo Corral Rico" TipoDocIdentidad="1" identificacion="694076650"/>
    <Propietario Nombre="Diego Lazaro Quintana" TipoDocIdentidad="1" identificacion="339652472"/>
    <Propietario Nombre="Valeria Diez Contreras" TipoDocIdentidad="1" identificacion="174622312"/>
    <Propietario Nombre="Emma Castillo Soler" TipoDocIdentidad="1" identificacion="186159139"/>
    <Propietario Nombre="Samuel Perez Silva" TipoDocIdentidad="2" identificacion="879182621"/>
    <PropiedadVersusPropietario NumFinca="1995705" identificacion="121868154"/>
    <PropiedadVersusPropietario NumFinca="8394022" identificacion="356338992"/>
    <PropiedadVersusPropietario NumFinca="4790430" identificacion="694076650"/>
    <PropiedadVersusPropietario NumFinca="2574148" identificacion="339652472"/>
    <PropiedadVersusPropietario NumFinca="6433570" identificacion="174622312"/>
    <PropiedadVersusPropietario NumFinca="2810152" identificacion="186159139"/>
    <PropiedadVersusPropietario NumFinca="6896983" identificacion="879182621"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1995705"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8394022"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4790430"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2574148"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6433570"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2810152"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6896983"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-01">
	</OperacionDia>
  <OperacionDia fecha="2020-04-02">
    <Propiedad NumFinca="5067735" Valor="7821358" Direccion="La Francia, 34 m Sur."/>
    <Propiedad NumFinca="2913367" Valor="22127745" Direccion=" La fuente central, 837 m Este."/>
    <Propiedad NumFinca="3051540" Valor="21998266" Direccion="La Francia, 940 m Noreste."/>
    <Propiedad NumFinca="2730940" Valor="21271189" Direccion="Brasil de Mora, 635 m Noroeste."/>
    <Propiedad NumFinca="2664388" Valor="9839149" Direccion="Banco Nacional, 617 m Suroeste."/>
    <Propiedad NumFinca="4564012" Valor="14710837" Direccion=" Maxi Pali, 670 m Norte."/>
    <Propiedad NumFinca="7235520" Valor="12266491" Direccion="Plantel de COPRESA, 236 m Noroeste."/>
    <Propiedad NumFinca="3298240" Valor="16625755" Direccion=" La fuente central, 25 m Sureste."/>
    <Propiedad NumFinca="5605527" Valor="19581684" Direccion="Manzanar, 398 m Norte."/>
    <Propiedad NumFinca="7736703" Valor="18944978" Direccion=" Maxi Pali, 159 m Noroeste."/>
    <Propietario Nombre="Antonio Rosa Rojo" TipoDocIdentidad="1" identificacion="717771784"/>
    <Propietario Nombre="Inés Carmona Otero" TipoDocIdentidad="2" identificacion="845523223"/>
    <Propietario Nombre="Aaron Rojo Costa" TipoDocIdentidad="1" identificacion="480066597"/>
    <Propietario Nombre="Elena Calvo Miguel" TipoDocIdentidad="1" identificacion="388081140"/>
    <Propietario Nombre="Inés Andres Marin" TipoDocIdentidad="2" identificacion="861844262"/>
    <Propietario Nombre="David Caballero Ferrer" TipoDocIdentidad="1" identificacion="327722361"/>
    <Propietario Nombre="Nicolás Rubio Caballero" TipoDocIdentidad="1" identificacion="304765351"/>
    <Propietario Nombre="Ainhoa Rivero Cortes" TipoDocIdentidad="1" identificacion="243270529"/>
    <Propietario Nombre="Vega Rivas Marquez" TipoDocIdentidad="1" identificacion="496866808"/>
    <Propietario Nombre="Leo Silva Ferrer" TipoDocIdentidad="1" identificacion="587149742"/>
    <PropiedadVersusPropietario NumFinca="5067735" identificacion="717771784"/>
    <PropiedadVersusPropietario NumFinca="2913367" identificacion="845523223"/>
    <PropiedadVersusPropietario NumFinca="3051540" identificacion="480066597"/>
    <PropiedadVersusPropietario NumFinca="2730940" identificacion="388081140"/>
    <PropiedadVersusPropietario NumFinca="2664388" identificacion="861844262"/>
    <PropiedadVersusPropietario NumFinca="4564012" identificacion="327722361"/>
    <PropiedadVersusPropietario NumFinca="7235520" identificacion="304765351"/>
    <PropiedadVersusPropietario NumFinca="3298240" identificacion="243270529"/>
    <PropiedadVersusPropietario NumFinca="5605527" identificacion="496866808"/>
    <PropiedadVersusPropietario NumFinca="7736703" identificacion="587149742"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5067735"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2913367"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3051540"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2730940"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2664388"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4564012"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7235520"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3298240"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5605527"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7736703"/>
    <CambioPropiedad NumFinca="4786459" NuevoValor="18735419"/>
    <AP NumFinca="1565045" Plazo="5"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-03">
    <Propiedad NumFinca="6536368" Valor="5651629" Direccion="Cementerio de Santa Rosa, 420 m Oeste."/>
    <Propiedad NumFinca="9060769" Valor="8791057" Direccion="De Nava Café, 273 m Noreste."/>
    <Propiedad NumFinca="1382523" Valor="23054734" Direccion="Orotina, 710 m Noroeste."/>
    <Propiedad NumFinca="9591266" Valor="7198637" Direccion="La Giralda, 898 m Noroeste."/>
    <Propiedad NumFinca="9693383" Valor="24279917" Direccion="El Jardín, 425 m Suroeste."/>
    <Propiedad NumFinca="5396190" Valor="24677313" Direccion=" Río Camarón, 98 m Este."/>
    <Propiedad NumFinca="2045004" Valor="15294703" Direccion="Ciruelas, 437 m Noroeste."/>
    <Propiedad NumFinca="8927746" Valor="24274096" Direccion="La Francia, 159 m Sur."/>
    <Propiedad NumFinca="8200826" Valor="29128410" Direccion=" Iglecia Los capuchinos, 518 m Noreste."/>
    <Propiedad NumFinca="6247645" Valor="6233667" Direccion="Brasil de Mora, 153 m Suroeste."/>
    <Propietario Nombre="Noa Tomas Marti" TipoDocIdentidad="2" identificacion="835818234"/>
    <Propietario Nombre="Inés Rivera Salas" TipoDocIdentidad="1" identificacion="204031456"/>
    <Propietario Nombre="Aitor Del Rio Leon" TipoDocIdentidad="1" identificacion="371875145"/>
    <Propietario Nombre="Valeria Moya Duran" TipoDocIdentidad="1" identificacion="211306867"/>
    <Propietario Nombre="Noa Rico Peña" TipoDocIdentidad="1" identificacion="664831872"/>
    <Propietario Nombre="Carlota Carrera Arias" TipoDocIdentidad="1" identificacion="260530249"/>
    <Propietario Nombre="Sara Del Rio Parra" TipoDocIdentidad="1" identificacion="739854089"/>
    <Propietario Nombre="Laia Soto Diez" TipoDocIdentidad="1" identificacion="720980066"/>
    <Propietario Nombre="Julia Herrera Garrido" TipoDocIdentidad="1" identificacion="658623586"/>
    <Propietario Nombre="Oliver Rio Miguel" TipoDocIdentidad="1" identificacion="373012554"/>
    <PropiedadVersusPropietario NumFinca="6536368" identificacion="835818234"/>
    <PropiedadVersusPropietario NumFinca="9060769" identificacion="204031456"/>
    <PropiedadVersusPropietario NumFinca="1382523" identificacion="371875145"/>
    <PropiedadVersusPropietario NumFinca="9591266" identificacion="211306867"/>
    <PropiedadVersusPropietario NumFinca="9693383" identificacion="664831872"/>
    <PropiedadVersusPropietario NumFinca="5396190" identificacion="260530249"/>
    <PropiedadVersusPropietario NumFinca="2045004" identificacion="739854089"/>
    <PropiedadVersusPropietario NumFinca="8927746" identificacion="720980066"/>
    <PropiedadVersusPropietario NumFinca="8200826" identificacion="658623586"/>
    <PropiedadVersusPropietario NumFinca="6247645" identificacion="373012554"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6536368"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9060769"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1382523"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9591266"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9693383"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5396190"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2045004"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8927746"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8200826"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6247645"/>
    <TransConsumo id="1" LecturaM3="462" descripcion="Cobro Mensual" NumFinca="5998719"/>
    <TransConsumo id="3" LecturaM3="37" descripcion="Lectura errónea" NumFinca="3443064"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-04">
    <Propiedad NumFinca="2995814" Valor="16524266" Direccion="Residencias Pacific Sun, 121 m Noroeste."/>
    <Propiedad NumFinca="5466890" Valor="19471467" Direccion="Orotina, 700 m Noreste."/>
    <Propiedad NumFinca="2725968" Valor="7337278" Direccion="Corazón de Jesús, 441 m Sur."/>
    <Propiedad NumFinca="7794993" Valor="27328137" Direccion=" UNA, 751 m Este."/>
    <Propiedad NumFinca="2962597" Valor="3873402" Direccion=" UNA, 342 m Suroeste."/>
    <Propiedad NumFinca="1389817" Valor="22738994" Direccion="San Gerardo, 886 m Sur."/>
    <Propiedad NumFinca="1031473" Valor="18731906" Direccion="Plantel de COPRESA, 73 m Oeste."/>
    <Propiedad NumFinca="8511183" Valor="16750364" Direccion="Manzanar, 322 m Sur."/>
    <Propiedad NumFinca="9998670" Valor="7110537" Direccion="Manzanar, 459 m Noreste."/>
    <Propiedad NumFinca="5828584" Valor="23928124" Direccion=" Hospital Central, 174 m Sur."/>
    <Propietario Nombre="Dylan Campos Gonzalez" TipoDocIdentidad="1" identificacion="552578719"/>
    <Propietario Nombre="Adam Benito Mateos" TipoDocIdentidad="1" identificacion="112947097"/>
    <Propietario Nombre="Héctor Calderon Quintana" TipoDocIdentidad="1" identificacion="320303664"/>
    <Propietario Nombre="Alicia Roldan Ortiz" TipoDocIdentidad="1" identificacion="798849258"/>
    <Propietario Nombre="Noa Torre Muñoz" TipoDocIdentidad="1" identificacion="268584618"/>
    <Propietario Nombre="Valeria Exposito Pascual" TipoDocIdentidad="1" identificacion="409646548"/>
    <Propietario Nombre="Rocío Guerra Rios" TipoDocIdentidad="1" identificacion="604759093"/>
    <Propietario Nombre="Ángel Torres Carrera" TipoDocIdentidad="1" identificacion="776901706"/>
    <Propietario Nombre="Miguel Aparicio Gil" TipoDocIdentidad="1" identificacion="708405389"/>
    <Propietario Nombre="Guillermo Lorenzo Menendez" TipoDocIdentidad="1" identificacion="525506283"/>
    <PropiedadVersusPropietario NumFinca="2995814" identificacion="552578719"/>
    <PropiedadVersusPropietario NumFinca="5466890" identificacion="112947097"/>
    <PropiedadVersusPropietario NumFinca="2725968" identificacion="320303664"/>
    <PropiedadVersusPropietario NumFinca="7794993" identificacion="798849258"/>
    <PropiedadVersusPropietario NumFinca="2962597" identificacion="268584618"/>
    <PropiedadVersusPropietario NumFinca="1389817" identificacion="409646548"/>
    <PropiedadVersusPropietario NumFinca="1031473" identificacion="604759093"/>
    <PropiedadVersusPropietario NumFinca="8511183" identificacion="776901706"/>
    <PropiedadVersusPropietario NumFinca="9998670" identificacion="708405389"/>
    <PropiedadVersusPropietario NumFinca="5828584" identificacion="525506283"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2995814"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5466890"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2725968"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7794993"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2962597"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1389817"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1031473"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8511183"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9998670"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5828584"/>
    <CambioPropiedad NumFinca="2913367" NuevoValor="25024492"/>
    <TransConsumo id="1" LecturaM3="415" descripcion="Cobro Mensual" NumFinca="4663528"/>
    <TransConsumo id="1" LecturaM3="399" descripcion="Cobro Mensual" NumFinca="7494272"/>
    <TransConsumo id="1" LecturaM3="459" descripcion="Cobro Mensual" NumFinca="5590052"/>
    <TransConsumo id="1" LecturaM3="322" descripcion="Cobro Mensual" NumFinca="8271399"/>
    <TransConsumo id="1" LecturaM3="423" descripcion="Cobro Mensual" NumFinca="6732750"/>
    <TransConsumo id="1" LecturaM3="497" descripcion="Cobro Mensual" NumFinca="9324439"/>
    <TransConsumo id="1" LecturaM3="453" descripcion="Cobro Mensual" NumFinca="5649015"/>
     <AP NumFinca="3107084" Plazo="8"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-05">
    <Propiedad NumFinca="8434186" Valor="15014331" Direccion=" iglesia de Oreamuno, 891 m Noroeste."/>
    <Propiedad NumFinca="1306106" Valor="25381756" Direccion="Bar las delicias, 136 m Noroeste."/>
    <Propiedad NumFinca="9677981" Valor="10097139" Direccion=" Central Electrica, 857 m Norte."/>
    <Propiedad NumFinca="2179370" Valor="15258237" Direccion="Soda la Paz, 650 m Sureste."/>
    <Propiedad NumFinca="8152275" Valor="5573120" Direccion=" Hospital Central, 177 m Noreste."/>
    <Propiedad NumFinca="2379645" Valor="24674071" Direccion=" UNA, 614 m Sureste."/>
    <Propiedad NumFinca="6404248" Valor="5929228" Direccion=" Iglecia Los capuchinos, 591 m Norte."/>
    <Propiedad NumFinca="4366302" Valor="27903260" Direccion="Canoas, 43 m Noroeste."/>
    <Propiedad NumFinca="9771500" Valor="27654149" Direccion="Las Cascadas, 816 m Sur."/>
    <Propiedad NumFinca="5273794" Valor="15525477" Direccion="Plantel de COPRESA, 598 m Noroeste."/>
    <Propietario Nombre="Ainhoa Ballesteros Silva" TipoDocIdentidad="1" identificacion="755440819"/>
    <Propietario Nombre="Ainara Villar Zamora" TipoDocIdentidad="1" identificacion="203849341"/>
    <Propietario Nombre="David Zamora Rueda" TipoDocIdentidad="1" identificacion="649177142"/>
    <Propietario Nombre="María Lozano Andres" TipoDocIdentidad="1" identificacion="185532600"/>
    <Propietario Nombre="Mateo Gracia Rubio" TipoDocIdentidad="1" identificacion="545051225"/>
    <Propietario Nombre="Javier Ibañez Herrera" TipoDocIdentidad="1" identificacion="504538201"/>
    <Propietario Nombre="Julia Aguilar Villar" TipoDocIdentidad="1" identificacion="729316903"/>
    <Propietario Nombre="Clara Castro Rodriguez" TipoDocIdentidad="1" identificacion="225884730"/>
    <Propietario Nombre="Nora Lorenzo Martin" TipoDocIdentidad="1" identificacion="140996581"/>
    <Propietario Nombre="Eric Garcia Ibañez" TipoDocIdentidad="2" identificacion="841209940"/>
    <PropiedadVersusPropietario NumFinca="8434186" identificacion="755440819"/>
    <PropiedadVersusPropietario NumFinca="1306106" identificacion="203849341"/>
    <PropiedadVersusPropietario NumFinca="9677981" identificacion="649177142"/>
    <PropiedadVersusPropietario NumFinca="2179370" identificacion="185532600"/>
    <PropiedadVersusPropietario NumFinca="8152275" identificacion="545051225"/>
    <PropiedadVersusPropietario NumFinca="2379645" identificacion="504538201"/>
    <PropiedadVersusPropietario NumFinca="6404248" identificacion="729316903"/>
    <PropiedadVersusPropietario NumFinca="4366302" identificacion="225884730"/>
    <PropiedadVersusPropietario NumFinca="9771500" identificacion="140996581"/>
    <PropiedadVersusPropietario NumFinca="5273794" identificacion="841209940"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8434186"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1306106"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9677981"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2179370"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8152275"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2379645"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6404248"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4366302"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9771500"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5273794"/>
    <Pago TipoRecibo="5" NumFinca="4158692"/>
    <Pago TipoRecibo="5" NumFinca="9782331"/>
    <Pago TipoRecibo="5" NumFinca="2186347"/>
    <Pago TipoRecibo="5" NumFinca="1394522"/>
    <Pago TipoRecibo="5" NumFinca="4121713"/>
    <Pago TipoRecibo="5" NumFinca="1423800"/>
    <Pago TipoRecibo="5" NumFinca="1659333"/>
    <Pago TipoRecibo="5" NumFinca="6516190"/>
    <Pago TipoRecibo="5" NumFinca="6147839"/>
    <Pago TipoRecibo="5" NumFinca="7981775"/>
    <Pago TipoRecibo="5" NumFinca="4182442"/>
    <Pago TipoRecibo="5" NumFinca="1236736"/>
    <Pago TipoRecibo="5" NumFinca="7393203"/>
    <Pago TipoRecibo="5" NumFinca="3958319"/>
    <Pago TipoRecibo="5" NumFinca="3158340"/>
    <Pago TipoRecibo="5" NumFinca="9582939"/>
    <Pago TipoRecibo="5" NumFinca="6374877"/>
    <Pago TipoRecibo="5" NumFinca="7733971"/>
    <Pago TipoRecibo="5" NumFinca="2499250"/>
    <Pago TipoRecibo="5" NumFinca="2108129"/>
    <Pago TipoRecibo="5" NumFinca="1528789"/>
    <Pago TipoRecibo="5" NumFinca="7799701"/>
    <Pago TipoRecibo="5" NumFinca="5359919"/>
    <Pago TipoRecibo="5" NumFinca="6163924"/>
    <Pago TipoRecibo="5" NumFinca="6696849"/>
    <Pago TipoRecibo="5" NumFinca="5677891"/>
    <Pago TipoRecibo="5" NumFinca="7825963"/>
    <Pago TipoRecibo="5" NumFinca="8573120"/>
    <Pago TipoRecibo="5" NumFinca="2580485"/>
    <Pago TipoRecibo="5" NumFinca="3958792"/>
    <Pago TipoRecibo="5" NumFinca="7833848"/>
    <Pago TipoRecibo="5" NumFinca="3419006"/>
    <Pago TipoRecibo="5" NumFinca="6715187"/>
    <Pago TipoRecibo="5" NumFinca="6727257"/>
    <Pago TipoRecibo="5" NumFinca="1523587"/>
    <Pago TipoRecibo="5" NumFinca="4916825"/>
    <Pago TipoRecibo="5" NumFinca="2749656"/>
    <Pago TipoRecibo="5" NumFinca="3106811"/>
    <Pago TipoRecibo="5" NumFinca="1265498"/>
    <Pago TipoRecibo="5" NumFinca="4096388"/>
    <Pago TipoRecibo="5" NumFinca="3999926"/>
    <Pago TipoRecibo="5" NumFinca="4790430"/>
    <Pago TipoRecibo="5" NumFinca="3298240"/>
    <Pago TipoRecibo="5" NumFinca="6536368"/>
    <Pago TipoRecibo="5" NumFinca="2995814"/>
    <AP NumFinca="2346431" Plazo="6"/>
    <AP NumFinca="2132441" Plazo="12"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-06">
    <Propiedad NumFinca="8989267" Valor="11206046" Direccion="De Nava Café, 226 m Este."/>
    <Propiedad NumFinca="7143966" Valor="21341817" Direccion="Residencias Pacific Sun, 531 m Este."/>
    <Propiedad NumFinca="2462335" Valor="17820624" Direccion="Manzanar, 598 m Noroeste."/>
    <Propiedad NumFinca="9053097" Valor="12815838" Direccion="La Giralda, 772 m Norte."/>
    <Propiedad NumFinca="6450028" Valor="29796534" Direccion="Orotina, 815 m Sureste."/>
    <Propiedad NumFinca="5406404" Valor="9834119" Direccion="Calle Vargas, 335 m Este."/>
    <Propiedad NumFinca="1516510" Valor="29753284" Direccion="Las Cascadas, 136 m Noreste."/>
    <Propiedad NumFinca="6512176" Valor="14944325" Direccion="San Joser, 932 m Oeste."/>
    <Propiedad NumFinca="4326248" Valor="23538715" Direccion="La Francia, 94 m Sureste."/>
    <Propiedad NumFinca="5342168" Valor="5402307" Direccion="Urbanización La Fundación, 397 m Este."/>
    <Propietario Nombre="Mateo Velasco Varela" TipoDocIdentidad="1" identificacion="452732384"/>
    <Propietario Nombre="Antonio Arias Leon" TipoDocIdentidad="2" identificacion="878599566"/>
    <Propietario Nombre="Ainara Gallardo Santos" TipoDocIdentidad="1" identificacion="324093597"/>
    <Propietario Nombre="Alejandro Suarez San" TipoDocIdentidad="1" identificacion="649731455"/>
    <Propietario Nombre="Ángel Juan Ibañez" TipoDocIdentidad="1" identificacion="276480632"/>
    <Propietario Nombre="Carmen Roldan Mateo" TipoDocIdentidad="1" identificacion="398605402"/>
    <Propietario Nombre="Leo Moreno Pozo" TipoDocIdentidad="1" identificacion="599112187"/>
    <Propietario Nombre="Adam Roca Pascual" TipoDocIdentidad="1" identificacion="325371506"/>
    <Propietario Nombre="Clara Salvador Nuñez" TipoDocIdentidad="1" identificacion="224247886"/>
    <Propietario Nombre="Nerea Rodrigo Estevez" TipoDocIdentidad="1" identificacion="521627005"/>
    <PropiedadVersusPropietario NumFinca="8989267" identificacion="452732384"/>
    <PropiedadVersusPropietario NumFinca="7143966" identificacion="878599566"/>
    <PropiedadVersusPropietario NumFinca="2462335" identificacion="324093597"/>
    <PropiedadVersusPropietario NumFinca="9053097" identificacion="649731455"/>
    <PropiedadVersusPropietario NumFinca="6450028" identificacion="276480632"/>
    <PropiedadVersusPropietario NumFinca="5406404" identificacion="398605402"/>
    <PropiedadVersusPropietario NumFinca="1516510" identificacion="599112187"/>
    <PropiedadVersusPropietario NumFinca="6512176" identificacion="325371506"/>
    <PropiedadVersusPropietario NumFinca="4326248" identificacion="224247886"/>
    <PropiedadVersusPropietario NumFinca="5342168" identificacion="521627005"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="8989267"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7143966"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2462335"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9053097"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6450028"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5406404"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1516510"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6512176"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4326248"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5342168"/>
    <CambioPropiedad NumFinca="9060769" NuevoValor="10688388"/>
    <TransConsumo id="1" LecturaM3="325" descripcion="Cobro Mensual" NumFinca="3336538"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-07">
    <Propiedad NumFinca="6706978" Valor="12360130" Direccion=" Río Camarón, 57 m Oeste."/>
    <Propiedad NumFinca="2960631" Valor="7605207" Direccion="Cuestillas, 741 m Este."/>
    <Propiedad NumFinca="6217470" Valor="15801532" Direccion="El Jardín, 143 m Sureste."/>
    <Propiedad NumFinca="1734510" Valor="3310325" Direccion="El Jardín, 94 m Sureste."/>
    <Propiedad NumFinca="7463111" Valor="19188231" Direccion=" MasxMenos, 788 m Sur."/>
    <Propiedad NumFinca="9971625" Valor="25913953" Direccion="Residencias Pacific Sun, 117 m Norte."/>
    <Propiedad NumFinca="7608458" Valor="9680317" Direccion="Bar las delicias, 299 m Noreste."/>
    <Propiedad NumFinca="7180635" Valor="3908356" Direccion="UCR, 71 m Sureste."/>
    <Propiedad NumFinca="9048469" Valor="16970469" Direccion=" Iglecia Los capuchinos, 179 m Norte."/>
    <Propiedad NumFinca="3709169" Valor="28334066" Direccion=" Río Camarón, 709 m Sur."/>
    <Propietario Nombre="Samuel Vargas Parra" TipoDocIdentidad="1" identificacion="419104612"/>
    <Propietario Nombre="Diego Vega Sancho" TipoDocIdentidad="1" identificacion="483440545"/>
    <Propietario Nombre="Alejandro Flores Pascual" TipoDocIdentidad="1" identificacion="733108760"/>
    <Propietario Nombre="Daniel Carmona Marquez" TipoDocIdentidad="1" identificacion="397388120"/>
    <Propietario Nombre="Sara Juan Martin" TipoDocIdentidad="1" identificacion="730197413"/>
    <Propietario Nombre="Triana Rodriguez De La Fuente" TipoDocIdentidad="1" identificacion="295141994"/>
    <Propietario Nombre="Lola Vargas Silva" TipoDocIdentidad="1" identificacion="426236047"/>
    <Propietario Nombre="Marina Dominguez Otero" TipoDocIdentidad="2" identificacion="890486902"/>
    <Propietario Nombre="Carlos Ramos Sancho" TipoDocIdentidad="1" identificacion="152801594"/>
    <Propietario Nombre="Javier Lorenzo Reyes" TipoDocIdentidad="1" identificacion="378304866"/>
    <PropiedadVersusPropietario NumFinca="6706978" identificacion="419104612"/>
    <PropiedadVersusPropietario NumFinca="2960631" identificacion="483440545"/>
    <PropiedadVersusPropietario NumFinca="6217470" identificacion="733108760"/>
    <PropiedadVersusPropietario NumFinca="1734510" identificacion="397388120"/>
    <PropiedadVersusPropietario NumFinca="7463111" identificacion="730197413"/>
    <PropiedadVersusPropietario NumFinca="9971625" identificacion="295141994"/>
    <PropiedadVersusPropietario NumFinca="7608458" identificacion="426236047"/>
    <PropiedadVersusPropietario NumFinca="7180635" identificacion="890486902"/>
    <PropiedadVersusPropietario NumFinca="9048469" identificacion="152801594"/>
    <PropiedadVersusPropietario NumFinca="3709169" identificacion="378304866"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6706978"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2960631"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6217470"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1734510"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7463111"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9971625"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7608458"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7180635"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9048469"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3709169"/>
    <CambioPropiedad NumFinca="8394022" NuevoValor="21083124"/>
    <CambioPropiedad NumFinca="7810652" NuevoValor="21688488"/>
    <TransConsumo id="1" LecturaM3="727" descripcion="Cobro Mensual" NumFinca="1176180"/>
    <TransConsumo id="1" LecturaM3="905" descripcion="Cobro Mensual" NumFinca="1394522"/>
    <TransConsumo id="3" LecturaM3="40" descripcion="Lectura errónea" NumFinca="2425954"/>
    <Pago TipoRecibo="4" NumFinca="2246405"/>
    <Pago TipoRecibo="4" NumFinca="1176180"/>
    <Pago TipoRecibo="4" NumFinca="1394522"/>
    <Pago TipoRecibo="4" NumFinca="4121713"/>
    <Pago TipoRecibo="4" NumFinca="1420570"/>
    <Pago TipoRecibo="4" NumFinca="1423800"/>
    <Pago TipoRecibo="4" NumFinca="2291223"/>
    <Pago TipoRecibo="4" NumFinca="9005997"/>
    <Pago TipoRecibo="4" NumFinca="8104368"/>
    <Pago TipoRecibo="4" NumFinca="1551601"/>
    <Pago TipoRecibo="4" NumFinca="4867842"/>
    <Pago TipoRecibo="4" NumFinca="6584320"/>
    <Pago TipoRecibo="4" NumFinca="7605510"/>
    <Pago TipoRecibo="4" NumFinca="7632960"/>
    <Pago TipoRecibo="4" NumFinca="7738110"/>
    <Pago TipoRecibo="4" NumFinca="1538868"/>
    <Pago TipoRecibo="4" NumFinca="7787120"/>
    <Pago TipoRecibo="4" NumFinca="1104650"/>
    <Pago TipoRecibo="4" NumFinca="9829237"/>
    <Pago TipoRecibo="4" NumFinca="2029555"/>
    <Pago TipoRecibo="4" NumFinca="7810652"/>
    <Pago TipoRecibo="4" NumFinca="7864479"/>
    <Pago TipoRecibo="4" NumFinca="3093591"/>
    <Pago TipoRecibo="4" NumFinca="7055500"/>
    <Pago TipoRecibo="4" NumFinca="2660360"/>
    <Pago TipoRecibo="4" NumFinca="5368476"/>
    <Pago TipoRecibo="4" NumFinca="4081887"/>
    <Pago TipoRecibo="4" NumFinca="4184842"/>
    <Pago TipoRecibo="4" NumFinca="8698761"/>
    <Pago TipoRecibo="4" NumFinca="5185877"/>
    <Pago TipoRecibo="4" NumFinca="4325136"/>
    <Pago TipoRecibo="4" NumFinca="2510451"/>
    <Pago TipoRecibo="4" NumFinca="4308732"/>
    <Pago TipoRecibo="4" NumFinca="7029032"/>
    <Pago TipoRecibo="4" NumFinca="9320206"/>
    <Pago TipoRecibo="4" NumFinca="1257232"/>
    <Pago TipoRecibo="4" NumFinca="6298656"/>
    <Pago TipoRecibo="4" NumFinca="5109436"/>
    <Pago TipoRecibo="4" NumFinca="8569569"/>
    <Pago TipoRecibo="4" NumFinca="7878334"/>
    <Pago TipoRecibo="4" NumFinca="8970701"/>
    <Pago TipoRecibo="4" NumFinca="1339166"/>
    <Pago TipoRecibo="4" NumFinca="9420897"/>
    <Pago TipoRecibo="4" NumFinca="8209332"/>
    <Pago TipoRecibo="4" NumFinca="3626844"/>
    <Pago TipoRecibo="4" NumFinca="2574148"/>
    <Pago TipoRecibo="4" NumFinca="6433570"/>
    <Pago TipoRecibo="4" NumFinca="2810152"/>
    <Pago TipoRecibo="4" NumFinca="3051540"/>
    <Pago TipoRecibo="4" NumFinca="2730940"/>
    <Pago TipoRecibo="4" NumFinca="1382523"/>
    <Pago TipoRecibo="4" NumFinca="9591266"/>
    <Pago TipoRecibo="4" NumFinca="2045004"/>
    <Pago TipoRecibo="4" NumFinca="8927746"/>
    <Pago TipoRecibo="4" NumFinca="5466890"/>
    <Pago TipoRecibo="4" NumFinca="1389817"/>
    <Pago TipoRecibo="4" NumFinca="1031473"/>
    <Pago TipoRecibo="4" NumFinca="5828584"/>
    <Pago TipoRecibo="4" NumFinca="2179370"/>
    <Pago TipoRecibo="4" NumFinca="9771500"/>
    <Pago TipoRecibo="4" NumFinca="5406404"/>
    <Pago TipoRecibo="4" NumFinca="6512176"/>
    <Pago TipoRecibo="4" NumFinca="5342168"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-08">
    <Propiedad NumFinca="3645908" Valor="21091910" Direccion=" AM-PM, 90 m Noroeste."/>
    <Propiedad NumFinca="6777418" Valor="17568700" Direccion="San Gerardo, 932 m Sur."/>
    <Propiedad NumFinca="7820463" Valor="4351925" Direccion="Urbanización La Pacífica, 293 m Sur."/>
    <Propiedad NumFinca="1253531" Valor="14060617" Direccion="UCR, 427 m Este."/>
    <Propiedad NumFinca="2299692" Valor="24200959" Direccion="El Jardín, 41 m Sur."/>
    <Propiedad NumFinca="8030894" Valor="21835409" Direccion="De Nava Café, 635 m Este."/>
    <Propiedad NumFinca="4501850" Valor="27641805" Direccion="De Nava Café, 640 m Este."/>
    <Propiedad NumFinca="1053119" Valor="25845204" Direccion=" La fuente central, 842 m Sureste."/>
    <Propiedad NumFinca="6720212" Valor="11427476" Direccion="San Joser, 69 m Sur."/>
    <Propiedad NumFinca="9459793" Valor="20722930" Direccion="Las Cascadas, 770 m Sureste."/>
    <Propietario Nombre="Bruno Carrera Nieto" TipoDocIdentidad="1" identificacion="227474161"/>
    <Propietario Nombre="Nicolás Rojo Sanchez" TipoDocIdentidad="1" identificacion="760315952"/>
    <Propietario Nombre="Alejandra Marti Aguilar" TipoDocIdentidad="2" identificacion="820265433"/>
    <Propietario Nombre="Candela Camacho Pozo" TipoDocIdentidad="1" identificacion="555918458"/>
    <Propietario Nombre="Ángel Millan Parra" TipoDocIdentidad="1" identificacion="638727207"/>
    <Propietario Nombre="Adriana Castillo Ballesteros" TipoDocIdentidad="1" identificacion="709735630"/>
    <Propietario Nombre="Lola Jimenez Duran" TipoDocIdentidad="1" identificacion="700868598"/>
    <Propietario Nombre="Sergio Izquierdo Rio" TipoDocIdentidad="1" identificacion="701147722"/>
    <Propietario Nombre="Lucía Sanz Marti" TipoDocIdentidad="1" identificacion="452202343"/>
    <Propietario Nombre="Sergio De La Fuente Gallego" TipoDocIdentidad="1" identificacion="141133945"/>
    <PropiedadVersusPropietario NumFinca="3645908" identificacion="227474161"/>
    <PropiedadVersusPropietario NumFinca="6777418" identificacion="760315952"/>
    <PropiedadVersusPropietario NumFinca="7820463" identificacion="820265433"/>
    <PropiedadVersusPropietario NumFinca="1253531" identificacion="555918458"/>
    <PropiedadVersusPropietario NumFinca="2299692" identificacion="638727207"/>
    <PropiedadVersusPropietario NumFinca="8030894" identificacion="709735630"/>
    <PropiedadVersusPropietario NumFinca="4501850" identificacion="700868598"/>
    <PropiedadVersusPropietario NumFinca="1053119" identificacion="701147722"/>
    <PropiedadVersusPropietario NumFinca="6720212" identificacion="452202343"/>
    <PropiedadVersusPropietario NumFinca="9459793" identificacion="141133945"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3645908"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6777418"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7820463"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1253531"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2299692"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8030894"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4501850"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1053119"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6720212"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9459793"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-09">
    <Propiedad NumFinca="5426691" Valor="23531784" Direccion="Hacienda Vieja, 527 m Este."/>
    <Propiedad NumFinca="3005279" Valor="26373239" Direccion="Urbanización La Pacífica, 126 m Norte."/>
    <Propiedad NumFinca="5908139" Valor="25850879" Direccion="ITEC, 204 m Sur."/>
    <Propiedad NumFinca="9197411" Valor="17126319" Direccion="Santa Rosa, 172 m Suroeste."/>
    <Propiedad NumFinca="7292815" Valor="4282384" Direccion="Calle Vargas, 528 m Noreste."/>
    <Propiedad NumFinca="5488897" Valor="11929546" Direccion="Rio Azul, 472 m Este."/>
    <Propiedad NumFinca="9622855" Valor="5614301" Direccion=" Contrasuli, 400 m Noreste."/>
    <Propiedad NumFinca="7200258" Valor="5017067" Direccion=" Autolavado Nuestra Señora, 193 m Sur."/>
    <Propiedad NumFinca="6970256" Valor="7115612" Direccion="San Gerardo, 248 m Noroeste."/>
    <Propiedad NumFinca="4180337" Valor="11458202" Direccion="El Alto, 232 m Sur."/>
    <Propietario Nombre="Pablo Torre Peña" TipoDocIdentidad="1" identificacion="728763543"/>
    <Propietario Nombre="Candela Carrera Navarro" TipoDocIdentidad="1" identificacion="605289047"/>
    <Propietario Nombre="Emma Puente Medina" TipoDocIdentidad="1" identificacion="412346504"/>
    <Propietario Nombre="José Alonso Cano" TipoDocIdentidad="1" identificacion="716190551"/>
    <Propietario Nombre="Elena Lopez Valle" TipoDocIdentidad="2" identificacion="869866186"/>
    <Propietario Nombre="Irene Vidal Silva" TipoDocIdentidad="1" identificacion="337509266"/>
    <Propietario Nombre="Juan Alonso Montes" TipoDocIdentidad="1" identificacion="193745931"/>
    <Propietario Nombre="Álvaro Carrasco Vargas" TipoDocIdentidad="1" identificacion="208819568"/>
    <Propietario Nombre="Alberto Fernandez Anton" TipoDocIdentidad="1" identificacion="501029808"/>
    <Propietario Nombre="Leire Cano Robles" TipoDocIdentidad="1" identificacion="505785464"/>
    <PropiedadVersusPropietario NumFinca="5426691" identificacion="728763543"/>
    <PropiedadVersusPropietario NumFinca="3005279" identificacion="605289047"/>
    <PropiedadVersusPropietario NumFinca="5908139" identificacion="412346504"/>
    <PropiedadVersusPropietario NumFinca="9197411" identificacion="716190551"/>
    <PropiedadVersusPropietario NumFinca="7292815" identificacion="869866186"/>
    <PropiedadVersusPropietario NumFinca="5488897" identificacion="337509266"/>
    <PropiedadVersusPropietario NumFinca="9622855" identificacion="193745931"/>
    <PropiedadVersusPropietario NumFinca="7200258" identificacion="208819568"/>
    <PropiedadVersusPropietario NumFinca="6970256" identificacion="501029808"/>
    <PropiedadVersusPropietario NumFinca="4180337" identificacion="505785464"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5426691"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3005279"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5908139"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9197411"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7292815"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5488897"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9622855"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7200258"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6970256"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4180337"/>
    <Pago TipoRecibo="7" NumFinca="1423800"/>
    <Pago TipoRecibo="7" NumFinca="1393022"/>
    <Pago TipoRecibo="7" NumFinca="1579482"/>
    <Pago TipoRecibo="7" NumFinca="2239600"/>
    <Pago TipoRecibo="7" NumFinca="1545327"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-10">
    <Propiedad NumFinca="8195591" Valor="23560454" Direccion="Soda el Higueron, 139 m Norte."/>
    <Propiedad NumFinca="3099309" Valor="18536698" Direccion="La Giralda, 391 m Norte."/>
    <Propiedad NumFinca="7543642" Valor="10309877" Direccion="Rio Azul, 567 m Noreste."/>
    <Propiedad NumFinca="7488094" Valor="6004197" Direccion="Cementerio de Santa Rosa, 534 m Noroeste."/>
    <Propiedad NumFinca="8045399" Valor="5743839" Direccion=" Central Electrica, 278 m Sureste."/>
    <Propiedad NumFinca="8747452" Valor="20130871" Direccion="Brasil de Mora, 740 m Este."/>
    <Propiedad NumFinca="3286826" Valor="19304403" Direccion="UCR, 512 m Este."/>
    <Propiedad NumFinca="2681148" Valor="18521815" Direccion=" Hospital Central, 110 m Suroeste."/>
    <Propiedad NumFinca="5831967" Valor="22236603" Direccion="La Francia, 91 m Este."/>
    <Propiedad NumFinca="6906071" Valor="26556470" Direccion="Soda el Higueron, 858 m Sur."/>
    <Propietario Nombre="Darío Gil Rios" TipoDocIdentidad="1" identificacion="118287481"/>
    <Propietario Nombre="Laura Ortiz Guerra" TipoDocIdentidad="1" identificacion="386542912"/>
    <Propietario Nombre="Lola Pereira Calderon" TipoDocIdentidad="1" identificacion="535301061"/>
    <Propietario Nombre="Álvaro Sierra Salvador" TipoDocIdentidad="1" identificacion="625140592"/>
    <Propietario Nombre="Julia Rojas Quintana" TipoDocIdentidad="1" identificacion="131922466"/>
    <Propietario Nombre="Valentina Garcia Villar" TipoDocIdentidad="1" identificacion="773442465"/>
    <Propietario Nombre="Ariadna Santos Vidal" TipoDocIdentidad="1" identificacion="362421742"/>
    <Propietario Nombre="Vera Silva Rodriguez" TipoDocIdentidad="1" identificacion="238661988"/>
    <Propietario Nombre="Marc Rivero Rivero" TipoDocIdentidad="1" identificacion="664055200"/>
    <Propietario Nombre="Carlos Delgado Mateo" TipoDocIdentidad="1" identificacion="633307092"/>
    <PropiedadVersusPropietario NumFinca="8195591" identificacion="118287481"/>
    <PropiedadVersusPropietario NumFinca="3099309" identificacion="386542912"/>
    <PropiedadVersusPropietario NumFinca="7543642" identificacion="535301061"/>
    <PropiedadVersusPropietario NumFinca="7488094" identificacion="625140592"/>
    <PropiedadVersusPropietario NumFinca="8045399" identificacion="131922466"/>
    <PropiedadVersusPropietario NumFinca="8747452" identificacion="773442465"/>
    <PropiedadVersusPropietario NumFinca="3286826" identificacion="362421742"/>
    <PropiedadVersusPropietario NumFinca="2681148" identificacion="238661988"/>
    <PropiedadVersusPropietario NumFinca="5831967" identificacion="664055200"/>
    <PropiedadVersusPropietario NumFinca="6906071" identificacion="633307092"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8195591"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3099309"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7543642"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7488094"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8045399"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8747452"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3286826"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2681148"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5831967"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6906071"/>
    <TransConsumo id="1" LecturaM3="711" descripcion="Cobro Mensual" NumFinca="1750401"/>
    <TransConsumo id="1" LecturaM3="872" descripcion="Cobro Mensual" NumFinca="4121713"/>
    <TransConsumo id="1" LecturaM3="676" descripcion="Cobro Mensual" NumFinca="1605224"/>
    <TransConsumo id="1" LecturaM3="925" descripcion="Cobro Mensual" NumFinca="1423800"/>
    <TransConsumo id="1" LecturaM3="848" descripcion="Cobro Mensual" NumFinca="1568495"/>
    <TransConsumo id="1" LecturaM3="974" descripcion="Cobro Mensual" NumFinca="2291223"/>
    <TransConsumo id="1" LecturaM3="447" descripcion="Cobro Mensual" NumFinca="6832824"/>
    <TransConsumo id="1" LecturaM3="403" descripcion="Cobro Mensual" NumFinca="8583838"/>
    <TransConsumo id="3" LecturaM3="37" descripcion="Lectura errónea" NumFinca="6325448"/>
    <TransConsumo id="2" LecturaM3="22" descripcion="Reclamo de cliente" NumFinca="2101885"/>
    <Pago TipoRecibo="8" NumFinca="1420570"/>
    <Pago TipoRecibo="8" NumFinca="2425954"/>
    <Pago TipoRecibo="8" NumFinca="1339574"/>
    <Pago TipoRecibo="8" NumFinca="7148454"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-11">
    <Propiedad NumFinca="5680609" Valor="21430457" Direccion=" Hospital Central, 480 m Sur."/>
    <Propiedad NumFinca="8450452" Valor="18064274" Direccion="Residencias Pacific Sun, 546 m Noroeste."/>
    <Propiedad NumFinca="2895405" Valor="19986145" Direccion="Canoas, 571 m Sur."/>
    <Propiedad NumFinca="7735736" Valor="22808986" Direccion="Brasil de Mora, 261 m Oeste."/>
    <Propiedad NumFinca="7895153" Valor="21847319" Direccion="Cementerio de Santa Rosa, 251 m Sur."/>
    <Propiedad NumFinca="8607532" Valor="6557554" Direccion="Iglesia Católica de Cartago Norte, 829 m Norte."/>
    <Propiedad NumFinca="5480590" Valor="19039159" Direccion="Manzanar, 465 m Noreste."/>
    <Propiedad NumFinca="6753927" Valor="16600890" Direccion="Banco Nacional, 584 m Sureste."/>
    <Propiedad NumFinca="9766737" Valor="24794735" Direccion=" AM-PM, 718 m Noroeste."/>
    <Propiedad NumFinca="5883420" Valor="17553650" Direccion="Banco Nacional, 442 m Sur."/>
    <Propietario Nombre="Valentina Plaza Moreno" TipoDocIdentidad="1" identificacion="247859329"/>
    <Propietario Nombre="Ariadna Carrasco Rey" TipoDocIdentidad="1" identificacion="431584170"/>
    <Propietario Nombre="Carlos Rubio Guerrero" TipoDocIdentidad="1" identificacion="436637133"/>
    <Propietario Nombre="Jimena Velasco Garrido" TipoDocIdentidad="1" identificacion="489045441"/>
    <Propietario Nombre="Diego Gil Salvador" TipoDocIdentidad="1" identificacion="515613463"/>
    <Propietario Nombre="Ainhoa Miguel Miguel" TipoDocIdentidad="1" identificacion="508330010"/>
    <Propietario Nombre="Julia Millan Caballero" TipoDocIdentidad="2" identificacion="875116310"/>
    <Propietario Nombre="Marcos Benitez Mendoza" TipoDocIdentidad="1" identificacion="301243551"/>
    <Propietario Nombre="Adriana Gallego Ibañez" TipoDocIdentidad="1" identificacion="544749176"/>
    <Propietario Nombre="Ariadna Ferrer Contreras" TipoDocIdentidad="1" identificacion="591446769"/>
    <PropiedadVersusPropietario NumFinca="5680609" identificacion="247859329"/>
    <PropiedadVersusPropietario NumFinca="8450452" identificacion="431584170"/>
    <PropiedadVersusPropietario NumFinca="2895405" identificacion="436637133"/>
    <PropiedadVersusPropietario NumFinca="7735736" identificacion="489045441"/>
    <PropiedadVersusPropietario NumFinca="7895153" identificacion="515613463"/>
    <PropiedadVersusPropietario NumFinca="8607532" identificacion="508330010"/>
    <PropiedadVersusPropietario NumFinca="5480590" identificacion="875116310"/>
    <PropiedadVersusPropietario NumFinca="6753927" identificacion="301243551"/>
    <PropiedadVersusPropietario NumFinca="9766737" identificacion="544749176"/>
    <PropiedadVersusPropietario NumFinca="5883420" identificacion="591446769"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5680609"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8450452"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2895405"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7735736"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7895153"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8607532"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5480590"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6753927"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9766737"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5883420"/>
    <TransConsumo id="1" LecturaM3="945" descripcion="Cobro Mensual" NumFinca="4782873"/>
    <TransConsumo id="1" LecturaM3="333" descripcion="Cobro Mensual" NumFinca="3159179"/>
    <TransConsumo id="1" LecturaM3="361" descripcion="Cobro Mensual" NumFinca="3312213"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-12">
    <Propiedad NumFinca="8656352" Valor="15731719" Direccion=" MasxMenos, 204 m Norte."/>
    <Propiedad NumFinca="3804031" Valor="22239501" Direccion="San Joser, 80 m Noreste."/>
    <Propiedad NumFinca="8424739" Valor="7570659" Direccion=" La fuente central, 566 m Norte."/>
    <Propiedad NumFinca="5891079" Valor="28291356" Direccion=" UNA, 634 m Sureste."/>
    <Propiedad NumFinca="6890006" Valor="18889610" Direccion=" Maxi Pali, 793 m Suroeste."/>
    <Propiedad NumFinca="6016065" Valor="23377781" Direccion="Calle Vargas, 110 m Noroeste."/>
    <Propiedad NumFinca="9652577" Valor="29672749" Direccion="Manzanar, 563 m Suroeste."/>
    <Propiedad NumFinca="1961703" Valor="16212189" Direccion="Residencias Pacific Sun, 925 m Suroeste."/>
    <Propiedad NumFinca="8383136" Valor="9300392" Direccion="La Giralda, 926 m Este."/>
    <Propiedad NumFinca="4065289" Valor="23006217" Direccion=" La Paz, 54 m Suroeste."/>
    <Propietario Nombre="Oliver Pascual Anton" TipoDocIdentidad="1" identificacion="410235029"/>
    <Propietario Nombre="Iker Vila Reyes" TipoDocIdentidad="1" identificacion="784345326"/>
    <Propietario Nombre="Carlota Lopez Nieto" TipoDocIdentidad="1" identificacion="467047126"/>
    <Propietario Nombre="Inés Hidalgo Cuesta" TipoDocIdentidad="1" identificacion="443246887"/>
    <Propietario Nombre="Claudia Vila Iglesias" TipoDocIdentidad="2" identificacion="893601531"/>
    <Propietario Nombre="Laura Valle Herrera" TipoDocIdentidad="2" identificacion="871769574"/>
    <Propietario Nombre="Iker Roman Andres" TipoDocIdentidad="2" identificacion="873885727"/>
    <Propietario Nombre="Jesús Santos Otero" TipoDocIdentidad="1" identificacion="379750894"/>
    <Propietario Nombre="Sofía Santos Mateos" TipoDocIdentidad="1" identificacion="167609427"/>
    <Propietario Nombre="Pablo Exposito Calvo" TipoDocIdentidad="1" identificacion="524131520"/>
    <PropiedadVersusPropietario NumFinca="8656352" identificacion="410235029"/>
    <PropiedadVersusPropietario NumFinca="3804031" identificacion="784345326"/>
    <PropiedadVersusPropietario NumFinca="8424739" identificacion="467047126"/>
    <PropiedadVersusPropietario NumFinca="5891079" identificacion="443246887"/>
    <PropiedadVersusPropietario NumFinca="6890006" identificacion="893601531"/>
    <PropiedadVersusPropietario NumFinca="6016065" identificacion="871769574"/>
    <PropiedadVersusPropietario NumFinca="9652577" identificacion="873885727"/>
    <PropiedadVersusPropietario NumFinca="1961703" identificacion="379750894"/>
    <PropiedadVersusPropietario NumFinca="8383136" identificacion="167609427"/>
    <PropiedadVersusPropietario NumFinca="4065289" identificacion="524131520"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8656352"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3804031"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8424739"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5891079"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6890006"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6016065"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9652577"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1961703"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8383136"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4065289"/>
    <CambioPropiedad NumFinca="1298862" NuevoValor="3475107"/>
    <CambioPropiedad NumFinca="3745857" NuevoValor="6854131"/>
    <TransConsumo id="1" LecturaM3="771" descripcion="Cobro Mensual" NumFinca="6325448"/>
    <TransConsumo id="1" LecturaM3="727" descripcion="Cobro Mensual" NumFinca="6766683"/>
    <TransConsumo id="1" LecturaM3="820" descripcion="Cobro Mensual" NumFinca="6736147"/>
    <TransConsumo id="1" LecturaM3="489" descripcion="Cobro Mensual" NumFinca="9365866"/>
    <TransConsumo id="3" LecturaM3="47" descripcion="Lectura errónea" NumFinca="1176180"/>
    <TransConsumo id="3" LecturaM3="30" descripcion="Lectura errónea" NumFinca="1118180"/>
    <Pago TipoRecibo="3" NumFinca="6526774"/>
    <Pago TipoRecibo="3" NumFinca="2888543"/>
    <Pago TipoRecibo="3" NumFinca="4569644"/>
    <Pago TipoRecibo="3" NumFinca="1714464"/>
    <Pago TipoRecibo="3" NumFinca="1176180"/>
    <Pago TipoRecibo="3" NumFinca="1394522"/>
    <Pago TipoRecibo="3" NumFinca="1423800"/>
    <Pago TipoRecibo="3" NumFinca="2291223"/>
    <Pago TipoRecibo="3" NumFinca="9907089"/>
    <Pago TipoRecibo="3" NumFinca="4828218"/>
    <Pago TipoRecibo="3" NumFinca="7539590"/>
    <Pago TipoRecibo="3" NumFinca="1212294"/>
    <Pago TipoRecibo="3" NumFinca="1476188"/>
    <Pago TipoRecibo="3" NumFinca="4182870"/>
    <Pago TipoRecibo="3" NumFinca="2734696"/>
    <Pago TipoRecibo="3" NumFinca="8743195"/>
    <Pago TipoRecibo="3" NumFinca="9072945"/>
    <Pago TipoRecibo="3" NumFinca="9538337"/>
    <Pago TipoRecibo="3" NumFinca="7238495"/>
    <Pago TipoRecibo="3" NumFinca="4184252"/>
    <Pago TipoRecibo="3" NumFinca="4193112"/>
    <Pago TipoRecibo="3" NumFinca="6527953"/>
    <Pago TipoRecibo="3" NumFinca="9380786"/>
    <Pago TipoRecibo="3" NumFinca="7991150"/>
    <Pago TipoRecibo="3" NumFinca="7762610"/>
    <Pago TipoRecibo="3" NumFinca="2789388"/>
    <Pago TipoRecibo="3" NumFinca="9082340"/>
    <Pago TipoRecibo="3" NumFinca="9363951"/>
    <Pago TipoRecibo="3" NumFinca="8076596"/>
    <Pago TipoRecibo="3" NumFinca="9944467"/>
    <Pago TipoRecibo="3" NumFinca="8717485"/>
    <Pago TipoRecibo="3" NumFinca="8500064"/>
    <Pago TipoRecibo="3" NumFinca="2407485"/>
    <Pago TipoRecibo="3" NumFinca="2360478"/>
    <Pago TipoRecibo="3" NumFinca="2281645"/>
    <Pago TipoRecibo="3" NumFinca="3623306"/>
    <Pago TipoRecibo="3" NumFinca="6838727"/>
    <Pago TipoRecibo="3" NumFinca="8154453"/>
    <Pago TipoRecibo="3" NumFinca="5759986"/>
    <Pago TipoRecibo="3" NumFinca="2450807"/>
    <Pago TipoRecibo="3" NumFinca="9358386"/>
    <Pago TipoRecibo="3" NumFinca="3610606"/>
    <Pago TipoRecibo="3" NumFinca="8558350"/>
    <Pago TipoRecibo="3" NumFinca="7021501"/>
    <Pago TipoRecibo="3" NumFinca="7651166"/>
    <Pago TipoRecibo="3" NumFinca="6120307"/>
    <Pago TipoRecibo="3" NumFinca="5706265"/>
    <Pago TipoRecibo="3" NumFinca="8978244"/>
    <Pago TipoRecibo="3" NumFinca="1328804"/>
    <Pago TipoRecibo="3" NumFinca="1995705"/>
    <Pago TipoRecibo="3" NumFinca="2913367"/>
    <Pago TipoRecibo="3" NumFinca="5605527"/>
    <Pago TipoRecibo="3" NumFinca="9060769"/>
    <Pago TipoRecibo="3" NumFinca="8200826"/>
    <Pago TipoRecibo="3" NumFinca="2725968"/>
    <Pago TipoRecibo="3" NumFinca="2962597"/>
    <Pago TipoRecibo="3" NumFinca="9998670"/>
    <Pago TipoRecibo="3" NumFinca="8152275"/>
    <Pago TipoRecibo="3" NumFinca="6404248"/>
    <Pago TipoRecibo="3" NumFinca="5273794"/>
    <Pago TipoRecibo="3" NumFinca="9053097"/>
    <Pago TipoRecibo="3" NumFinca="6217470"/>
    <Pago TipoRecibo="3" NumFinca="1734510"/>
    <Pago TipoRecibo="3" NumFinca="9048469"/>
    <Pago TipoRecibo="3" NumFinca="8030894"/>
    <Pago TipoRecibo="3" NumFinca="4501850"/>
    <Pago TipoRecibo="3" NumFinca="7292815"/>
    <Pago TipoRecibo="3" NumFinca="8195591"/>
    <Pago TipoRecibo="3" NumFinca="7543642"/>
    <Pago TipoRecibo="3" NumFinca="3286826"/>
    <Pago TipoRecibo="3" NumFinca="5883420"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-13">
    <Propiedad NumFinca="3649021" Valor="7842066" Direccion="De Nava Café, 528 m Norte."/>
    <Propiedad NumFinca="3062469" Valor="22702530" Direccion=" Contrasuli, 59 m Norte."/>
    <Propiedad NumFinca="3251421" Valor="10419261" Direccion=" Hospital Central, 274 m Este."/>
    <Propiedad NumFinca="5135972" Valor="13968777" Direccion="Brasil de Mora, 800 m Noreste."/>
    <Propiedad NumFinca="5929358" Valor="10496559" Direccion="El Alto, 44 m Oeste."/>
    <Propiedad NumFinca="2009936" Valor="12059341" Direccion=" Hospital Central, 573 m Noroeste."/>
    <Propiedad NumFinca="1886356" Valor="13204814" Direccion=" UNA, 77 m Oeste."/>
    <Propiedad NumFinca="1983339" Valor="24937942" Direccion="UCR, 583 m Noroeste."/>
    <Propiedad NumFinca="9601548" Valor="25086349" Direccion="Soda la Paz, 267 m Suroeste."/>
    <Propiedad NumFinca="2121748" Valor="26184271" Direccion="Canoas, 402 m Oeste."/>
    <Propietario Nombre="Marc Sierra Villanueva" TipoDocIdentidad="1" identificacion="634663024"/>
    <Propietario Nombre="Alicia Castro Hidalgo" TipoDocIdentidad="1" identificacion="148781381"/>
    <Propietario Nombre="Rocío Guillen Merino" TipoDocIdentidad="1" identificacion="550457564"/>
    <Propietario Nombre="Alma San Soto" TipoDocIdentidad="1" identificacion="455355847"/>
    <Propietario Nombre="Miguel Valero Camacho" TipoDocIdentidad="1" identificacion="617424991"/>
    <Propietario Nombre="Daniela Rojas Morales" TipoDocIdentidad="2" identificacion="868493872"/>
    <Propietario Nombre="Leire Gonzalez Fernandez" TipoDocIdentidad="2" identificacion="816510613"/>
    <Propietario Nombre="Alberto Benito Rivas" TipoDocIdentidad="1" identificacion="482546242"/>
    <Propietario Nombre="Bruno Castaño Lazaro" TipoDocIdentidad="1" identificacion="442790369"/>
    <Propietario Nombre="José Mendoza Exposito" TipoDocIdentidad="2" identificacion="880697794"/>
    <PropiedadVersusPropietario NumFinca="3649021" identificacion="634663024"/>
    <PropiedadVersusPropietario NumFinca="3062469" identificacion="148781381"/>
    <PropiedadVersusPropietario NumFinca="3251421" identificacion="550457564"/>
    <PropiedadVersusPropietario NumFinca="5135972" identificacion="455355847"/>
    <PropiedadVersusPropietario NumFinca="5929358" identificacion="617424991"/>
    <PropiedadVersusPropietario NumFinca="2009936" identificacion="868493872"/>
    <PropiedadVersusPropietario NumFinca="1886356" identificacion="816510613"/>
    <PropiedadVersusPropietario NumFinca="1983339" identificacion="482546242"/>
    <PropiedadVersusPropietario NumFinca="9601548" identificacion="442790369"/>
    <PropiedadVersusPropietario NumFinca="2121748" identificacion="880697794"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3649021"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3062469"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3251421"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5135972"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5929358"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2009936"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1886356"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1983339"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9601548"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2121748"/>
    <TransConsumo id="1" LecturaM3="768" descripcion="Cobro Mensual" NumFinca="1858970"/>
    <TransConsumo id="1" LecturaM3="880" descripcion="Cobro Mensual" NumFinca="2101885"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-14">
    <TransConsumo id="1" LecturaM3="963" descripcion="Cobro Mensual" NumFinca="6722024"/>
    <TransConsumo id="1" LecturaM3="762" descripcion="Cobro Mensual" NumFinca="5310895"/>
    <TransConsumo id="1" LecturaM3="912" descripcion="Cobro Mensual" NumFinca="3443064"/>
    <TransConsumo id="1" LecturaM3="839" descripcion="Cobro Mensual" NumFinca="7254630"/>
    <TransConsumo id="1" LecturaM3="753" descripcion="Cobro Mensual" NumFinca="3901661"/>
    <TransConsumo id="1" LecturaM3="722" descripcion="Cobro Mensual" NumFinca="6883678"/>
    <TransConsumo id="3" LecturaM3="41" descripcion="Lectura errónea" NumFinca="7254630"/>
    <TransConsumo id="3" LecturaM3="3" descripcion="Lectura errónea" NumFinca="5612982"/>
    <Pago TipoRecibo="2" NumFinca="3178673"/>
    <Pago TipoRecibo="2" NumFinca="1424417"/>
    <Pago TipoRecibo="2" NumFinca="1176180"/>
    <Pago TipoRecibo="2" NumFinca="1394522"/>
    <Pago TipoRecibo="2" NumFinca="1750401"/>
    <Pago TipoRecibo="2" NumFinca="4121713"/>
    <Pago TipoRecibo="2" NumFinca="1423800"/>
    <Pago TipoRecibo="2" NumFinca="2291223"/>
    <Pago TipoRecibo="2" NumFinca="5694094"/>
    <Pago TipoRecibo="2" NumFinca="7301730"/>
    <Pago TipoRecibo="2" NumFinca="3081243"/>
    <Pago TipoRecibo="2" NumFinca="7929322"/>
    <Pago TipoRecibo="2" NumFinca="5086841"/>
    <Pago TipoRecibo="2" NumFinca="1201330"/>
    <Pago TipoRecibo="2" NumFinca="6215848"/>
    <Pago TipoRecibo="2" NumFinca="9373199"/>
    <Pago TipoRecibo="2" NumFinca="7253078"/>
    <Pago TipoRecibo="2" NumFinca="6741380"/>
    <Pago TipoRecibo="2" NumFinca="8719164"/>
    <Pago TipoRecibo="2" NumFinca="1514282"/>
    <Pago TipoRecibo="2" NumFinca="2205723"/>
    <Pago TipoRecibo="2" NumFinca="6531847"/>
    <Pago TipoRecibo="2" NumFinca="1298862"/>
    <Pago TipoRecibo="2" NumFinca="3130126"/>
    <Pago TipoRecibo="2" NumFinca="5109920"/>
    <Pago TipoRecibo="2" NumFinca="1247220"/>
    <Pago TipoRecibo="2" NumFinca="1130552"/>
    <Pago TipoRecibo="2" NumFinca="4515090"/>
    <Pago TipoRecibo="2" NumFinca="2463803"/>
    <Pago TipoRecibo="2" NumFinca="7965590"/>
    <Pago TipoRecibo="2" NumFinca="4514551"/>
    <Pago TipoRecibo="2" NumFinca="7229874"/>
    <Pago TipoRecibo="2" NumFinca="1075105"/>
    <Pago TipoRecibo="2" NumFinca="7661654"/>
    <Pago TipoRecibo="2" NumFinca="4805505"/>
    <Pago TipoRecibo="2" NumFinca="1041312"/>
    <Pago TipoRecibo="2" NumFinca="4786459"/>
    <Pago TipoRecibo="2" NumFinca="9406874"/>
    <Pago TipoRecibo="2" NumFinca="9860743"/>
    <Pago TipoRecibo="2" NumFinca="6792148"/>
    <Pago TipoRecibo="2" NumFinca="7416445"/>
    <Pago TipoRecibo="2" NumFinca="7748824"/>
    <Pago TipoRecibo="2" NumFinca="5434825"/>
    <Pago TipoRecibo="2" NumFinca="3598213"/>
    <Pago TipoRecibo="2" NumFinca="9597064"/>
    <Pago TipoRecibo="2" NumFinca="3407892"/>
    <Pago TipoRecibo="2" NumFinca="4686808"/>
    <Pago TipoRecibo="2" NumFinca="4012617"/>
    <Pago TipoRecibo="2" NumFinca="9031163"/>
    <Pago TipoRecibo="2" NumFinca="2692524"/>
    <Pago TipoRecibo="2" NumFinca="6896983"/>
    <Pago TipoRecibo="2" NumFinca="5396190"/>
    <Pago TipoRecibo="2" NumFinca="7794993"/>
    <Pago TipoRecibo="2" NumFinca="8511183"/>
    <Pago TipoRecibo="2" NumFinca="7143966"/>
    <Pago TipoRecibo="2" NumFinca="4326248"/>
    <Pago TipoRecibo="2" NumFinca="9971625"/>
    <Pago TipoRecibo="2" NumFinca="7608458"/>
    <Pago TipoRecibo="2" NumFinca="9622855"/>
    <Pago TipoRecibo="2" NumFinca="7488094"/>
    <Pago TipoRecibo="2" NumFinca="5680609"/>
    <Pago TipoRecibo="2" NumFinca="8450452"/>
    <Pago TipoRecibo="2" NumFinca="2895405"/>
    <Pago TipoRecibo="2" NumFinca="7735736"/>
    <Pago TipoRecibo="2" NumFinca="7895153"/>
    <Pago TipoRecibo="2" NumFinca="8607532"/>
    <Pago TipoRecibo="2" NumFinca="1961703"/>
    <Pago TipoRecibo="2" NumFinca="5135972"/>
    <Pago TipoRecibo="2" NumFinca="5929358"/>
    <Pago TipoRecibo="2" NumFinca="2009936"/>
    <Pago TipoRecibo="2" NumFinca="9601548"/>
    <Pago TipoRecibo="2" NumFinca="2121748"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-15">
    <Propiedad NumFinca="6601202" Valor="19155302" Direccion="San Rafael, 287 m Sur."/>
    <Propiedad NumFinca="6377628" Valor="29055314" Direccion=" Maxi Pali, 531 m Suroeste."/>
    <Propiedad NumFinca="1103822" Valor="23819367" Direccion="Soda el Higueron, 525 m Este."/>
    <Propiedad NumFinca="7502052" Valor="10925272" Direccion=" La Paz, 866 m Este."/>
    <Propiedad NumFinca="5010544" Valor="8055745" Direccion="Iglesia Católica de Cartago Norte, 330 m Sur."/>
    <Propiedad NumFinca="5728652" Valor="9640007" Direccion="Astua Pirie, 759 m Sur."/>
    <Propiedad NumFinca="6266789" Valor="27753885" Direccion="Manzanar, 108 m Este."/>
    <Propiedad NumFinca="2048658" Valor="7627443" Direccion="Cuestillas, 400 m Norte."/>
    <Propiedad NumFinca="8077121" Valor="4793685" Direccion="Iglesia Católica de Cartago Norte, 226 m Noreste."/>
    <Propiedad NumFinca="3426163" Valor="22223475" Direccion="Urbanización La Pacífica, 583 m Norte."/>
    <Propietario Nombre="Diego Perez Costa" TipoDocIdentidad="1" identificacion="503577927"/>
    <Propietario Nombre="Rocío Prado Cano" TipoDocIdentidad="1" identificacion="454788315"/>
    <Propietario Nombre="Elsa Hernandez Salas" TipoDocIdentidad="1" identificacion="581744552"/>
    <Propietario Nombre="Nerea Espinosa Lozano" TipoDocIdentidad="1" identificacion="178497422"/>
    <Propietario Nombre="Ana Martinez Montero" TipoDocIdentidad="1" identificacion="582578707"/>
    <Propietario Nombre="Elena Perez Otero" TipoDocIdentidad="1" identificacion="350375603"/>
    <Propietario Nombre="Blanca Izquierdo Arroyo" TipoDocIdentidad="1" identificacion="644066169"/>
    <Propietario Nombre="Laia Rico Villanueva" TipoDocIdentidad="1" identificacion="519047354"/>
    <Propietario Nombre="Aitana Mateos Varela" TipoDocIdentidad="1" identificacion="529980653"/>
    <Propietario Nombre="Marina Benito Salvador" TipoDocIdentidad="1" identificacion="726342470"/>
    <PropiedadVersusPropietario NumFinca="6601202" identificacion="503577927"/>
    <PropiedadVersusPropietario NumFinca="6377628" identificacion="454788315"/>
    <PropiedadVersusPropietario NumFinca="1103822" identificacion="581744552"/>
    <PropiedadVersusPropietario NumFinca="7502052" identificacion="178497422"/>
    <PropiedadVersusPropietario NumFinca="5010544" identificacion="582578707"/>
    <PropiedadVersusPropietario NumFinca="5728652" identificacion="350375603"/>
    <PropiedadVersusPropietario NumFinca="6266789" identificacion="644066169"/>
    <PropiedadVersusPropietario NumFinca="2048658" identificacion="519047354"/>
    <PropiedadVersusPropietario NumFinca="8077121" identificacion="529980653"/>
    <PropiedadVersusPropietario NumFinca="3426163" identificacion="726342470"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6601202"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6377628"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1103822"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7502052"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5010544"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5728652"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6266789"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2048658"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8077121"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3426163"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-16">
    <Propiedad NumFinca="7636857" Valor="13318475" Direccion="Manzanar, 427 m Noroeste."/>
    <Propiedad NumFinca="2380059" Valor="20726017" Direccion="Urbanización La Fundación, 929 m Suroeste."/>
    <Propiedad NumFinca="8996858" Valor="28789808" Direccion="Orotina, 491 m Sur."/>
    <Propiedad NumFinca="5067204" Valor="12642957" Direccion=" Lumaca, 408 m Noreste."/>
    <Propiedad NumFinca="7009929" Valor="15738488" Direccion=" Río Camarón, 650 m Norte."/>
    <Propiedad NumFinca="1124659" Valor="4119750" Direccion=" Maxi Pali, 267 m Sureste."/>
    <Propiedad NumFinca="4285557" Valor="29399815" Direccion="Urbanización La Pacífica, 299 m Norte."/>
    <Propiedad NumFinca="6278640" Valor="8769741" Direccion="Manzanar, 283 m Suroeste."/>
    <Propiedad NumFinca="7369246" Valor="11245730" Direccion="Canoas, 908 m Oeste."/>
    <Propiedad NumFinca="4473302" Valor="22357603" Direccion="San Gerardo, 215 m Sureste."/>
    <Propietario Nombre="Elsa Ortiz Vega" TipoDocIdentidad="1" identificacion="446742525"/>
    <Propietario Nombre="Lucía Beltran Torres" TipoDocIdentidad="1" identificacion="318975542"/>
    <Propietario Nombre="Alma Segura Sierra" TipoDocIdentidad="1" identificacion="548167818"/>
    <Propietario Nombre="Hugo Lazaro Leon" TipoDocIdentidad="1" identificacion="113224288"/>
    <Propietario Nombre="Álvaro Muñoz Sancho" TipoDocIdentidad="2" identificacion="875320658"/>
    <Propietario Nombre="Manuel Calderon Martin" TipoDocIdentidad="1" identificacion="196694051"/>
    <Propietario Nombre="Gonzalo Pascual Rey" TipoDocIdentidad="1" identificacion="669796777"/>
    <Propietario Nombre="Víctor Paz Izquierdo" TipoDocIdentidad="2" identificacion="855216366"/>
    <Propietario Nombre="Antonio Blanco Marti" TipoDocIdentidad="1" identificacion="135029147"/>
    <Propietario Nombre="Samuel Gallardo Miguel" TipoDocIdentidad="1" identificacion="723910934"/>
    <PropiedadVersusPropietario NumFinca="7636857" identificacion="446742525"/>
    <PropiedadVersusPropietario NumFinca="2380059" identificacion="318975542"/>
    <PropiedadVersusPropietario NumFinca="8996858" identificacion="548167818"/>
    <PropiedadVersusPropietario NumFinca="5067204" identificacion="113224288"/>
    <PropiedadVersusPropietario NumFinca="7009929" identificacion="875320658"/>
    <PropiedadVersusPropietario NumFinca="1124659" identificacion="196694051"/>
    <PropiedadVersusPropietario NumFinca="4285557" identificacion="669796777"/>
    <PropiedadVersusPropietario NumFinca="6278640" identificacion="855216366"/>
    <PropiedadVersusPropietario NumFinca="7369246" identificacion="135029147"/>
    <PropiedadVersusPropietario NumFinca="4473302" identificacion="723910934"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7636857"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2380059"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8996858"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5067204"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7009929"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1124659"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4285557"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6278640"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7369246"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4473302"/>
    <TransConsumo id="1" LecturaM3="341" descripcion="Cobro Mensual" NumFinca="9597151"/>
    <TransConsumo id="1" LecturaM3="314" descripcion="Cobro Mensual" NumFinca="3745857"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-17">
    <Propiedad NumFinca="7129945" Valor="18248175" Direccion="Cuestillas, 283 m Sur."/>
    <Propiedad NumFinca="7325176" Valor="3353146" Direccion="Banco Nacional, 378 m Suroeste."/>
    <Propiedad NumFinca="9575957" Valor="14201308" Direccion=" La fuente central, 580 m Sur."/>
    <Propiedad NumFinca="5228864" Valor="28958471" Direccion=" UNA, 761 m Este."/>
    <Propiedad NumFinca="4419192" Valor="3756259" Direccion="Soda el Higueron, 25 m Sur."/>
    <Propiedad NumFinca="5742845" Valor="24156791" Direccion="Soda el Higueron, 626 m Noroeste."/>
    <Propiedad NumFinca="1074869" Valor="21452173" Direccion=" La Paz, 609 m Norte."/>
    <Propiedad NumFinca="8932418" Valor="22958289" Direccion="El Jardín, 924 m Suroeste."/>
    <Propiedad NumFinca="2866079" Valor="9120092" Direccion="San Felipe, 645 m Noroeste."/>
    <Propiedad NumFinca="7308269" Valor="13523270" Direccion="Manzanar, 804 m Sur."/>
    <Propietario Nombre="Elsa Santiago Lopez" TipoDocIdentidad="1" identificacion="212815677"/>
    <Propietario Nombre="Marcos Arias Izquierdo" TipoDocIdentidad="1" identificacion="660680130"/>
    <Propietario Nombre="Laia Juan Sanchez" TipoDocIdentidad="2" identificacion="892200184"/>
    <Propietario Nombre="Sergio Espinosa Fuente" TipoDocIdentidad="1" identificacion="649759620"/>
    <Propietario Nombre="Carlos Romero Rey" TipoDocIdentidad="1" identificacion="738791221"/>
    <Propietario Nombre="Vega Roldan Merino" TipoDocIdentidad="1" identificacion="310918204"/>
    <Propietario Nombre="Manuel Simon Pardo" TipoDocIdentidad="1" identificacion="749365170"/>
    <Propietario Nombre="Marta Gil Soto" TipoDocIdentidad="1" identificacion="171551468"/>
    <Propietario Nombre="Lara Carrasco Ramirez" TipoDocIdentidad="1" identificacion="545624533"/>
    <Propietario Nombre="Olivia Velasco Rosa" TipoDocIdentidad="1" identificacion="519709731"/>
    <PropiedadVersusPropietario NumFinca="7129945" identificacion="212815677"/>
    <PropiedadVersusPropietario NumFinca="7325176" identificacion="660680130"/>
    <PropiedadVersusPropietario NumFinca="9575957" identificacion="892200184"/>
    <PropiedadVersusPropietario NumFinca="5228864" identificacion="649759620"/>
    <PropiedadVersusPropietario NumFinca="4419192" identificacion="738791221"/>
    <PropiedadVersusPropietario NumFinca="5742845" identificacion="310918204"/>
    <PropiedadVersusPropietario NumFinca="1074869" identificacion="749365170"/>
    <PropiedadVersusPropietario NumFinca="8932418" identificacion="171551468"/>
    <PropiedadVersusPropietario NumFinca="2866079" identificacion="545624533"/>
    <PropiedadVersusPropietario NumFinca="7308269" identificacion="519709731"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7129945"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7325176"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9575957"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5228864"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4419192"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5742845"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1074869"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8932418"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2866079"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7308269"/>
    <TransConsumo id="1" LecturaM3="940" descripcion="Cobro Mensual" NumFinca="2287722"/>
    <Pago TipoRecibo="6" NumFinca="7040783"/>
    <Pago TipoRecibo="6" NumFinca="1042185"/>
    <Pago TipoRecibo="6" NumFinca="4400689"/>
    <Pago TipoRecibo="6" NumFinca="1394522"/>
    <Pago TipoRecibo="6" NumFinca="1750401"/>
    <Pago TipoRecibo="6" NumFinca="4121713"/>
    <Pago TipoRecibo="6" NumFinca="1420570"/>
    <Pago TipoRecibo="6" NumFinca="4162559"/>
    <Pago TipoRecibo="6" NumFinca="2291223"/>
    <Pago TipoRecibo="6" NumFinca="4901706"/>
    <Pago TipoRecibo="6" NumFinca="4896538"/>
    <Pago TipoRecibo="6" NumFinca="4207552"/>
    <Pago TipoRecibo="6" NumFinca="8584160"/>
    <Pago TipoRecibo="6" NumFinca="5308209"/>
    <Pago TipoRecibo="6" NumFinca="1368271"/>
    <Pago TipoRecibo="6" NumFinca="8513969"/>
    <Pago TipoRecibo="6" NumFinca="4987514"/>
    <Pago TipoRecibo="6" NumFinca="2481735"/>
    <Pago TipoRecibo="6" NumFinca="1480840"/>
    <Pago TipoRecibo="6" NumFinca="2103983"/>
    <Pago TipoRecibo="6" NumFinca="4203725"/>
    <Pago TipoRecibo="6" NumFinca="1514445"/>
    <Pago TipoRecibo="6" NumFinca="1527660"/>
    <Pago TipoRecibo="6" NumFinca="2134489"/>
    <Pago TipoRecibo="6" NumFinca="5518445"/>
    <Pago TipoRecibo="6" NumFinca="1230183"/>
    <Pago TipoRecibo="6" NumFinca="7804860"/>
    <Pago TipoRecibo="6" NumFinca="7631082"/>
    <Pago TipoRecibo="6" NumFinca="3487316"/>
    <Pago TipoRecibo="6" NumFinca="3558821"/>
    <Pago TipoRecibo="6" NumFinca="9760688"/>
    <Pago TipoRecibo="6" NumFinca="6914115"/>
    <Pago TipoRecibo="6" NumFinca="7321231"/>
    <Pago TipoRecibo="6" NumFinca="8088162"/>
    <Pago TipoRecibo="6" NumFinca="8583828"/>
    <Pago TipoRecibo="6" NumFinca="1377010"/>
    <Pago TipoRecibo="6" NumFinca="2371257"/>
    <Pago TipoRecibo="6" NumFinca="3660611"/>
    <Pago TipoRecibo="6" NumFinca="1190024"/>
    <Pago TipoRecibo="6" NumFinca="4188723"/>
    <Pago TipoRecibo="6" NumFinca="2318994"/>
    <Pago TipoRecibo="6" NumFinca="8647522"/>
    <Pago TipoRecibo="6" NumFinca="7735977"/>
    <Pago TipoRecibo="6" NumFinca="8669107"/>
    <Pago TipoRecibo="6" NumFinca="1849959"/>
    <Pago TipoRecibo="6" NumFinca="5067735"/>
    <Pago TipoRecibo="6" NumFinca="2664388"/>
    <Pago TipoRecibo="6" NumFinca="4564012"/>
    <Pago TipoRecibo="6" NumFinca="7235520"/>
    <Pago TipoRecibo="6" NumFinca="7736703"/>
    <Pago TipoRecibo="6" NumFinca="9693383"/>
    <Pago TipoRecibo="6" NumFinca="6247645"/>
    <Pago TipoRecibo="6" NumFinca="1306106"/>
    <Pago TipoRecibo="6" NumFinca="2462335"/>
    <Pago TipoRecibo="6" NumFinca="1053119"/>
    <Pago TipoRecibo="6" NumFinca="6720212"/>
    <Pago TipoRecibo="6" NumFinca="9197411"/>
    <Pago TipoRecibo="6" NumFinca="6970256"/>
    <Pago TipoRecibo="6" NumFinca="6753927"/>
    <Pago TipoRecibo="6" NumFinca="9766737"/>
    <Pago TipoRecibo="6" NumFinca="5891079"/>
    <Pago TipoRecibo="6" NumFinca="8383136"/>
    <Pago TipoRecibo="6" NumFinca="6601202"/>
    <Pago TipoRecibo="6" NumFinca="6377628"/>
    <Pago TipoRecibo="6" NumFinca="5728652"/>
    <Pago TipoRecibo="6" NumFinca="2048658"/>
    <Pago TipoRecibo="6" NumFinca="7636857"/>
    <Pago TipoRecibo="6" NumFinca="4473302"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-18">
    <Propiedad NumFinca="8931737" Valor="27620895" Direccion="Ciruelas, 591 m Norte."/>
    <Propiedad NumFinca="2380189" Valor="20457918" Direccion="Canoas, 157 m Noreste."/>
    <Propiedad NumFinca="1693614" Valor="20208194" Direccion="Bri-Bri Centro, 29 m Sureste."/>
    <Propiedad NumFinca="5869245" Valor="4763792" Direccion="Calle Vargas, 547 m Noreste."/>
    <Propiedad NumFinca="6662169" Valor="27575736" Direccion=" MasxMenos, 592 m Sureste."/>
    <Propiedad NumFinca="4407901" Valor="19927677" Direccion="Orotina, 786 m Suroeste."/>
    <Propiedad NumFinca="5952902" Valor="5802670" Direccion="Manzanar, 918 m Noreste."/>
    <Propiedad NumFinca="7718001" Valor="9309458" Direccion="El Alto, 730 m Oeste."/>
    <Propiedad NumFinca="8722808" Valor="7762912" Direccion=" Autolavado Nuestra Señora, 941 m Sureste."/>
    <Propiedad NumFinca="2607709" Valor="22202210" Direccion="Manzanar, 314 m Norte."/>
    <Propietario Nombre="Sara Soriano Mateo" TipoDocIdentidad="1" identificacion="568565242"/>
    <Propietario Nombre="Aitana Romero Gallardo" TipoDocIdentidad="2" identificacion="872555710"/>
    <Propietario Nombre="Lara Santamaria Campo" TipoDocIdentidad="1" identificacion="220603403"/>
    <Propietario Nombre="Marco Moreno Puente" TipoDocIdentidad="1" identificacion="766102236"/>
    <Propietario Nombre="Bruno Torres Soriano" TipoDocIdentidad="1" identificacion="402049681"/>
    <Propietario Nombre="Mario Alvarez Beltran" TipoDocIdentidad="1" identificacion="241677521"/>
    <Propietario Nombre="Héctor Vargas Marcos" TipoDocIdentidad="1" identificacion="510703715"/>
    <Propietario Nombre="Emma Romero Robles" TipoDocIdentidad="1" identificacion="643440499"/>
    <Propietario Nombre="Daniela Rubio Molina" TipoDocIdentidad="2" identificacion="898984404"/>
    <Propietario Nombre="Aitor Sierra Jimenez" TipoDocIdentidad="1" identificacion="598663597"/>
    <PropiedadVersusPropietario NumFinca="8931737" identificacion="568565242"/>
    <PropiedadVersusPropietario NumFinca="2380189" identificacion="872555710"/>
    <PropiedadVersusPropietario NumFinca="1693614" identificacion="220603403"/>
    <PropiedadVersusPropietario NumFinca="5869245" identificacion="766102236"/>
    <PropiedadVersusPropietario NumFinca="6662169" identificacion="402049681"/>
    <PropiedadVersusPropietario NumFinca="4407901" identificacion="241677521"/>
    <PropiedadVersusPropietario NumFinca="5952902" identificacion="510703715"/>
    <PropiedadVersusPropietario NumFinca="7718001" identificacion="643440499"/>
    <PropiedadVersusPropietario NumFinca="8722808" identificacion="898984404"/>
    <PropiedadVersusPropietario NumFinca="2607709" identificacion="598663597"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="8931737"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2380189"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1693614"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5869245"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6662169"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4407901"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5952902"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7718001"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="8722808"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2607709"/>
    <TransConsumo id="1" LecturaM3="936" descripcion="Cobro Mensual" NumFinca="5612982"/>
    <TransConsumo id="1" LecturaM3="814" descripcion="Cobro Mensual" NumFinca="1667419"/>
    <TransConsumo id="1" LecturaM3="800" descripcion="Cobro Mensual" NumFinca="1463009"/>
    <TransConsumo id="1" LecturaM3="431" descripcion="Cobro Mensual" NumFinca="9984034"/>
    <TransConsumo id="1" LecturaM3="368" descripcion="Cobro Mensual" NumFinca="3146361"/>
    <TransConsumo id="3" LecturaM3="75" descripcion="Lectura errónea" NumFinca="6325448"/>
    <TransConsumo id="2" LecturaM3="87" descripcion="Reclamo de cliente" NumFinca="1423800"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-19">
    <Propiedad NumFinca="1798133" Valor="19936185" Direccion=" Río Camarón, 655 m Sureste."/>
    <Propiedad NumFinca="5594145" Valor="8594032" Direccion=" Iglecia Los capuchinos, 602 m Sur."/>
    <Propiedad NumFinca="3645360" Valor="18420956" Direccion=" iglesia de Oreamuno, 828 m Norte."/>
    <Propiedad NumFinca="1828043" Valor="21719551" Direccion="Cuestillas, 916 m Oeste."/>
    <Propiedad NumFinca="7913945" Valor="22567093" Direccion="Plantel de COPRESA, 87 m Oeste."/>
    <Propiedad NumFinca="9194586" Valor="29669968" Direccion=" UNA, 56 m Noroeste."/>
    <Propiedad NumFinca="1576795" Valor="26648702" Direccion="Bar las delicias, 451 m Este."/>
    <Propiedad NumFinca="2154272" Valor="7817783" Direccion=" Río Camarón, 25 m Sureste."/>
    <Propiedad NumFinca="4932823" Valor="7012015" Direccion=" AM-PM, 730 m Noroeste."/>
    <Propiedad NumFinca="3975668" Valor="4381844" Direccion="Ciruelas, 711 m Sureste."/>
    <Propietario Nombre="Candela Santiago Valle" TipoDocIdentidad="2" identificacion="885084254"/>
    <Propietario Nombre="David Del Rio Hidalgo" TipoDocIdentidad="1" identificacion="774873663"/>
    <Propietario Nombre="Valeria Morales Casas" TipoDocIdentidad="1" identificacion="531093842"/>
    <Propietario Nombre="Sergio Quintana Montero" TipoDocIdentidad="1" identificacion="255032228"/>
    <Propietario Nombre="Leo Roman Rio" TipoDocIdentidad="2" identificacion="894142198"/>
    <Propietario Nombre="Antonio Serrano Rio" TipoDocIdentidad="1" identificacion="340718909"/>
    <Propietario Nombre="Leire Benito Delgado" TipoDocIdentidad="1" identificacion="772806336"/>
    <Propietario Nombre="Miguel Campo Hernandez" TipoDocIdentidad="1" identificacion="420259618"/>
    <Propietario Nombre="Daniel Miranda Medina" TipoDocIdentidad="1" identificacion="659354286"/>
    <Propietario Nombre="Dylan Esteban Aguilar" TipoDocIdentidad="1" identificacion="741905814"/>
    <PropiedadVersusPropietario NumFinca="1798133" identificacion="885084254"/>
    <PropiedadVersusPropietario NumFinca="5594145" identificacion="774873663"/>
    <PropiedadVersusPropietario NumFinca="3645360" identificacion="531093842"/>
    <PropiedadVersusPropietario NumFinca="1828043" identificacion="255032228"/>
    <PropiedadVersusPropietario NumFinca="7913945" identificacion="894142198"/>
    <PropiedadVersusPropietario NumFinca="9194586" identificacion="340718909"/>
    <PropiedadVersusPropietario NumFinca="1576795" identificacion="772806336"/>
    <PropiedadVersusPropietario NumFinca="2154272" identificacion="420259618"/>
    <PropiedadVersusPropietario NumFinca="4932823" identificacion="659354286"/>
    <PropiedadVersusPropietario NumFinca="3975668" identificacion="741905814"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1798133"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5594145"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3645360"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1828043"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7913945"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9194586"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1576795"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2154272"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4932823"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3975668"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-20">
    <Propiedad NumFinca="9837074" Valor="21637051" Direccion="Soda la Paz, 596 m Este."/>
    <Propiedad NumFinca="8076511" Valor="16878324" Direccion="El Alto, 277 m Sureste."/>
    <Propiedad NumFinca="4458781" Valor="23507305" Direccion="El Alto, 66 m Suroeste."/>
    <Propiedad NumFinca="5379488" Valor="20071121" Direccion="Bar las delicias, 773 m Oeste."/>
    <Propiedad NumFinca="2544588" Valor="14578654" Direccion="Soda el Higueron, 184 m Noreste."/>
    <Propiedad NumFinca="7287666" Valor="13037391" Direccion="Urbanización La Fundación, 636 m Oeste."/>
    <Propiedad NumFinca="1965647" Valor="19281824" Direccion=" Fresh Markert, 73 m Sureste."/>
    <Propiedad NumFinca="8370396" Valor="20490453" Direccion=" UNA, 97 m Norte."/>
    <Propiedad NumFinca="9508633" Valor="19118556" Direccion=" Hospital Central, 725 m Sureste."/>
    <Propiedad NumFinca="6342713" Valor="25298349" Direccion=" Río Camarón, 559 m Sur."/>
    <Propietario Nombre="Carlota Carrillo Hernandez" TipoDocIdentidad="1" identificacion="647688945"/>
    <Propietario Nombre="Laura Del Rio Mora" TipoDocIdentidad="1" identificacion="365350974"/>
    <Propietario Nombre="Enzo Franco Gil" TipoDocIdentidad="1" identificacion="548878777"/>
    <Propietario Nombre="Valeria Guerrero Jimenez" TipoDocIdentidad="1" identificacion="694040140"/>
    <Propietario Nombre="Triana Ferrer Rosa" TipoDocIdentidad="1" identificacion="775059053"/>
    <Propietario Nombre="Gabriel Menendez Rosa" TipoDocIdentidad="1" identificacion="439498017"/>
    <Propietario Nombre="Diego Ruiz Tomas" TipoDocIdentidad="2" identificacion="831952882"/>
    <Propietario Nombre="Iker Delgado Bueno" TipoDocIdentidad="1" identificacion="517653133"/>
    <Propietario Nombre="Irene Moya Medina" TipoDocIdentidad="1" identificacion="497827909"/>
    <Propietario Nombre="María Asensio Mora" TipoDocIdentidad="1" identificacion="544830264"/>
    <PropiedadVersusPropietario NumFinca="9837074" identificacion="647688945"/>
    <PropiedadVersusPropietario NumFinca="8076511" identificacion="365350974"/>
    <PropiedadVersusPropietario NumFinca="4458781" identificacion="548878777"/>
    <PropiedadVersusPropietario NumFinca="5379488" identificacion="694040140"/>
    <PropiedadVersusPropietario NumFinca="2544588" identificacion="775059053"/>
    <PropiedadVersusPropietario NumFinca="7287666" identificacion="439498017"/>
    <PropiedadVersusPropietario NumFinca="1965647" identificacion="831952882"/>
    <PropiedadVersusPropietario NumFinca="8370396" identificacion="517653133"/>
    <PropiedadVersusPropietario NumFinca="9508633" identificacion="497827909"/>
    <PropiedadVersusPropietario NumFinca="6342713" identificacion="544830264"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9837074"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8076511"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4458781"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5379488"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2544588"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7287666"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1965647"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8370396"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9508633"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6342713"/>
    <CambioPropiedad NumFinca="2962597" NuevoValor="3326730"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-21">
    <TransConsumo id="1" LecturaM3="768" descripcion="Cobro Mensual" NumFinca="2415723"/>
    <TransConsumo id="1" LecturaM3="825" descripcion="Cobro Mensual" NumFinca="2405935"/>
    <TransConsumo id="1" LecturaM3="836" descripcion="Cobro Mensual" NumFinca="2416612"/>
    <TransConsumo id="2" LecturaM3="84" descripcion="Reclamo de cliente" NumFinca="1394522"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-22">
	</OperacionDia>
  <OperacionDia fecha="2020-04-23">
    <Propiedad NumFinca="3341074" Valor="12639348" Direccion="Banco Nacional, 569 m Noroeste."/>
    <Propiedad NumFinca="6125262" Valor="11545721" Direccion=" iglesia de Oreamuno, 42 m Norte."/>
    <Propiedad NumFinca="9591965" Valor="11965240" Direccion="La Giralda, 881 m Suroeste."/>
    <Propiedad NumFinca="7680583" Valor="18502372" Direccion=" iglesia de Oreamuno, 875 m Noreste."/>
    <Propiedad NumFinca="6338650" Valor="8285655" Direccion="Bri-Bri Centro, 646 m Noreste."/>
    <Propiedad NumFinca="7809244" Valor="16595769" Direccion="Cementerio de Santa Rosa, 701 m Norte."/>
    <Propiedad NumFinca="5595498" Valor="13439470" Direccion="UCR, 40 m Norte."/>
    <Propiedad NumFinca="7658053" Valor="22308638" Direccion="San Rafael, 199 m Sureste."/>
    <Propiedad NumFinca="6947210" Valor="11087132" Direccion=" Río Camarón, 673 m Este."/>
    <Propiedad NumFinca="4060041" Valor="3987541" Direccion="Ciruelas, 426 m Noreste."/>
    <Propietario Nombre="Sara Vega Bermudez" TipoDocIdentidad="1" identificacion="339591349"/>
    <Propietario Nombre="Paula Simon Romero" TipoDocIdentidad="1" identificacion="190875294"/>
    <Propietario Nombre="Sara Montero Aparicio" TipoDocIdentidad="1" identificacion="507479374"/>
    <Propietario Nombre="Sergio Gutierrez Montes" TipoDocIdentidad="1" identificacion="556088204"/>
    <Propietario Nombre="Sergio Guerrero Rojas" TipoDocIdentidad="2" identificacion="860182747"/>
    <Propietario Nombre="Iván Paz Manzano" TipoDocIdentidad="1" identificacion="686654417"/>
    <Propietario Nombre="Candela Casas Medina" TipoDocIdentidad="1" identificacion="415885064"/>
    <Propietario Nombre="Alba Santiago Cortes" TipoDocIdentidad="1" identificacion="449216594"/>
    <Propietario Nombre="Alex Vidal Mora" TipoDocIdentidad="2" identificacion="849399457"/>
    <Propietario Nombre="Dylan Guillen Caballero" TipoDocIdentidad="1" identificacion="184712545"/>
    <PropiedadVersusPropietario NumFinca="3341074" identificacion="339591349"/>
    <PropiedadVersusPropietario NumFinca="6125262" identificacion="190875294"/>
    <PropiedadVersusPropietario NumFinca="9591965" identificacion="507479374"/>
    <PropiedadVersusPropietario NumFinca="7680583" identificacion="556088204"/>
    <PropiedadVersusPropietario NumFinca="6338650" identificacion="860182747"/>
    <PropiedadVersusPropietario NumFinca="7809244" identificacion="686654417"/>
    <PropiedadVersusPropietario NumFinca="5595498" identificacion="415885064"/>
    <PropiedadVersusPropietario NumFinca="7658053" identificacion="449216594"/>
    <PropiedadVersusPropietario NumFinca="6947210" identificacion="849399457"/>
    <PropiedadVersusPropietario NumFinca="4060041" identificacion="184712545"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3341074"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6125262"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9591965"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7680583"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6338650"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7809244"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5595498"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7658053"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6947210"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4060041"/>
    <TransConsumo id="1" LecturaM3="320" descripcion="Cobro Mensual" NumFinca="9483099"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-24">
    <Propiedad NumFinca="2099652" Valor="28160387" Direccion="Bar las delicias, 114 m Oeste."/>
    <Propiedad NumFinca="9774575" Valor="5884184" Direccion="Urbanización La Fundación, 603 m Este."/>
    <Propiedad NumFinca="4797949" Valor="5786963" Direccion="La Giralda, 304 m Norte."/>
    <Propiedad NumFinca="8939738" Valor="11115750" Direccion="Las Cascadas, 229 m Sur."/>
    <Propiedad NumFinca="8555925" Valor="7426557" Direccion="De Nava Café, 619 m Sur."/>
    <Propiedad NumFinca="2902272" Valor="23029474" Direccion="Astua Pirie, 74 m Suroeste."/>
    <Propiedad NumFinca="4689115" Valor="23133706" Direccion="San Rafael, 186 m Suroeste."/>
    <Propiedad NumFinca="3304352" Valor="4768807" Direccion="Banco Nacional, 873 m Sureste."/>
    <Propiedad NumFinca="7806630" Valor="16146608" Direccion="Bar las delicias, 849 m Oeste."/>
    <Propiedad NumFinca="6813035" Valor="24335666" Direccion="Rio Azul, 781 m Norte."/>
    <Propietario Nombre="Carmen Gallego Roman" TipoDocIdentidad="1" identificacion="203548912"/>
    <Propietario Nombre="Lara Medina Sancho" TipoDocIdentidad="1" identificacion="477725673"/>
    <Propietario Nombre="Leire Costa Mata" TipoDocIdentidad="1" identificacion="557000234"/>
    <Propietario Nombre="Ángel Sanz Martinez" TipoDocIdentidad="1" identificacion="168532608"/>
    <Propietario Nombre="Adrián Mendez Benitez" TipoDocIdentidad="1" identificacion="744970664"/>
    <Propietario Nombre="Guillermo Izquierdo Rojo" TipoDocIdentidad="1" identificacion="589027312"/>
    <Propietario Nombre="Sergio Diez Benito" TipoDocIdentidad="1" identificacion="368974227"/>
    <Propietario Nombre="Blanca Bravo Leon" TipoDocIdentidad="1" identificacion="749844912"/>
    <Propietario Nombre="Alberto Benito Mendoza" TipoDocIdentidad="1" identificacion="678474710"/>
    <Propietario Nombre="Samuel Sierra Franco" TipoDocIdentidad="1" identificacion="487434214"/>
    <PropiedadVersusPropietario NumFinca="2099652" identificacion="203548912"/>
    <PropiedadVersusPropietario NumFinca="9774575" identificacion="477725673"/>
    <PropiedadVersusPropietario NumFinca="4797949" identificacion="557000234"/>
    <PropiedadVersusPropietario NumFinca="8939738" identificacion="168532608"/>
    <PropiedadVersusPropietario NumFinca="8555925" identificacion="744970664"/>
    <PropiedadVersusPropietario NumFinca="2902272" identificacion="589027312"/>
    <PropiedadVersusPropietario NumFinca="4689115" identificacion="368974227"/>
    <PropiedadVersusPropietario NumFinca="3304352" identificacion="749844912"/>
    <PropiedadVersusPropietario NumFinca="7806630" identificacion="678474710"/>
    <PropiedadVersusPropietario NumFinca="6813035" identificacion="487434214"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2099652"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9774575"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4797949"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8939738"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8555925"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2902272"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4689115"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3304352"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7806630"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6813035"/>
    <TransConsumo id="1" LecturaM3="913" descripcion="Cobro Mensual" NumFinca="3151260"/>
    <TransConsumo id="1" LecturaM3="719" descripcion="Cobro Mensual" NumFinca="5333273"/>
    <TransConsumo id="1" LecturaM3="911" descripcion="Cobro Mensual" NumFinca="1337841"/>
    <TransConsumo id="1" LecturaM3="415" descripcion="Cobro Mensual" NumFinca="5603734"/>
    <TransConsumo id="1" LecturaM3="371" descripcion="Cobro Mensual" NumFinca="2675651"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-25">
    <Propiedad NumFinca="2060905" Valor="26694095" Direccion="Cementerio de Santa Rosa, 653 m Este."/>
    <Propiedad NumFinca="4983683" Valor="21446705" Direccion="Ciruelas, 117 m Este."/>
    <Propiedad NumFinca="3131064" Valor="3517950" Direccion="Urbanización La Fundación, 560 m Sur."/>
    <Propiedad NumFinca="5973252" Valor="17160016" Direccion=" Contrasuli, 758 m Suroeste."/>
    <Propiedad NumFinca="9992202" Valor="22842911" Direccion="De Nava Café, 897 m Norte."/>
    <Propiedad NumFinca="1872614" Valor="3741896" Direccion="Cementerio de Santa Rosa, 580 m Suroeste."/>
    <Propiedad NumFinca="4131078" Valor="27313247" Direccion="Corazón de Jesús, 62 m Sur."/>
    <Propiedad NumFinca="8069451" Valor="16902705" Direccion="Cementerio de Santa Rosa, 551 m Norte."/>
    <Propiedad NumFinca="9034114" Valor="24848334" Direccion="Soda la Paz, 120 m Noreste."/>
    <Propiedad NumFinca="8562573" Valor="21294639" Direccion=" Central Electrica, 190 m Este."/>
    <Propietario Nombre="Laura Diez Valero" TipoDocIdentidad="2" identificacion="886324981"/>
    <Propietario Nombre="Aitor Ramos Paz" TipoDocIdentidad="1" identificacion="265366735"/>
    <Propietario Nombre="Ainara Menendez Nuñez" TipoDocIdentidad="1" identificacion="320363807"/>
    <Propietario Nombre="Alberto Estevez Bueno" TipoDocIdentidad="1" identificacion="599660925"/>
    <Propietario Nombre="Vega Duran Vicente" TipoDocIdentidad="1" identificacion="482981378"/>
    <Propietario Nombre="Iker Mata Morales" TipoDocIdentidad="1" identificacion="575006517"/>
    <Propietario Nombre="Manuel Franco Moya" TipoDocIdentidad="2" identificacion="858467173"/>
    <Propietario Nombre="Aitor Caballero Valle" TipoDocIdentidad="1" identificacion="301984621"/>
    <Propietario Nombre="Nicolás Crespo Velasco" TipoDocIdentidad="1" identificacion="578557631"/>
    <Propietario Nombre="Alex Sierra Gimenez" TipoDocIdentidad="1" identificacion="647749255"/>
    <PropiedadVersusPropietario NumFinca="2060905" identificacion="886324981"/>
    <PropiedadVersusPropietario NumFinca="4983683" identificacion="265366735"/>
    <PropiedadVersusPropietario NumFinca="3131064" identificacion="320363807"/>
    <PropiedadVersusPropietario NumFinca="5973252" identificacion="599660925"/>
    <PropiedadVersusPropietario NumFinca="9992202" identificacion="482981378"/>
    <PropiedadVersusPropietario NumFinca="1872614" identificacion="575006517"/>
    <PropiedadVersusPropietario NumFinca="4131078" identificacion="858467173"/>
    <PropiedadVersusPropietario NumFinca="8069451" identificacion="301984621"/>
    <PropiedadVersusPropietario NumFinca="9034114" identificacion="578557631"/>
    <PropiedadVersusPropietario NumFinca="8562573" identificacion="647749255"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2060905"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4983683"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3131064"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5973252"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9992202"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1872614"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4131078"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8069451"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9034114"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8562573"/>
    <CambioPropiedad NumFinca="3251421" NuevoValor="8511078"/>
    <CambioPropiedad NumFinca="8558350" NuevoValor="21314581"/>
    <CambioPropiedad NumFinca="4419192" NuevoValor="3018529"/>
    <TransConsumo id="1" LecturaM3="417" descripcion="Cobro Mensual" NumFinca="9383952"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-26">
    <Propiedad NumFinca="9718422" Valor="27348471" Direccion=" iglesia de Oreamuno, 465 m Oeste."/>
    <Propiedad NumFinca="5528247" Valor="24648406" Direccion="Manzanar, 304 m Noreste."/>
    <Propiedad NumFinca="2809988" Valor="25151456" Direccion="San Rafael, 192 m Suroeste."/>
    <Propiedad NumFinca="3939729" Valor="17272750" Direccion="Hacienda Vieja, 382 m Sureste."/>
    <Propiedad NumFinca="4926405" Valor="28303879" Direccion=" Fresh Markert, 52 m Noreste."/>
    <Propiedad NumFinca="5793329" Valor="17132409" Direccion="Astua Pirie, 478 m Noreste."/>
    <Propiedad NumFinca="1500605" Valor="15405990" Direccion="De Nava Café, 94 m Norte."/>
    <Propiedad NumFinca="9221039" Valor="17727062" Direccion="San Felipe, 271 m Este."/>
    <Propiedad NumFinca="2541702" Valor="11639935" Direccion="Banco Nacional, 62 m Sureste."/>
    <Propiedad NumFinca="2992885" Valor="15497989" Direccion="Plantel de COPRESA, 274 m Este."/>
    <Propietario Nombre="Lucas Velasco Vargas" TipoDocIdentidad="1" identificacion="744063836"/>
    <Propietario Nombre="Mario Guerra Casado" TipoDocIdentidad="1" identificacion="768454638"/>
    <Propietario Nombre="Sofía Prieto Vargas" TipoDocIdentidad="2" identificacion="863427660"/>
    <Propietario Nombre="Carmen Izquierdo Perez" TipoDocIdentidad="1" identificacion="663589428"/>
    <Propietario Nombre="Mateo Benito Guillen" TipoDocIdentidad="1" identificacion="750643025"/>
    <Propietario Nombre="Ángel Mendez Suarez" TipoDocIdentidad="1" identificacion="360628636"/>
    <Propietario Nombre="Valentina Varela Hidalgo" TipoDocIdentidad="1" identificacion="597372745"/>
    <Propietario Nombre="Víctor Del Rio Ortega" TipoDocIdentidad="1" identificacion="149694144"/>
    <Propietario Nombre="Valeria Martinez Perez" TipoDocIdentidad="1" identificacion="324990785"/>
    <Propietario Nombre="Lucía Sanz Cabrera" TipoDocIdentidad="1" identificacion="580717556"/>
    <PropiedadVersusPropietario NumFinca="9718422" identificacion="744063836"/>
    <PropiedadVersusPropietario NumFinca="5528247" identificacion="768454638"/>
    <PropiedadVersusPropietario NumFinca="2809988" identificacion="863427660"/>
    <PropiedadVersusPropietario NumFinca="3939729" identificacion="663589428"/>
    <PropiedadVersusPropietario NumFinca="4926405" identificacion="750643025"/>
    <PropiedadVersusPropietario NumFinca="5793329" identificacion="360628636"/>
    <PropiedadVersusPropietario NumFinca="1500605" identificacion="597372745"/>
    <PropiedadVersusPropietario NumFinca="9221039" identificacion="149694144"/>
    <PropiedadVersusPropietario NumFinca="2541702" identificacion="324990785"/>
    <PropiedadVersusPropietario NumFinca="2992885" identificacion="580717556"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9718422"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5528247"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2809988"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3939729"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4926405"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5793329"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1500605"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9221039"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2541702"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2992885"/>
    <TransConsumo id="1" LecturaM3="753" descripcion="Cobro Mensual" NumFinca="2425954"/>
    <TransConsumo id="1" LecturaM3="811" descripcion="Cobro Mensual" NumFinca="7816509"/>
    <Pago TipoRecibo="1" NumFinca="4782873"/>
    <Pago TipoRecibo="1" NumFinca="1858970"/>
    <Pago TipoRecibo="1" NumFinca="2101885"/>
    <Pago TipoRecibo="1" NumFinca="6722024"/>
    <Pago TipoRecibo="1" NumFinca="5310895"/>
    <Pago TipoRecibo="1" NumFinca="3443064"/>
    <Pago TipoRecibo="1" NumFinca="7254630"/>
    <Pago TipoRecibo="1" NumFinca="3901661"/>
    <Pago TipoRecibo="1" NumFinca="6883678"/>
    <Pago TipoRecibo="1" NumFinca="2287722"/>
    <Pago TipoRecibo="1" NumFinca="5612982"/>
    <Pago TipoRecibo="1" NumFinca="1667419"/>
    <Pago TipoRecibo="1" NumFinca="1463009"/>
    <Pago TipoRecibo="1" NumFinca="2415723"/>
    <Pago TipoRecibo="1" NumFinca="2405935"/>
    <Pago TipoRecibo="1" NumFinca="2416612"/>
    <Pago TipoRecibo="1" NumFinca="3151260"/>
    <Pago TipoRecibo="1" NumFinca="5333273"/>
    <Pago TipoRecibo="1" NumFinca="1337841"/>
    <Pago TipoRecibo="1" NumFinca="2425954"/>
    <Pago TipoRecibo="1" NumFinca="7816509"/>
    <Pago TipoRecibo="1" NumFinca="1118180"/>
    <Pago TipoRecibo="1" NumFinca="1596904"/>
    <Pago TipoRecibo="1" NumFinca="5998719"/>
    <Pago TipoRecibo="1" NumFinca="4663528"/>
    <Pago TipoRecibo="1" NumFinca="7494272"/>
    <Pago TipoRecibo="1" NumFinca="5590052"/>
    <Pago TipoRecibo="1" NumFinca="8271399"/>
    <Pago TipoRecibo="1" NumFinca="6732750"/>
    <Pago TipoRecibo="1" NumFinca="9324439"/>
    <Pago TipoRecibo="1" NumFinca="5649015"/>
    <Pago TipoRecibo="1" NumFinca="3336538"/>
    <Pago TipoRecibo="1" NumFinca="6832824"/>
    <Pago TipoRecibo="1" NumFinca="8583838"/>
    <Pago TipoRecibo="1" NumFinca="3159179"/>
    <Pago TipoRecibo="1" NumFinca="3312213"/>
    <Pago TipoRecibo="1" NumFinca="9365866"/>
    <Pago TipoRecibo="1" NumFinca="9597151"/>
    <Pago TipoRecibo="1" NumFinca="3745857"/>
    <Pago TipoRecibo="1" NumFinca="9984034"/>
    <Pago TipoRecibo="1" NumFinca="3146361"/>
    <Pago TipoRecibo="1" NumFinca="9483099"/>
    <Pago TipoRecibo="1" NumFinca="5603734"/>
    <Pago TipoRecibo="1" NumFinca="2675651"/>
    <Pago TipoRecibo="1" NumFinca="9383952"/>
    <Pago TipoRecibo="1" NumFinca="5227673"/>
    <Pago TipoRecibo="1" NumFinca="8394022"/>
    <Pago TipoRecibo="1" NumFinca="8434186"/>
    <Pago TipoRecibo="1" NumFinca="9677981"/>
    <Pago TipoRecibo="1" NumFinca="6450028"/>
    <Pago TipoRecibo="1" NumFinca="1516510"/>
    <Pago TipoRecibo="1" NumFinca="6706978"/>
    <Pago TipoRecibo="1" NumFinca="7463111"/>
    <Pago TipoRecibo="1" NumFinca="3709169"/>
    <Pago TipoRecibo="1" NumFinca="3645908"/>
    <Pago TipoRecibo="1" NumFinca="7820463"/>
    <Pago TipoRecibo="1" NumFinca="2299692"/>
    <Pago TipoRecibo="1" NumFinca="9459793"/>
    <Pago TipoRecibo="1" NumFinca="5426691"/>
    <Pago TipoRecibo="1" NumFinca="5488897"/>
    <Pago TipoRecibo="1" NumFinca="7200258"/>
    <Pago TipoRecibo="1" NumFinca="3099309"/>
    <Pago TipoRecibo="1" NumFinca="5480590"/>
    <Pago TipoRecibo="1" NumFinca="9652577"/>
    <Pago TipoRecibo="1" NumFinca="4065289"/>
    <Pago TipoRecibo="1" NumFinca="1103822"/>
    <Pago TipoRecibo="1" NumFinca="8077121"/>
    <Pago TipoRecibo="1" NumFinca="6278640"/>
    <Pago TipoRecibo="1" NumFinca="1693614"/>
    <Pago TipoRecibo="1" NumFinca="5869245"/>
    <Pago TipoRecibo="1" NumFinca="1798133"/>
    <Pago TipoRecibo="1" NumFinca="2154272"/>
    <Pago TipoRecibo="1" NumFinca="4932823"/>
    <Pago TipoRecibo="1" NumFinca="8076511"/>
    <Pago TipoRecibo="1" NumFinca="8370396"/>
    <Pago TipoRecibo="1" NumFinca="6342713"/>
    <Pago TipoRecibo="1" NumFinca="4060041"/>
    <Pago TipoRecibo="1" NumFinca="2060905"/>
    <Pago TipoRecibo="1" NumFinca="3131064"/>
    <Pago TipoRecibo="1" NumFinca="5973252"/>
    <Pago TipoRecibo="1" NumFinca="1872614"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-27">
    <Propiedad NumFinca="7404314" Valor="6129730" Direccion="Bri-Bri Centro, 592 m Oeste."/>
    <Propiedad NumFinca="6844297" Valor="5229320" Direccion="Cuestillas, 689 m Norte."/>
    <Propiedad NumFinca="2666223" Valor="16884363" Direccion=" Autolavado Nuestra Señora, 929 m Noreste."/>
    <Propiedad NumFinca="3187354" Valor="14271267" Direccion="Brasil de Mora, 63 m Suroeste."/>
    <Propiedad NumFinca="2107941" Valor="20770507" Direccion="Hacienda Vieja, 176 m Sur."/>
    <Propiedad NumFinca="1174655" Valor="19776320" Direccion=" AM-PM, 281 m Oeste."/>
    <Propiedad NumFinca="1128583" Valor="14195501" Direccion="Bar las delicias, 122 m Sureste."/>
    <Propiedad NumFinca="6769378" Valor="29263650" Direccion="Calle Vargas, 603 m Este."/>
    <Propiedad NumFinca="5531722" Valor="17836110" Direccion=" MasxMenos, 472 m Sureste."/>
    <Propiedad NumFinca="7722500" Valor="13762252" Direccion="San Felipe, 124 m Suroeste."/>
    <Propietario Nombre="Laura Ibañez Cortes" TipoDocIdentidad="1" identificacion="357325200"/>
    <Propietario Nombre="Miguel Vila Gallego" TipoDocIdentidad="1" identificacion="531291763"/>
    <Propietario Nombre="Emma Rueda Villanueva" TipoDocIdentidad="1" identificacion="339936698"/>
    <Propietario Nombre="Ana Suarez Cuesta" TipoDocIdentidad="1" identificacion="428046976"/>
    <Propietario Nombre="Marco Rivas Perez" TipoDocIdentidad="2" identificacion="840941811"/>
    <Propietario Nombre="Elsa Serrano Hernandez" TipoDocIdentidad="1" identificacion="290305288"/>
    <Propietario Nombre="Marcos Asensio Gomez" TipoDocIdentidad="1" identificacion="686126254"/>
    <Propietario Nombre="Samuel Zamora Cabrera" TipoDocIdentidad="1" identificacion="251224742"/>
    <Propietario Nombre="Lucía Corral Pardo" TipoDocIdentidad="1" identificacion="449044598"/>
    <Propietario Nombre="Vega Marquez Saez" TipoDocIdentidad="1" identificacion="640660998"/>
    <PropiedadVersusPropietario NumFinca="7404314" identificacion="357325200"/>
    <PropiedadVersusPropietario NumFinca="6844297" identificacion="531291763"/>
    <PropiedadVersusPropietario NumFinca="2666223" identificacion="339936698"/>
    <PropiedadVersusPropietario NumFinca="3187354" identificacion="428046976"/>
    <PropiedadVersusPropietario NumFinca="2107941" identificacion="840941811"/>
    <PropiedadVersusPropietario NumFinca="1174655" identificacion="290305288"/>
    <PropiedadVersusPropietario NumFinca="1128583" identificacion="686126254"/>
    <PropiedadVersusPropietario NumFinca="6769378" identificacion="251224742"/>
    <PropiedadVersusPropietario NumFinca="5531722" identificacion="449044598"/>
    <PropiedadVersusPropietario NumFinca="7722500" identificacion="640660998"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7404314"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6844297"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2666223"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3187354"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2107941"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1174655"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1128583"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6769378"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5531722"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7722500"/>
    <CambioPropiedad NumFinca="6777418" NuevoValor="21878814"/>
    <CambioPropiedad NumFinca="6536368" NuevoValor="4725149"/>
    <CambioPropiedad NumFinca="4366302" NuevoValor="31917684"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-28">
    <TransConsumo id="1" LecturaM3="774" descripcion="Cobro Mensual" NumFinca="1118180"/>
    <TransConsumo id="1" LecturaM3="826" descripcion="Cobro Mensual" NumFinca="1596904"/>
  </OperacionDia>
  <OperacionDia fecha="2020-04-29">
	</OperacionDia>
  <OperacionDia fecha="2020-04-30">
    <Propiedad NumFinca="6056857" Valor="19201229" Direccion="Hacienda Vieja, 71 m Oeste."/>
    <Propiedad NumFinca="4844521" Valor="19830786" Direccion=" Central Electrica, 648 m Noroeste."/>
    <Propiedad NumFinca="7624387" Valor="11420164" Direccion="Astua Pirie, 685 m Sureste."/>
    <Propiedad NumFinca="9565501" Valor="22508196" Direccion="De Nava Café, 876 m Suroeste."/>
    <Propiedad NumFinca="1223417" Valor="25899455" Direccion="Bri-Bri Centro, 25 m Noreste."/>
    <Propiedad NumFinca="9442819" Valor="29779721" Direccion="San Rafael, 665 m Noroeste."/>
    <Propiedad NumFinca="6429878" Valor="23789275" Direccion=" AM-PM, 433 m Sur."/>
    <Propiedad NumFinca="1486922" Valor="26658864" Direccion=" Hospital Central, 892 m Noreste."/>
    <Propiedad NumFinca="8364362" Valor="5089848" Direccion="Soda la Paz, 716 m Este."/>
    <Propiedad NumFinca="2295242" Valor="21637316" Direccion="Orotina, 428 m Este."/>
    <Propietario Nombre="Álvaro Calderon Cuesta" TipoDocIdentidad="1" identificacion="539939403"/>
    <Propietario Nombre="Antonio Marcos Segura" TipoDocIdentidad="1" identificacion="623696673"/>
    <Propietario Nombre="Manuel Casado Rosa" TipoDocIdentidad="1" identificacion="609534826"/>
    <Propietario Nombre="Triana Crespo Fernandez" TipoDocIdentidad="2" identificacion="881533564"/>
    <Propietario Nombre="Bruno Blanco Galan" TipoDocIdentidad="1" identificacion="620449390"/>
    <Propietario Nombre="Mateo Villanueva Delgado" TipoDocIdentidad="1" identificacion="202765088"/>
    <Propietario Nombre="Hugo Blanco Castaño" TipoDocIdentidad="1" identificacion="385981725"/>
    <Propietario Nombre="Valentina Soto Flores" TipoDocIdentidad="1" identificacion="661463574"/>
    <Propietario Nombre="Blanca Iglesias Benitez" TipoDocIdentidad="1" identificacion="183427452"/>
    <Propietario Nombre="Thiago Mendez Romero" TipoDocIdentidad="2" identificacion="882710046"/>
    <PropiedadVersusPropietario NumFinca="6056857" identificacion="539939403"/>
    <PropiedadVersusPropietario NumFinca="4844521" identificacion="623696673"/>
    <PropiedadVersusPropietario NumFinca="7624387" identificacion="609534826"/>
    <PropiedadVersusPropietario NumFinca="9565501" identificacion="881533564"/>
    <PropiedadVersusPropietario NumFinca="1223417" identificacion="620449390"/>
    <PropiedadVersusPropietario NumFinca="9442819" identificacion="202765088"/>
    <PropiedadVersusPropietario NumFinca="6429878" identificacion="385981725"/>
    <PropiedadVersusPropietario NumFinca="1486922" identificacion="661463574"/>
    <PropiedadVersusPropietario NumFinca="8364362" identificacion="183427452"/>
    <PropiedadVersusPropietario NumFinca="2295242" identificacion="882710046"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6056857"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4844521"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7624387"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9565501"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1223417"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9442819"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6429878"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1486922"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8364362"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2295242"/>
    <TransConsumo id="1" LecturaM3="324" descripcion="Cobro Mensual" NumFinca="5227673"/>
    <TransConsumo id="1" LecturaM3="499" descripcion="Cobro Mensual" NumFinca="8394022"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-01">
    <Propiedad NumFinca="2145176" Valor="4524964" Direccion=" Fresh Markert, 917 m Sur."/>
    <Propiedad NumFinca="3037336" Valor="26436854" Direccion="El Alto, 571 m Sureste."/>
    <Propiedad NumFinca="4720230" Valor="29728173" Direccion=" Lumaca, 290 m Suroeste."/>
    <Propiedad NumFinca="3343918" Valor="7894286" Direccion="Urbanización La Fundación, 885 m Sureste."/>
    <Propiedad NumFinca="3339019" Valor="17162192" Direccion="San Felipe, 167 m Sureste."/>
    <Propiedad NumFinca="6168394" Valor="10418527" Direccion="Soda la Paz, 846 m Este."/>
    <Propiedad NumFinca="5624535" Valor="18071971" Direccion="Hacienda Vieja, 643 m Oeste."/>
    <Propiedad NumFinca="3345659" Valor="21864066" Direccion="Urbanización La Fundación, 591 m Sur."/>
    <Propiedad NumFinca="2592385" Valor="5219433" Direccion="Residencias Pacific Sun, 798 m Noroeste."/>
    <Propiedad NumFinca="4878765" Valor="15716124" Direccion=" MasxMenos, 186 m Sur."/>
    <Propietario Nombre="Álvaro Soriano Lozano" TipoDocIdentidad="1" identificacion="126780373"/>
    <Propietario Nombre="Blanca Bermudez Guerra" TipoDocIdentidad="1" identificacion="301064916"/>
    <Propietario Nombre="Marta Villanueva Cruz" TipoDocIdentidad="1" identificacion="143728696"/>
    <Propietario Nombre="Marcos Sierra Bravo" TipoDocIdentidad="1" identificacion="132820353"/>
    <Propietario Nombre="Chloe Leon Bermejo" TipoDocIdentidad="1" identificacion="126706840"/>
    <Propietario Nombre="Mateo Rios Bermejo" TipoDocIdentidad="1" identificacion="600645161"/>
    <Propietario Nombre="María Lopez Miranda" TipoDocIdentidad="1" identificacion="523306298"/>
    <Propietario Nombre="Aaron Jimenez Roca" TipoDocIdentidad="1" identificacion="703212950"/>
    <Propietario Nombre="Noa Caballero Roca" TipoDocIdentidad="1" identificacion="421402204"/>
    <Propietario Nombre="Ariadna Pardo Contreras" TipoDocIdentidad="2" identificacion="876405292"/>
    <PropiedadVersusPropietario NumFinca="2145176" identificacion="126780373"/>
    <PropiedadVersusPropietario NumFinca="3037336" identificacion="301064916"/>
    <PropiedadVersusPropietario NumFinca="4720230" identificacion="143728696"/>
    <PropiedadVersusPropietario NumFinca="3343918" identificacion="132820353"/>
    <PropiedadVersusPropietario NumFinca="3339019" identificacion="126706840"/>
    <PropiedadVersusPropietario NumFinca="6168394" identificacion="600645161"/>
    <PropiedadVersusPropietario NumFinca="5624535" identificacion="523306298"/>
    <PropiedadVersusPropietario NumFinca="3345659" identificacion="703212950"/>
    <PropiedadVersusPropietario NumFinca="2592385" identificacion="421402204"/>
    <PropiedadVersusPropietario NumFinca="4878765" identificacion="876405292"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2145176"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3037336"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4720230"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3343918"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3339019"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6168394"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5624535"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3345659"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2592385"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4878765"/>
    <CambioPropiedad NumFinca="6531847" NuevoValor="21436304"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-02">
    <Propiedad NumFinca="2574448" Valor="3507472" Direccion="Soda el Higueron, 660 m Oeste."/>
    <Propiedad NumFinca="5996674" Valor="17153346" Direccion=" UNA, 109 m Suroeste."/>
    <Propiedad NumFinca="9827023" Valor="29210384" Direccion="Bri-Bri Centro, 750 m Este."/>
    <Propiedad NumFinca="6275546" Valor="29281814" Direccion=" Lumaca, 115 m Noreste."/>
    <Propiedad NumFinca="8528257" Valor="10088322" Direccion="De Nava Café, 30 m Sur."/>
    <Propiedad NumFinca="1422786" Valor="13450578" Direccion=" Maxi Pali, 296 m Sur."/>
    <Propiedad NumFinca="1222342" Valor="4362736" Direccion="Santa Rosa, 85 m Noreste."/>
    <Propiedad NumFinca="9950218" Valor="29745476" Direccion="Astua Pirie, 552 m Noreste."/>
    <Propiedad NumFinca="8720363" Valor="13179292" Direccion=" La fuente central, 861 m Norte."/>
    <Propiedad NumFinca="3429696" Valor="16540620" Direccion=" UNA, 727 m Noroeste."/>
    <Propietario Nombre="Bruno Mateos Rivero" TipoDocIdentidad="1" identificacion="255872387"/>
    <Propietario Nombre="Mario Diaz Santos" TipoDocIdentidad="1" identificacion="604550614"/>
    <Propietario Nombre="Marc Lorenzo Gimenez" TipoDocIdentidad="1" identificacion="350455860"/>
    <Propietario Nombre="Enzo Soler Arias" TipoDocIdentidad="1" identificacion="112244823"/>
    <Propietario Nombre="Hugo San Escudero" TipoDocIdentidad="2" identificacion="821938365"/>
    <Propietario Nombre="Claudia Bernal Navarro" TipoDocIdentidad="1" identificacion="275143425"/>
    <Propietario Nombre="Martín Reyes Alvarez" TipoDocIdentidad="1" identificacion="727736212"/>
    <Propietario Nombre="Diego Palacios Valero" TipoDocIdentidad="1" identificacion="472751497"/>
    <Propietario Nombre="Iker Rubio Suarez" TipoDocIdentidad="1" identificacion="420801452"/>
    <Propietario Nombre="Julia Gallardo Palacios" TipoDocIdentidad="1" identificacion="323495053"/>
    <PropiedadVersusPropietario NumFinca="2574448" identificacion="255872387"/>
    <PropiedadVersusPropietario NumFinca="5996674" identificacion="604550614"/>
    <PropiedadVersusPropietario NumFinca="9827023" identificacion="350455860"/>
    <PropiedadVersusPropietario NumFinca="6275546" identificacion="112244823"/>
    <PropiedadVersusPropietario NumFinca="8528257" identificacion="821938365"/>
    <PropiedadVersusPropietario NumFinca="1422786" identificacion="275143425"/>
    <PropiedadVersusPropietario NumFinca="1222342" identificacion="727736212"/>
    <PropiedadVersusPropietario NumFinca="9950218" identificacion="472751497"/>
    <PropiedadVersusPropietario NumFinca="8720363" identificacion="420801452"/>
    <PropiedadVersusPropietario NumFinca="3429696" identificacion="323495053"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2574448"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5996674"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9827023"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6275546"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8528257"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1422786"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1222342"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9950218"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8720363"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3429696"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-03">
    <Propiedad NumFinca="2471432" Valor="11073729" Direccion="Las Cascadas, 930 m Oeste."/>
    <Propiedad NumFinca="3230023" Valor="28805050" Direccion="La Francia, 56 m Norte."/>
    <Propiedad NumFinca="3133715" Valor="13144293" Direccion="UCR, 31 m Noroeste."/>
    <Propiedad NumFinca="4182254" Valor="20390862" Direccion="Astua Pirie, 772 m Norte."/>
    <Propiedad NumFinca="5768738" Valor="11807881" Direccion="Bar las delicias, 257 m Sureste."/>
    <Propiedad NumFinca="5936115" Valor="18159595" Direccion="Brasil de Mora, 638 m Noreste."/>
    <Propiedad NumFinca="9773510" Valor="27182586" Direccion=" Contrasuli, 801 m Noreste."/>
    <Propiedad NumFinca="1105999" Valor="13263381" Direccion="Orotina, 159 m Norte."/>
    <Propiedad NumFinca="2497661" Valor="28234962" Direccion="Bri-Bri Centro, 444 m Sur."/>
    <Propiedad NumFinca="4351134" Valor="9230073" Direccion="El Alto, 945 m Suroeste."/>
    <Propietario Nombre="Elsa Campo Diaz" TipoDocIdentidad="1" identificacion="454252918"/>
    <Propietario Nombre="Alejandro Alonso Reyes" TipoDocIdentidad="1" identificacion="337439079"/>
    <Propietario Nombre="Lucas Esteban Sanz" TipoDocIdentidad="1" identificacion="373930513"/>
    <Propietario Nombre="Carla Rios Corral" TipoDocIdentidad="2" identificacion="818106303"/>
    <Propietario Nombre="Pablo Fuentes Paz" TipoDocIdentidad="1" identificacion="134829836"/>
    <Propietario Nombre="Ainhoa Ortega Marcos" TipoDocIdentidad="1" identificacion="468544425"/>
    <Propietario Nombre="Adrián Jimenez Ballesteros" TipoDocIdentidad="1" identificacion="674067454"/>
    <Propietario Nombre="José Lazaro Miguel" TipoDocIdentidad="1" identificacion="339422163"/>
    <Propietario Nombre="Diego Marti Prado" TipoDocIdentidad="1" identificacion="688205291"/>
    <Propietario Nombre="Ainhoa Soler Cortes" TipoDocIdentidad="1" identificacion="394771657"/>
    <PropiedadVersusPropietario NumFinca="2471432" identificacion="454252918"/>
    <PropiedadVersusPropietario NumFinca="3230023" identificacion="337439079"/>
    <PropiedadVersusPropietario NumFinca="3133715" identificacion="373930513"/>
    <PropiedadVersusPropietario NumFinca="4182254" identificacion="818106303"/>
    <PropiedadVersusPropietario NumFinca="5768738" identificacion="134829836"/>
    <PropiedadVersusPropietario NumFinca="5936115" identificacion="468544425"/>
    <PropiedadVersusPropietario NumFinca="9773510" identificacion="674067454"/>
    <PropiedadVersusPropietario NumFinca="1105999" identificacion="339422163"/>
    <PropiedadVersusPropietario NumFinca="2497661" identificacion="688205291"/>
    <PropiedadVersusPropietario NumFinca="4351134" identificacion="394771657"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2471432"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3230023"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3133715"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4182254"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5768738"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5936115"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9773510"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1105999"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2497661"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4351134"/>
    <CambioPropiedad NumFinca="9998670" NuevoValor="5558281"/>
    <TransConsumo id="1" LecturaM3="836" descripcion="Cobro Mensual" NumFinca="5998719"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-04">
    <Propiedad NumFinca="2138568" Valor="8976327" Direccion="Rio Azul, 449 m Noroeste."/>
    <Propiedad NumFinca="9971615" Valor="11674678" Direccion="Iglesia Católica de Cartago Norte, 757 m Noreste."/>
    <Propiedad NumFinca="2338177" Valor="8992099" Direccion="Manzanar, 573 m Este."/>
    <Propiedad NumFinca="1617330" Valor="17189787" Direccion="Manzanar, 255 m Noroeste."/>
    <Propiedad NumFinca="5679867" Valor="23380819" Direccion="Orotina, 850 m Oeste."/>
    <Propiedad NumFinca="6664396" Valor="25399915" Direccion="Calle Vargas, 662 m Norte."/>
    <Propiedad NumFinca="4952759" Valor="20728334" Direccion=" Central Electrica, 437 m Sur."/>
    <Propiedad NumFinca="2304894" Valor="16087417" Direccion="Manzanar, 682 m Sureste."/>
    <Propiedad NumFinca="6712929" Valor="5625738" Direccion="Manzanar, 342 m Norte."/>
    <Propiedad NumFinca="5308786" Valor="8336277" Direccion=" Central Electrica, 407 m Suroeste."/>
    <Propietario Nombre="Nicolás Caballero Mendez" TipoDocIdentidad="2" identificacion="879149558"/>
    <Propietario Nombre="Leo Carmona Flores" TipoDocIdentidad="1" identificacion="499821119"/>
    <Propietario Nombre="Daniel Lazaro Abad" TipoDocIdentidad="2" identificacion="847301241"/>
    <Propietario Nombre="Noa Ortiz Rojo" TipoDocIdentidad="1" identificacion="699779386"/>
    <Propietario Nombre="Carlos Casas Millan" TipoDocIdentidad="1" identificacion="392694272"/>
    <Propietario Nombre="Bruno Vega Mendez" TipoDocIdentidad="1" identificacion="715571328"/>
    <Propietario Nombre="Irene Soler Nieto" TipoDocIdentidad="1" identificacion="235625256"/>
    <Propietario Nombre="Marco Cruz Asensio" TipoDocIdentidad="1" identificacion="684370302"/>
    <Propietario Nombre="Thiago Vargas Duran" TipoDocIdentidad="1" identificacion="433749425"/>
    <Propietario Nombre="Leo Marquez Mora" TipoDocIdentidad="1" identificacion="508979264"/>
    <PropiedadVersusPropietario NumFinca="2138568" identificacion="879149558"/>
    <PropiedadVersusPropietario NumFinca="9971615" identificacion="499821119"/>
    <PropiedadVersusPropietario NumFinca="2338177" identificacion="847301241"/>
    <PropiedadVersusPropietario NumFinca="1617330" identificacion="699779386"/>
    <PropiedadVersusPropietario NumFinca="5679867" identificacion="392694272"/>
    <PropiedadVersusPropietario NumFinca="6664396" identificacion="715571328"/>
    <PropiedadVersusPropietario NumFinca="4952759" identificacion="235625256"/>
    <PropiedadVersusPropietario NumFinca="2304894" identificacion="684370302"/>
    <PropiedadVersusPropietario NumFinca="6712929" identificacion="433749425"/>
    <PropiedadVersusPropietario NumFinca="5308786" identificacion="508979264"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2138568"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9971615"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2338177"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1617330"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5679867"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6664396"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4952759"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2304894"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6712929"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5308786"/>
    <CambioPropiedad NumFinca="1328804" NuevoValor="12288659"/>
    <TransConsumo id="1" LecturaM3="913" descripcion="Cobro Mensual" NumFinca="4663528"/>
    <TransConsumo id="1" LecturaM3="878" descripcion="Cobro Mensual" NumFinca="7494272"/>
    <TransConsumo id="1" LecturaM3="958" descripcion="Cobro Mensual" NumFinca="5590052"/>
    <TransConsumo id="1" LecturaM3="704" descripcion="Cobro Mensual" NumFinca="8271399"/>
    <TransConsumo id="1" LecturaM3="817" descripcion="Cobro Mensual" NumFinca="6732750"/>
    <TransConsumo id="1" LecturaM3="966" descripcion="Cobro Mensual" NumFinca="9324439"/>
    <TransConsumo id="1" LecturaM3="876" descripcion="Cobro Mensual" NumFinca="5649015"/>
    <TransConsumo id="2" LecturaM3="3" descripcion="Reclamo de cliente" NumFinca="2405935"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-05">
    <Propiedad NumFinca="6781716" Valor="6374138" Direccion="El Alto, 704 m Noreste."/>
    <Propiedad NumFinca="3723132" Valor="12917734" Direccion="Orotina, 808 m Oeste."/>
    <Propiedad NumFinca="3450279" Valor="5669489" Direccion=" iglesia de Oreamuno, 651 m Noreste."/>
    <Propiedad NumFinca="6637431" Valor="11626101" Direccion="San Joser, 627 m Oeste."/>
    <Propiedad NumFinca="3654908" Valor="9837724" Direccion="San Joser, 584 m Norte."/>
    <Propiedad NumFinca="5300533" Valor="18803174" Direccion=" Lumaca, 737 m Oeste."/>
    <Propiedad NumFinca="6384132" Valor="23204528" Direccion=" iglesia de Oreamuno, 930 m Noreste."/>
    <Propiedad NumFinca="4468106" Valor="7557296" Direccion="El Alto, 199 m Este."/>
    <Propiedad NumFinca="6434085" Valor="6593145" Direccion="Soda el Higueron, 922 m Noroeste."/>
    <Propiedad NumFinca="6772528" Valor="21927500" Direccion=" Maxi Pali, 828 m Oeste."/>
    <Propietario Nombre="Marc Rivera Menendez" TipoDocIdentidad="1" identificacion="781305939"/>
    <Propietario Nombre="Ana Ortega Robles" TipoDocIdentidad="1" identificacion="442090302"/>
    <Propietario Nombre="Mario Aguilar Del Rio" TipoDocIdentidad="2" identificacion="854169689"/>
    <Propietario Nombre="Carla Zamora Merino" TipoDocIdentidad="2" identificacion="887593496"/>
    <Propietario Nombre="Marina Fuentes Marti" TipoDocIdentidad="1" identificacion="510623142"/>
    <Propietario Nombre="Aitana Cano Medina" TipoDocIdentidad="1" identificacion="655252048"/>
    <Propietario Nombre="María Dominguez Santiago" TipoDocIdentidad="1" identificacion="704571521"/>
    <Propietario Nombre="Chloe Roman Roca" TipoDocIdentidad="2" identificacion="879792462"/>
    <Propietario Nombre="Juan Ballesteros Cortes" TipoDocIdentidad="1" identificacion="165144036"/>
    <Propietario Nombre="Clara Hidalgo Alonso" TipoDocIdentidad="1" identificacion="644575675"/>
    <PropiedadVersusPropietario NumFinca="6781716" identificacion="781305939"/>
    <PropiedadVersusPropietario NumFinca="3723132" identificacion="442090302"/>
    <PropiedadVersusPropietario NumFinca="3450279" identificacion="854169689"/>
    <PropiedadVersusPropietario NumFinca="6637431" identificacion="887593496"/>
    <PropiedadVersusPropietario NumFinca="3654908" identificacion="510623142"/>
    <PropiedadVersusPropietario NumFinca="5300533" identificacion="655252048"/>
    <PropiedadVersusPropietario NumFinca="6384132" identificacion="704571521"/>
    <PropiedadVersusPropietario NumFinca="4468106" identificacion="879792462"/>
    <PropiedadVersusPropietario NumFinca="6434085" identificacion="165144036"/>
    <PropiedadVersusPropietario NumFinca="6772528" identificacion="644575675"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6781716"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3723132"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3450279"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="6637431"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3654908"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5300533"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6384132"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4468106"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6434085"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6772528"/>
    <TransConsumo id="1" LecturaM3="396" descripcion="Cobro Mensual" NumFinca="8434186"/>
    <TransConsumo id="1" LecturaM3="310" descripcion="Cobro Mensual" NumFinca="9677981"/>
    <Pago TipoRecibo="5" NumFinca="4158692"/>
    <Pago TipoRecibo="5" NumFinca="9782331"/>
    <Pago TipoRecibo="5" NumFinca="2186347"/>
    <Pago TipoRecibo="5" NumFinca="1394522"/>
    <Pago TipoRecibo="5" NumFinca="4121713"/>
    <Pago TipoRecibo="5" NumFinca="1423800"/>
    <Pago TipoRecibo="5" NumFinca="1659333"/>
    <Pago TipoRecibo="5" NumFinca="6516190"/>
    <Pago TipoRecibo="5" NumFinca="6147839"/>
    <Pago TipoRecibo="5" NumFinca="7981775"/>
    <Pago TipoRecibo="5" NumFinca="4182442"/>
    <Pago TipoRecibo="5" NumFinca="1236736"/>
    <Pago TipoRecibo="5" NumFinca="7393203"/>
    <Pago TipoRecibo="5" NumFinca="3958319"/>
    <Pago TipoRecibo="5" NumFinca="3158340"/>
    <Pago TipoRecibo="5" NumFinca="9582939"/>
    <Pago TipoRecibo="5" NumFinca="6374877"/>
    <Pago TipoRecibo="5" NumFinca="7733971"/>
    <Pago TipoRecibo="5" NumFinca="2499250"/>
    <Pago TipoRecibo="5" NumFinca="2108129"/>
    <Pago TipoRecibo="5" NumFinca="1528789"/>
    <Pago TipoRecibo="5" NumFinca="7799701"/>
    <Pago TipoRecibo="5" NumFinca="5359919"/>
    <Pago TipoRecibo="5" NumFinca="6163924"/>
    <Pago TipoRecibo="5" NumFinca="6696849"/>
    <Pago TipoRecibo="5" NumFinca="5677891"/>
    <Pago TipoRecibo="5" NumFinca="7825963"/>
    <Pago TipoRecibo="5" NumFinca="8573120"/>
    <Pago TipoRecibo="5" NumFinca="2580485"/>
    <Pago TipoRecibo="5" NumFinca="3958792"/>
    <Pago TipoRecibo="5" NumFinca="7833848"/>
    <Pago TipoRecibo="5" NumFinca="3419006"/>
    <Pago TipoRecibo="5" NumFinca="6715187"/>
    <Pago TipoRecibo="5" NumFinca="6727257"/>
    <Pago TipoRecibo="5" NumFinca="1523587"/>
    <Pago TipoRecibo="5" NumFinca="4916825"/>
    <Pago TipoRecibo="5" NumFinca="2749656"/>
    <Pago TipoRecibo="5" NumFinca="3106811"/>
    <Pago TipoRecibo="5" NumFinca="1265498"/>
    <Pago TipoRecibo="5" NumFinca="4096388"/>
    <Pago TipoRecibo="5" NumFinca="3999926"/>
    <Pago TipoRecibo="5" NumFinca="4790430"/>
    <Pago TipoRecibo="5" NumFinca="3298240"/>
    <Pago TipoRecibo="5" NumFinca="6536368"/>
    <Pago TipoRecibo="5" NumFinca="2995814"/>
    <Pago TipoRecibo="5" NumFinca="2379645"/>
    <Pago TipoRecibo="5" NumFinca="4366302"/>
    <Pago TipoRecibo="5" NumFinca="8989267"/>
    <Pago TipoRecibo="5" NumFinca="2960631"/>
    <Pago TipoRecibo="5" NumFinca="1253531"/>
    <Pago TipoRecibo="5" NumFinca="3005279"/>
    <Pago TipoRecibo="5" NumFinca="6906071"/>
    <Pago TipoRecibo="5" NumFinca="1983339"/>
    <Pago TipoRecibo="5" NumFinca="3426163"/>
    <Pago TipoRecibo="5" NumFinca="5067204"/>
    <Pago TipoRecibo="5" NumFinca="1124659"/>
    <Pago TipoRecibo="5" NumFinca="7325176"/>
    <Pago TipoRecibo="5" NumFinca="4419192"/>
    <Pago TipoRecibo="5" NumFinca="8931737"/>
    <Pago TipoRecibo="5" NumFinca="4407901"/>
    <Pago TipoRecibo="5" NumFinca="8722808"/>
    <Pago TipoRecibo="5" NumFinca="9591965"/>
    <Pago TipoRecibo="5" NumFinca="6338650"/>
    <Pago TipoRecibo="5" NumFinca="9774575"/>
    <Pago TipoRecibo="5" NumFinca="3304352"/>
    <Pago TipoRecibo="5" NumFinca="9992202"/>
    <Pago TipoRecibo="5" NumFinca="5793329"/>
    <Pago TipoRecibo="5" NumFinca="2992885"/>
    <Pago TipoRecibo="5" NumFinca="7404314"/>
    <Pago TipoRecibo="5" NumFinca="7624387"/>
    <Pago TipoRecibo="5" NumFinca="6429878"/>
    <Pago TipoRecibo="5" NumFinca="5624535"/>
    <Pago TipoRecibo="5" NumFinca="2471432"/>
    <Pago TipoRecibo="5" NumFinca="9773510"/>
    <Pago TipoRecibo="5" NumFinca="1105999"/>
    <Pago TipoRecibo="5" NumFinca="9971615"/>
    <Pago TipoRecibo="5" NumFinca="6664396"/>
    
  </OperacionDia>
  <OperacionDia fecha="2020-05-06">
    <Propiedad NumFinca="7706037" Valor="6056189" Direccion="El Alto, 173 m Noreste."/>
    <Propiedad NumFinca="6769371" Valor="24985503" Direccion="Plantel de COPRESA, 409 m Sureste."/>
    <Propiedad NumFinca="9631828" Valor="11443714" Direccion="Brasil de Mora, 324 m Noroeste."/>
    <Propiedad NumFinca="8051611" Valor="6075046" Direccion=" La fuente central, 343 m Oeste."/>
    <Propiedad NumFinca="1021147" Valor="17011642" Direccion="Cementerio de Santa Rosa, 656 m Noreste."/>
    <Propiedad NumFinca="3384583" Valor="16415689" Direccion=" UNA, 698 m Noroeste."/>
    <Propiedad NumFinca="4566315" Valor="26842669" Direccion=" Hospital Central, 634 m Suroeste."/>
    <Propiedad NumFinca="3949789" Valor="8963008" Direccion="La Giralda, 754 m Sureste."/>
    <Propiedad NumFinca="9927244" Valor="27392632" Direccion=" Hospital Central, 425 m Sur."/>
    <Propiedad NumFinca="7361613" Valor="22846251" Direccion="El Alto, 64 m Oeste."/>
    <Propietario Nombre="Gonzalo Gallardo Izquierdo" TipoDocIdentidad="1" identificacion="182224865"/>
    <Propietario Nombre="Vera Morales Suarez" TipoDocIdentidad="1" identificacion="325566608"/>
    <Propietario Nombre="Marcos Alonso Carrera" TipoDocIdentidad="1" identificacion="233425622"/>
    <Propietario Nombre="Héctor Mora Fuente" TipoDocIdentidad="1" identificacion="605607316"/>
    <Propietario Nombre="Carmen Reyes Segura" TipoDocIdentidad="1" identificacion="758020266"/>
    <Propietario Nombre="Darío Palacios De La Fuente" TipoDocIdentidad="1" identificacion="523250842"/>
    <Propietario Nombre="Alma Guerrero Bravo" TipoDocIdentidad="1" identificacion="383305485"/>
    <Propietario Nombre="Lucía Ortega Rivas" TipoDocIdentidad="1" identificacion="763022953"/>
    <Propietario Nombre="Chloe Delgado Rios" TipoDocIdentidad="1" identificacion="563991834"/>
    <Propietario Nombre="Carmen Cuesta Marin" TipoDocIdentidad="2" identificacion="823279685"/>
    <PropiedadVersusPropietario NumFinca="7706037" identificacion="182224865"/>
    <PropiedadVersusPropietario NumFinca="6769371" identificacion="325566608"/>
    <PropiedadVersusPropietario NumFinca="9631828" identificacion="233425622"/>
    <PropiedadVersusPropietario NumFinca="8051611" identificacion="605607316"/>
    <PropiedadVersusPropietario NumFinca="1021147" identificacion="758020266"/>
    <PropiedadVersusPropietario NumFinca="3384583" identificacion="523250842"/>
    <PropiedadVersusPropietario NumFinca="4566315" identificacion="383305485"/>
    <PropiedadVersusPropietario NumFinca="3949789" identificacion="763022953"/>
    <PropiedadVersusPropietario NumFinca="9927244" identificacion="563991834"/>
    <PropiedadVersusPropietario NumFinca="7361613" identificacion="823279685"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7706037"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6769371"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9631828"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8051611"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1021147"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3384583"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4566315"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3949789"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9927244"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7361613"/>
    <TransConsumo id="1" LecturaM3="685" descripcion="Cobro Mensual" NumFinca="3336538"/>
    <TransConsumo id="1" LecturaM3="364" descripcion="Cobro Mensual" NumFinca="6450028"/>
    <TransConsumo id="1" LecturaM3="478" descripcion="Cobro Mensual" NumFinca="1516510"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-07">
    <Propiedad NumFinca="4535058" Valor="15137469" Direccion=" Maxi Pali, 579 m Este."/>
    <Propiedad NumFinca="7760354" Valor="15145502" Direccion="Las Cascadas, 414 m Noroeste."/>
    <Propiedad NumFinca="9525283" Valor="15118262" Direccion=" Autolavado Nuestra Señora, 176 m Este."/>
    <Propiedad NumFinca="7138974" Valor="15448723" Direccion="Cuestillas, 689 m Suroeste."/>
    <Propiedad NumFinca="9356572" Valor="4624734" Direccion=" UNA, 433 m Este."/>
    <Propiedad NumFinca="9280665" Valor="21823651" Direccion="Cementerio de Santa Rosa, 120 m Suroeste."/>
    <Propiedad NumFinca="3648079" Valor="15625478" Direccion="Cementerio de Santa Rosa, 573 m Noroeste."/>
    <Propiedad NumFinca="5813463" Valor="13280983" Direccion="Cuestillas, 824 m Noreste."/>
    <Propiedad NumFinca="3147915" Valor="18634175" Direccion=" Maxi Pali, 755 m Noroeste."/>
    <Propiedad NumFinca="9509622" Valor="12585911" Direccion="Residencias Pacific Sun, 431 m Noreste."/>
    <Propietario Nombre="Rubén Gallego Vega" TipoDocIdentidad="1" identificacion="432344625"/>
    <Propietario Nombre="Jorge Cruz Lopez" TipoDocIdentidad="1" identificacion="149608201"/>
    <Propietario Nombre="Ángel Camacho Lazaro" TipoDocIdentidad="2" identificacion="890281549"/>
    <Propietario Nombre="Alejandro Carrasco Peña" TipoDocIdentidad="1" identificacion="413711863"/>
    <Propietario Nombre="Sofía Espinosa Lazaro" TipoDocIdentidad="1" identificacion="437874053"/>
    <Propietario Nombre="Mario Moya Rico" TipoDocIdentidad="1" identificacion="541040462"/>
    <Propietario Nombre="Mateo Vazquez Simon" TipoDocIdentidad="1" identificacion="399777086"/>
    <Propietario Nombre="Candela Fuentes Parra" TipoDocIdentidad="1" identificacion="374123786"/>
    <Propietario Nombre="Alejandro Mendez Bravo" TipoDocIdentidad="1" identificacion="637694545"/>
    <Propietario Nombre="Adam Gallardo Pozo" TipoDocIdentidad="1" identificacion="740514900"/>
    <PropiedadVersusPropietario NumFinca="4535058" identificacion="432344625"/>
    <PropiedadVersusPropietario NumFinca="7760354" identificacion="149608201"/>
    <PropiedadVersusPropietario NumFinca="9525283" identificacion="890281549"/>
    <PropiedadVersusPropietario NumFinca="7138974" identificacion="413711863"/>
    <PropiedadVersusPropietario NumFinca="9356572" identificacion="437874053"/>
    <PropiedadVersusPropietario NumFinca="9280665" identificacion="541040462"/>
    <PropiedadVersusPropietario NumFinca="3648079" identificacion="399777086"/>
    <PropiedadVersusPropietario NumFinca="5813463" identificacion="374123786"/>
    <PropiedadVersusPropietario NumFinca="3147915" identificacion="637694545"/>
    <PropiedadVersusPropietario NumFinca="9509622" identificacion="740514900"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4535058"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7760354"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9525283"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7138974"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9356572"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9280665"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3648079"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="5813463"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3147915"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9509622"/>
    <TransConsumo id="1" LecturaM3="1032" descripcion="Cobro Mensual" NumFinca="1176180"/>
    <TransConsumo id="1" LecturaM3="1327" descripcion="Cobro Mensual" NumFinca="1394522"/>
    <TransConsumo id="1" LecturaM3="465" descripcion="Cobro Mensual" NumFinca="6706978"/>
    <TransConsumo id="1" LecturaM3="339" descripcion="Cobro Mensual" NumFinca="7463111"/>
    <TransConsumo id="1" LecturaM3="397" descripcion="Cobro Mensual" NumFinca="3709169"/>
    <TransConsumo id="3" LecturaM3="31" descripcion="Lectura errónea" NumFinca="5310895"/>
    <Pago TipoRecibo="4" NumFinca="2246405"/>
    <Pago TipoRecibo="4" NumFinca="1176180"/>
    <Pago TipoRecibo="4" NumFinca="1394522"/>
    <Pago TipoRecibo="4" NumFinca="4121713"/>
    <Pago TipoRecibo="4" NumFinca="1420570"/>
    <Pago TipoRecibo="4" NumFinca="1423800"/>
    <Pago TipoRecibo="4" NumFinca="2291223"/>
    <Pago TipoRecibo="4" NumFinca="9005997"/>
    <Pago TipoRecibo="4" NumFinca="8104368"/>
    <Pago TipoRecibo="4" NumFinca="1551601"/>
    <Pago TipoRecibo="4" NumFinca="4867842"/>
    <Pago TipoRecibo="4" NumFinca="6584320"/>
    <Pago TipoRecibo="4" NumFinca="7605510"/>
    <Pago TipoRecibo="4" NumFinca="7632960"/>
    <Pago TipoRecibo="4" NumFinca="7738110"/>
    <Pago TipoRecibo="4" NumFinca="1538868"/>
    <Pago TipoRecibo="4" NumFinca="7787120"/>
    <Pago TipoRecibo="4" NumFinca="1104650"/>
    <Pago TipoRecibo="4" NumFinca="9829237"/>
    <Pago TipoRecibo="4" NumFinca="2029555"/>
    <Pago TipoRecibo="4" NumFinca="7810652"/>
    <Pago TipoRecibo="4" NumFinca="7864479"/>
    <Pago TipoRecibo="4" NumFinca="3093591"/>
    <Pago TipoRecibo="4" NumFinca="7055500"/>
    <Pago TipoRecibo="4" NumFinca="2660360"/>
    <Pago TipoRecibo="4" NumFinca="5368476"/>
    <Pago TipoRecibo="4" NumFinca="4081887"/>
    <Pago TipoRecibo="4" NumFinca="4184842"/>
    <Pago TipoRecibo="4" NumFinca="8698761"/>
    <Pago TipoRecibo="4" NumFinca="5185877"/>
    <Pago TipoRecibo="4" NumFinca="4325136"/>
    <Pago TipoRecibo="4" NumFinca="2510451"/>
    <Pago TipoRecibo="4" NumFinca="4308732"/>
    <Pago TipoRecibo="4" NumFinca="7029032"/>
    <Pago TipoRecibo="4" NumFinca="9320206"/>
    <Pago TipoRecibo="4" NumFinca="1257232"/>
    <Pago TipoRecibo="4" NumFinca="6298656"/>
    <Pago TipoRecibo="4" NumFinca="5109436"/>
    <Pago TipoRecibo="4" NumFinca="8569569"/>
    <Pago TipoRecibo="4" NumFinca="7878334"/>
    <Pago TipoRecibo="4" NumFinca="8970701"/>
    <Pago TipoRecibo="4" NumFinca="1339166"/>
    <Pago TipoRecibo="4" NumFinca="9420897"/>
    <Pago TipoRecibo="4" NumFinca="8209332"/>
    <Pago TipoRecibo="4" NumFinca="3626844"/>
    <Pago TipoRecibo="4" NumFinca="2574148"/>
    <Pago TipoRecibo="4" NumFinca="6433570"/>
    <Pago TipoRecibo="4" NumFinca="2810152"/>
    <Pago TipoRecibo="4" NumFinca="3051540"/>
    <Pago TipoRecibo="4" NumFinca="2730940"/>
    <Pago TipoRecibo="4" NumFinca="1382523"/>
    <Pago TipoRecibo="4" NumFinca="9591266"/>
    <Pago TipoRecibo="4" NumFinca="2045004"/>
    <Pago TipoRecibo="4" NumFinca="8927746"/>
    <Pago TipoRecibo="4" NumFinca="5466890"/>
    <Pago TipoRecibo="4" NumFinca="1389817"/>
    <Pago TipoRecibo="4" NumFinca="1031473"/>
    <Pago TipoRecibo="4" NumFinca="5828584"/>
    <Pago TipoRecibo="4" NumFinca="2179370"/>
    <Pago TipoRecibo="4" NumFinca="9771500"/>
    <Pago TipoRecibo="4" NumFinca="5406404"/>
    <Pago TipoRecibo="4" NumFinca="6512176"/>
    <Pago TipoRecibo="4" NumFinca="5342168"/>
    <Pago TipoRecibo="4" NumFinca="7180635"/>
    <Pago TipoRecibo="4" NumFinca="6777418"/>
    <Pago TipoRecibo="4" NumFinca="5908139"/>
    <Pago TipoRecibo="4" NumFinca="4180337"/>
    <Pago TipoRecibo="4" NumFinca="8045399"/>
    <Pago TipoRecibo="4" NumFinca="8747452"/>
    <Pago TipoRecibo="4" NumFinca="2681148"/>
    <Pago TipoRecibo="4" NumFinca="5831967"/>
    <Pago TipoRecibo="4" NumFinca="8656352"/>
    <Pago TipoRecibo="4" NumFinca="8424739"/>
    <Pago TipoRecibo="4" NumFinca="6016065"/>
    <Pago TipoRecibo="4" NumFinca="3649021"/>
    <Pago TipoRecibo="4" NumFinca="1886356"/>
    <Pago TipoRecibo="4" NumFinca="7502052"/>
    <Pago TipoRecibo="4" NumFinca="4285557"/>
    <Pago TipoRecibo="4" NumFinca="7129945"/>
    <Pago TipoRecibo="4" NumFinca="9575957"/>
    <Pago TipoRecibo="4" NumFinca="2380189"/>
    <Pago TipoRecibo="4" NumFinca="7913945"/>
    <Pago TipoRecibo="4" NumFinca="1576795"/>
    <Pago TipoRecibo="4" NumFinca="5379488"/>
    <Pago TipoRecibo="4" NumFinca="2544588"/>
    <Pago TipoRecibo="4" NumFinca="7287666"/>
    <Pago TipoRecibo="4" NumFinca="1965647"/>
    <Pago TipoRecibo="4" NumFinca="9508633"/>
    <Pago TipoRecibo="4" NumFinca="7809244"/>
    <Pago TipoRecibo="4" NumFinca="7658053"/>
    <Pago TipoRecibo="4" NumFinca="6947210"/>
    <Pago TipoRecibo="4" NumFinca="8555925"/>
    <Pago TipoRecibo="4" NumFinca="4689115"/>
    <Pago TipoRecibo="4" NumFinca="4983683"/>
    <Pago TipoRecibo="4" NumFinca="4131078"/>
    <Pago TipoRecibo="4" NumFinca="2809988"/>
    <Pago TipoRecibo="4" NumFinca="3187354"/>
    <Pago TipoRecibo="4" NumFinca="1174655"/>
    <Pago TipoRecibo="4" NumFinca="1223417"/>
    <Pago TipoRecibo="4" NumFinca="1486922"/>
    <Pago TipoRecibo="4" NumFinca="2295242"/>
    <Pago TipoRecibo="4" NumFinca="6168394"/>
    <Pago TipoRecibo="4" NumFinca="2592385"/>
    <Pago TipoRecibo="4" NumFinca="4878765"/>
    <Pago TipoRecibo="4" NumFinca="6275546"/>
    <Pago TipoRecibo="4" NumFinca="8720363"/>
    <Pago TipoRecibo="4" NumFinca="4182254"/>
    <Pago TipoRecibo="4" NumFinca="3723132"/>
    <Pago TipoRecibo="4" NumFinca="3450279"/>
    <Pago TipoRecibo="4" NumFinca="6384132"/>
    <Pago TipoRecibo="4" NumFinca="4468106"/>
    <Pago TipoRecibo="4" NumFinca="4566315"/>
    <Pago TipoRecibo="12" NumFinca="3107084"/>
    <Pago TipoRecibo="12" NumFinca="1565045"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-08">
    <Propiedad NumFinca="4829319" Valor="5147395" Direccion="Bar las delicias, 128 m Oeste."/>
    <Propiedad NumFinca="2619664" Valor="23362110" Direccion="Residencias Pacific Sun, 928 m Sur."/>
    <Propiedad NumFinca="9880299" Valor="14609476" Direccion=" Iglecia Los capuchinos, 378 m Este."/>
    <Propiedad NumFinca="4339116" Valor="15668421" Direccion="Calle Vargas, 385 m Noroeste."/>
    <Propiedad NumFinca="3370702" Valor="23392250" Direccion=" iglesia de Oreamuno, 330 m Noreste."/>
    <Propiedad NumFinca="4157922" Valor="25554226" Direccion="Residencias Pacific Sun, 411 m Suroeste."/>
    <Propiedad NumFinca="7114147" Valor="28464800" Direccion="Bri-Bri Centro, 578 m Suroeste."/>
    <Propiedad NumFinca="1157634" Valor="6803774" Direccion="Canoas, 764 m Este."/>
    <Propiedad NumFinca="1668865" Valor="11093128" Direccion="Manzanar, 306 m Noroeste."/>
    <Propiedad NumFinca="6438151" Valor="11756472" Direccion="San Rafael, 322 m Noreste."/>
    <Propietario Nombre="Mario Peña Gomez" TipoDocIdentidad="1" identificacion="356584709"/>
    <Propietario Nombre="Víctor San Pascual" TipoDocIdentidad="1" identificacion="190580044"/>
    <Propietario Nombre="Nerea Blanco Vargas" TipoDocIdentidad="1" identificacion="124257332"/>
    <Propietario Nombre="Jorge Prado Montes" TipoDocIdentidad="1" identificacion="383001827"/>
    <Propietario Nombre="Valeria Pastor Gil" TipoDocIdentidad="1" identificacion="635763404"/>
    <Propietario Nombre="Alberto Blazquez Lazaro" TipoDocIdentidad="1" identificacion="253312242"/>
    <Propietario Nombre="Samuel Bermudez Parra" TipoDocIdentidad="1" identificacion="522298600"/>
    <Propietario Nombre="Mía Andres Castro" TipoDocIdentidad="2" identificacion="870605611"/>
    <Propietario Nombre="Irene Gutierrez Navarro" TipoDocIdentidad="1" identificacion="531991694"/>
    <Propietario Nombre="Lucas Vidal Alvarez" TipoDocIdentidad="1" identificacion="115437374"/>
    <PropiedadVersusPropietario NumFinca="4829319" identificacion="356584709"/>
    <PropiedadVersusPropietario NumFinca="2619664" identificacion="190580044"/>
    <PropiedadVersusPropietario NumFinca="9880299" identificacion="124257332"/>
    <PropiedadVersusPropietario NumFinca="4339116" identificacion="383001827"/>
    <PropiedadVersusPropietario NumFinca="3370702" identificacion="635763404"/>
    <PropiedadVersusPropietario NumFinca="4157922" identificacion="253312242"/>
    <PropiedadVersusPropietario NumFinca="7114147" identificacion="522298600"/>
    <PropiedadVersusPropietario NumFinca="1157634" identificacion="870605611"/>
    <PropiedadVersusPropietario NumFinca="1668865" identificacion="531991694"/>
    <PropiedadVersusPropietario NumFinca="6438151" identificacion="115437374"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4829319"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2619664"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9880299"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4339116"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3370702"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4157922"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7114147"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1157634"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1668865"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6438151"/>
    <CambioPropiedad NumFinca="8434186" NuevoValor="12786031"/>
    <TransConsumo id="1" LecturaM3="400" descripcion="Cobro Mensual" NumFinca="3645908"/>
    <TransConsumo id="1" LecturaM3="383" descripcion="Cobro Mensual" NumFinca="7820463"/>
    <TransConsumo id="1" LecturaM3="494" descripcion="Cobro Mensual" NumFinca="2299692"/>
    <TransConsumo id="1" LecturaM3="455" descripcion="Cobro Mensual" NumFinca="9459793"/>
    <TransConsumo id="2" LecturaM3="48" descripcion="Reclamo de cliente" NumFinca="6736147"/>
    <TransConsumo id="3" LecturaM3="62" descripcion="Lectura errónea" NumFinca="3336538"/>
    <TransConsumo id="3" LecturaM3="1" descripcion="Lectura errónea" NumFinca="2291223"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-09">
    <Propiedad NumFinca="2929299" Valor="20650914" Direccion=" UNA, 332 m Este."/>
    <Propiedad NumFinca="4770710" Valor="12618666" Direccion=" Maxi Pali, 764 m Noroeste."/>
    <Propiedad NumFinca="1688226" Valor="17030896" Direccion="La Giralda, 345 m Noreste."/>
    <Propiedad NumFinca="9793976" Valor="24331514" Direccion="La Giralda, 264 m Sur."/>
    <Propiedad NumFinca="3677363" Valor="18229359" Direccion=" La Paz, 108 m Sureste."/>
    <Propiedad NumFinca="8747401" Valor="20610979" Direccion=" Autolavado Nuestra Señora, 688 m Sur."/>
    <Propiedad NumFinca="8441579" Valor="6913653" Direccion=" La Paz, 612 m Noroeste."/>
    <Propiedad NumFinca="2197832" Valor="26489197" Direccion=" Río Camarón, 526 m Sur."/>
    <Propiedad NumFinca="5538941" Valor="15734847" Direccion="La Giralda, 643 m Este."/>
    <Propiedad NumFinca="7142670" Valor="13886686" Direccion="Banco Nacional, 726 m Sureste."/>
    <Propietario Nombre="Martín Diaz Guerrero" TipoDocIdentidad="1" identificacion="563629087"/>
    <Propietario Nombre="Gonzalo Bermejo Lorenzo" TipoDocIdentidad="1" identificacion="768137411"/>
    <Propietario Nombre="Marcos Garcia Mata" TipoDocIdentidad="1" identificacion="475012586"/>
    <Propietario Nombre="Marco Segura Torre" TipoDocIdentidad="2" identificacion="822040771"/>
    <Propietario Nombre="Inés Fuente Cortes" TipoDocIdentidad="1" identificacion="384410602"/>
    <Propietario Nombre="Emma Hidalgo Vega" TipoDocIdentidad="1" identificacion="642896868"/>
    <Propietario Nombre="Eric Contreras Anton" TipoDocIdentidad="1" identificacion="705338098"/>
    <Propietario Nombre="Alicia Morales Navarro" TipoDocIdentidad="1" identificacion="220957993"/>
    <Propietario Nombre="Vega Otero Rubio" TipoDocIdentidad="2" identificacion="893454242"/>
    <Propietario Nombre="Samuel Millan Duran" TipoDocIdentidad="1" identificacion="519991263"/>
    <PropiedadVersusPropietario NumFinca="2929299" identificacion="563629087"/>
    <PropiedadVersusPropietario NumFinca="4770710" identificacion="768137411"/>
    <PropiedadVersusPropietario NumFinca="1688226" identificacion="475012586"/>
    <PropiedadVersusPropietario NumFinca="9793976" identificacion="822040771"/>
    <PropiedadVersusPropietario NumFinca="3677363" identificacion="384410602"/>
    <PropiedadVersusPropietario NumFinca="8747401" identificacion="642896868"/>
    <PropiedadVersusPropietario NumFinca="8441579" identificacion="705338098"/>
    <PropiedadVersusPropietario NumFinca="2197832" identificacion="220957993"/>
    <PropiedadVersusPropietario NumFinca="5538941" identificacion="893454242"/>
    <PropiedadVersusPropietario NumFinca="7142670" identificacion="519991263"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2929299"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4770710"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1688226"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9793976"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3677363"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="8747401"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="8441579"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2197832"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5538941"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7142670"/>
    <CambioPropiedad NumFinca="6720212" NuevoValor="13347049"/>
    <TransConsumo id="1" LecturaM3="349" descripcion="Cobro Mensual" NumFinca="5426691"/>
    <TransConsumo id="1" LecturaM3="324" descripcion="Cobro Mensual" NumFinca="5488897"/>
    <TransConsumo id="1" LecturaM3="386" descripcion="Cobro Mensual" NumFinca="7200258"/>
    <Pago TipoRecibo="7" NumFinca="1423800"/>
    <Pago TipoRecibo="7" NumFinca="1393022"/>
    <Pago TipoRecibo="7" NumFinca="1579482"/>
    <Pago TipoRecibo="7" NumFinca="2239600"/>
    <Pago TipoRecibo="7" NumFinca="1545327"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-10">
    <Propiedad NumFinca="3416425" Valor="16163857" Direccion="Las Cascadas, 300 m Sur."/>
    <Propiedad NumFinca="1232288" Valor="7477257" Direccion="De Nava Café, 899 m Noreste."/>
    <Propiedad NumFinca="4047895" Valor="17099283" Direccion=" Río Camarón, 210 m Sureste."/>
    <Propiedad NumFinca="3547514" Valor="7127901" Direccion=" Autolavado Nuestra Señora, 358 m Noreste."/>
    <Propiedad NumFinca="9521893" Valor="9976302" Direccion=" Lumaca, 778 m Noreste."/>
    <Propiedad NumFinca="2210789" Valor="11224455" Direccion=" Autolavado Nuestra Señora, 137 m Oeste."/>
    <Propiedad NumFinca="2678819" Valor="14941759" Direccion="UCR, 295 m Oeste."/>
    <Propiedad NumFinca="2405525" Valor="20458107" Direccion="El Alto, 137 m Oeste."/>
    <Propiedad NumFinca="6540501" Valor="12915578" Direccion=" MasxMenos, 645 m Sur."/>
    <Propiedad NumFinca="6296537" Valor="5149885" Direccion="Hacienda Vieja, 106 m Norte."/>
    <Propietario Nombre="José Moya Santiago" TipoDocIdentidad="1" identificacion="325224222"/>
    <Propietario Nombre="Inés Soto Muñoz" TipoDocIdentidad="1" identificacion="759479210"/>
    <Propietario Nombre="Elena Miranda Benito" TipoDocIdentidad="1" identificacion="461625409"/>
    <Propietario Nombre="Irene Vicente Fernandez" TipoDocIdentidad="1" identificacion="229333076"/>
    <Propietario Nombre="Alba Delgado Redondo" TipoDocIdentidad="1" identificacion="665887320"/>
    <Propietario Nombre="Nicolás Rivera Dominguez" TipoDocIdentidad="1" identificacion="381700625"/>
    <Propietario Nombre="Adrián Soriano Andres" TipoDocIdentidad="1" identificacion="137907971"/>
    <Propietario Nombre="Sofía Crespo Fuente" TipoDocIdentidad="1" identificacion="664389486"/>
    <Propietario Nombre="Alicia Silva Mendoza" TipoDocIdentidad="1" identificacion="116053863"/>
    <Propietario Nombre="Alma Santamaria Hernandez" TipoDocIdentidad="1" identificacion="172282687"/>
    <PropiedadVersusPropietario NumFinca="3416425" identificacion="325224222"/>
    <PropiedadVersusPropietario NumFinca="1232288" identificacion="759479210"/>
    <PropiedadVersusPropietario NumFinca="4047895" identificacion="461625409"/>
    <PropiedadVersusPropietario NumFinca="3547514" identificacion="229333076"/>
    <PropiedadVersusPropietario NumFinca="9521893" identificacion="665887320"/>
    <PropiedadVersusPropietario NumFinca="2210789" identificacion="381700625"/>
    <PropiedadVersusPropietario NumFinca="2678819" identificacion="137907971"/>
    <PropiedadVersusPropietario NumFinca="2405525" identificacion="664389486"/>
    <PropiedadVersusPropietario NumFinca="6540501" identificacion="116053863"/>
    <PropiedadVersusPropietario NumFinca="6296537" identificacion="172282687"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3416425"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1232288"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4047895"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3547514"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9521893"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2210789"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2678819"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2405525"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6540501"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6296537"/>
    <TransConsumo id="1" LecturaM3="1159" descripcion="Cobro Mensual" NumFinca="1750401"/>
    <TransConsumo id="1" LecturaM3="1183" descripcion="Cobro Mensual" NumFinca="4121713"/>
    <TransConsumo id="1" LecturaM3="1152" descripcion="Cobro Mensual" NumFinca="1605224"/>
    <TransConsumo id="1" LecturaM3="1231" descripcion="Cobro Mensual" NumFinca="1423800"/>
    <TransConsumo id="1" LecturaM3="1214" descripcion="Cobro Mensual" NumFinca="1568495"/>
    <TransConsumo id="1" LecturaM3="1365" descripcion="Cobro Mensual" NumFinca="2291223"/>
    <TransConsumo id="1" LecturaM3="764" descripcion="Cobro Mensual" NumFinca="6832824"/>
    <TransConsumo id="1" LecturaM3="812" descripcion="Cobro Mensual" NumFinca="8583838"/>
    <TransConsumo id="1" LecturaM3="424" descripcion="Cobro Mensual" NumFinca="3099309"/>
    <TransConsumo id="3" LecturaM3="72" descripcion="Lectura errónea" NumFinca="4663528"/>
    <TransConsumo id="2" LecturaM3="42" descripcion="Reclamo de cliente" NumFinca="9365866"/>
    <Pago TipoRecibo="8" NumFinca="1420570"/>
    <Pago TipoRecibo="8" NumFinca="2425954"/>
    <Pago TipoRecibo="8" NumFinca="1339574"/>
    <Pago TipoRecibo="8" NumFinca="7148454"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-11">
    <Propiedad NumFinca="5692223" Valor="9223547" Direccion="San Felipe, 349 m Suroeste."/>
    <Propiedad NumFinca="7495320" Valor="7122676" Direccion="Manzanar, 601 m Norte."/>
    <Propiedad NumFinca="7376083" Valor="23520234" Direccion="Santa Rosa, 494 m Noreste."/>
    <Propiedad NumFinca="5226945" Valor="5722311" Direccion="Cementerio de Santa Rosa, 419 m Este."/>
    <Propiedad NumFinca="9073717" Valor="4532949" Direccion="Soda la Paz, 628 m Noroeste."/>
    <Propiedad NumFinca="5198737" Valor="24299012" Direccion="Cuestillas, 931 m Este."/>
    <Propiedad NumFinca="6527556" Valor="22493918" Direccion=" iglesia de Oreamuno, 71 m Sur."/>
    <Propiedad NumFinca="2657785" Valor="16469735" Direccion="Iglesia Católica de Cartago Norte, 317 m Este."/>
    <Propiedad NumFinca="4716673" Valor="22674891" Direccion=" Fresh Markert, 512 m Sur."/>
    <Propiedad NumFinca="8079672" Valor="9622333" Direccion=" AM-PM, 277 m Este."/>
    <Propietario Nombre="Laia Cuesta Navarro" TipoDocIdentidad="1" identificacion="301776677"/>
    <Propietario Nombre="Marta Corral Lara" TipoDocIdentidad="1" identificacion="241199888"/>
    <Propietario Nombre="Elena Suarez De La Fuente" TipoDocIdentidad="1" identificacion="681104115"/>
    <Propietario Nombre="Javier Salas Pereira" TipoDocIdentidad="1" identificacion="533580589"/>
    <Propietario Nombre="Nerea Rey Miranda" TipoDocIdentidad="1" identificacion="318002212"/>
    <Propietario Nombre="Hugo Tomas Benitez" TipoDocIdentidad="1" identificacion="251370097"/>
    <Propietario Nombre="Carlota Gimenez Montes" TipoDocIdentidad="1" identificacion="270643225"/>
    <Propietario Nombre="Laura Rodriguez Rivas" TipoDocIdentidad="1" identificacion="777814168"/>
    <Propietario Nombre="Alex Palacios Silva" TipoDocIdentidad="1" identificacion="510523805"/>
    <Propietario Nombre="José Santiago Carmona" TipoDocIdentidad="1" identificacion="597364385"/>
    <PropiedadVersusPropietario NumFinca="5692223" identificacion="301776677"/>
    <PropiedadVersusPropietario NumFinca="7495320" identificacion="241199888"/>
    <PropiedadVersusPropietario NumFinca="7376083" identificacion="681104115"/>
    <PropiedadVersusPropietario NumFinca="5226945" identificacion="533580589"/>
    <PropiedadVersusPropietario NumFinca="9073717" identificacion="318002212"/>
    <PropiedadVersusPropietario NumFinca="5198737" identificacion="251370097"/>
    <PropiedadVersusPropietario NumFinca="6527556" identificacion="270643225"/>
    <PropiedadVersusPropietario NumFinca="2657785" identificacion="777814168"/>
    <PropiedadVersusPropietario NumFinca="4716673" identificacion="510523805"/>
    <PropiedadVersusPropietario NumFinca="8079672" identificacion="597364385"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5692223"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7495320"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7376083"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5226945"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9073717"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5198737"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6527556"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2657785"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4716673"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="8079672"/>
    <TransConsumo id="1" LecturaM3="1433" descripcion="Cobro Mensual" NumFinca="4782873"/>
    <TransConsumo id="1" LecturaM3="754" descripcion="Cobro Mensual" NumFinca="3159179"/>
    <TransConsumo id="1" LecturaM3="832" descripcion="Cobro Mensual" NumFinca="3312213"/>
    <TransConsumo id="1" LecturaM3="440" descripcion="Cobro Mensual" NumFinca="5480590"/>
    <TransConsumo id="3" LecturaM3="16" descripcion="Lectura errónea" NumFinca="5488897"/>
    <Pago TipoRecibo="9" NumFinca="2346334"/>
    <Pago TipoRecibo="9" NumFinca="2225118"/>
    <Pago TipoRecibo="9" NumFinca="2520127"/>
    <Pago TipoRecibo="9" NumFinca="3168593"/>
    <Pago TipoRecibo="9" NumFinca="2201960"/>
    <Pago TipoRecibo="9" NumFinca="3206723"/>
    <Pago TipoRecibo="9" NumFinca="2512174"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-12">
    <Propiedad NumFinca="4791720" Valor="21549334" Direccion=" La fuente central, 392 m Este."/>
    <Propiedad NumFinca="8236896" Valor="13593391" Direccion="El Jardín, 161 m Noroeste."/>
    <Propiedad NumFinca="4357229" Valor="3386133" Direccion="La Francia, 232 m Norte."/>
    <Propiedad NumFinca="7635286" Valor="7593089" Direccion="Soda el Higueron, 509 m Suroeste."/>
    <Propiedad NumFinca="5827292" Valor="15357447" Direccion=" Iglecia Los capuchinos, 413 m Este."/>
    <Propiedad NumFinca="2876866" Valor="11351786" Direccion="La Giralda, 647 m Este."/>
    <Propiedad NumFinca="7488063" Valor="15628226" Direccion="Brasil de Mora, 303 m Noroeste."/>
    <Propiedad NumFinca="7278185" Valor="15729016" Direccion="Cuestillas, 756 m Sureste."/>
    <Propiedad NumFinca="9755461" Valor="8637615" Direccion=" La fuente central, 602 m Oeste."/>
    <Propiedad NumFinca="1157661" Valor="9013961" Direccion=" La fuente central, 948 m Oeste."/>
    <Propietario Nombre="Izan Flores Guerrero" TipoDocIdentidad="1" identificacion="163380287"/>
    <Propietario Nombre="Eric Roldan Guerra" TipoDocIdentidad="1" identificacion="191888017"/>
    <Propietario Nombre="Adrián Gallego Hidalgo" TipoDocIdentidad="1" identificacion="786004725"/>
    <Propietario Nombre="Jimena Casas Velasco" TipoDocIdentidad="2" identificacion="810176322"/>
    <Propietario Nombre="Pablo Lazaro Sanchez" TipoDocIdentidad="1" identificacion="264892680"/>
    <Propietario Nombre="Víctor Prado Costa" TipoDocIdentidad="1" identificacion="621243914"/>
    <Propietario Nombre="Ángel Redondo Millan" TipoDocIdentidad="1" identificacion="461257935"/>
    <Propietario Nombre="María Asensio Rodrigo" TipoDocIdentidad="2" identificacion="859787515"/>
    <Propietario Nombre="Jesús Mora Manzano" TipoDocIdentidad="1" identificacion="558825242"/>
    <Propietario Nombre="Marco Rueda Rivas" TipoDocIdentidad="1" identificacion="296255053"/>
    <PropiedadVersusPropietario NumFinca="4791720" identificacion="163380287"/>
    <PropiedadVersusPropietario NumFinca="8236896" identificacion="191888017"/>
    <PropiedadVersusPropietario NumFinca="4357229" identificacion="786004725"/>
    <PropiedadVersusPropietario NumFinca="7635286" identificacion="810176322"/>
    <PropiedadVersusPropietario NumFinca="5827292" identificacion="264892680"/>
    <PropiedadVersusPropietario NumFinca="2876866" identificacion="621243914"/>
    <PropiedadVersusPropietario NumFinca="7488063" identificacion="461257935"/>
    <PropiedadVersusPropietario NumFinca="7278185" identificacion="859787515"/>
    <PropiedadVersusPropietario NumFinca="9755461" identificacion="558825242"/>
    <PropiedadVersusPropietario NumFinca="1157661" identificacion="296255053"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4791720"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8236896"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4357229"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7635286"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5827292"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2876866"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7488063"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7278185"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9755461"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1157661"/>
    <CambioPropiedad NumFinca="9521893" NuevoValor="8064048"/>
    <TransConsumo id="1" LecturaM3="1244" descripcion="Cobro Mensual" NumFinca="6325448"/>
    <TransConsumo id="1" LecturaM3="1075" descripcion="Cobro Mensual" NumFinca="6766683"/>
    <TransConsumo id="1" LecturaM3="1294" descripcion="Cobro Mensual" NumFinca="6736147"/>
    <TransConsumo id="1" LecturaM3="898" descripcion="Cobro Mensual" NumFinca="9365866"/>
    <TransConsumo id="1" LecturaM3="307" descripcion="Cobro Mensual" NumFinca="9652577"/>
    <TransConsumo id="1" LecturaM3="409" descripcion="Cobro Mensual" NumFinca="4065289"/>
    <TransConsumo id="3" LecturaM3="58" descripcion="Lectura errónea" NumFinca="1463009"/>
    <Pago TipoRecibo="3" NumFinca="6526774"/>
    <Pago TipoRecibo="3" NumFinca="2888543"/>
    <Pago TipoRecibo="3" NumFinca="4569644"/>
    <Pago TipoRecibo="3" NumFinca="1714464"/>
    <Pago TipoRecibo="3" NumFinca="1176180"/>
    <Pago TipoRecibo="3" NumFinca="1394522"/>
    <Pago TipoRecibo="3" NumFinca="1423800"/>
    <Pago TipoRecibo="3" NumFinca="2291223"/>
    <Pago TipoRecibo="3" NumFinca="9907089"/>
    <Pago TipoRecibo="3" NumFinca="4828218"/>
    <Pago TipoRecibo="3" NumFinca="7539590"/>
    <Pago TipoRecibo="3" NumFinca="1212294"/>
    <Pago TipoRecibo="3" NumFinca="1476188"/>
    <Pago TipoRecibo="3" NumFinca="4182870"/>
    <Pago TipoRecibo="3" NumFinca="2734696"/>
    <Pago TipoRecibo="3" NumFinca="8743195"/>
    <Pago TipoRecibo="3" NumFinca="9072945"/>
    <Pago TipoRecibo="3" NumFinca="9538337"/>
    <Pago TipoRecibo="3" NumFinca="7238495"/>
    <Pago TipoRecibo="3" NumFinca="4184252"/>
    <Pago TipoRecibo="3" NumFinca="4193112"/>
    <Pago TipoRecibo="3" NumFinca="6527953"/>
    <Pago TipoRecibo="3" NumFinca="9380786"/>
    <Pago TipoRecibo="3" NumFinca="7991150"/>
    <Pago TipoRecibo="3" NumFinca="7762610"/>
    <Pago TipoRecibo="3" NumFinca="2789388"/>
    <Pago TipoRecibo="3" NumFinca="9082340"/>
    <Pago TipoRecibo="3" NumFinca="9363951"/>
    <Pago TipoRecibo="3" NumFinca="8076596"/>
    <Pago TipoRecibo="3" NumFinca="9944467"/>
    <Pago TipoRecibo="3" NumFinca="8717485"/>
    <Pago TipoRecibo="3" NumFinca="8500064"/>
    <Pago TipoRecibo="3" NumFinca="2407485"/>
    <Pago TipoRecibo="3" NumFinca="2360478"/>
    <Pago TipoRecibo="3" NumFinca="2281645"/>
    <Pago TipoRecibo="3" NumFinca="3623306"/>
    <Pago TipoRecibo="3" NumFinca="6838727"/>
    <Pago TipoRecibo="3" NumFinca="8154453"/>
    <Pago TipoRecibo="3" NumFinca="5759986"/>
    <Pago TipoRecibo="3" NumFinca="2450807"/>
    <Pago TipoRecibo="3" NumFinca="9358386"/>
    <Pago TipoRecibo="3" NumFinca="3610606"/>
    <Pago TipoRecibo="3" NumFinca="8558350"/>
    <Pago TipoRecibo="3" NumFinca="7021501"/>
    <Pago TipoRecibo="3" NumFinca="7651166"/>
    <Pago TipoRecibo="3" NumFinca="6120307"/>
    <Pago TipoRecibo="3" NumFinca="5706265"/>
    <Pago TipoRecibo="3" NumFinca="8978244"/>
    <Pago TipoRecibo="3" NumFinca="1328804"/>
    <Pago TipoRecibo="3" NumFinca="1995705"/>
    <Pago TipoRecibo="3" NumFinca="2913367"/>
    <Pago TipoRecibo="3" NumFinca="5605527"/>
    <Pago TipoRecibo="3" NumFinca="9060769"/>
    <Pago TipoRecibo="3" NumFinca="8200826"/>
    <Pago TipoRecibo="3" NumFinca="2725968"/>
    <Pago TipoRecibo="3" NumFinca="2962597"/>
    <Pago TipoRecibo="3" NumFinca="9998670"/>
    <Pago TipoRecibo="3" NumFinca="8152275"/>
    <Pago TipoRecibo="3" NumFinca="6404248"/>
    <Pago TipoRecibo="3" NumFinca="5273794"/>
    <Pago TipoRecibo="3" NumFinca="9053097"/>
    <Pago TipoRecibo="3" NumFinca="6217470"/>
    <Pago TipoRecibo="3" NumFinca="1734510"/>
    <Pago TipoRecibo="3" NumFinca="9048469"/>
    <Pago TipoRecibo="3" NumFinca="8030894"/>
    <Pago TipoRecibo="3" NumFinca="4501850"/>
    <Pago TipoRecibo="3" NumFinca="7292815"/>
    <Pago TipoRecibo="3" NumFinca="8195591"/>
    <Pago TipoRecibo="3" NumFinca="7543642"/>
    <Pago TipoRecibo="3" NumFinca="3286826"/>
    <Pago TipoRecibo="3" NumFinca="5883420"/>
    <Pago TipoRecibo="3" NumFinca="3804031"/>
    <Pago TipoRecibo="3" NumFinca="6890006"/>
    <Pago TipoRecibo="3" NumFinca="3062469"/>
    <Pago TipoRecibo="3" NumFinca="3251421"/>
    <Pago TipoRecibo="3" NumFinca="2380059"/>
    <Pago TipoRecibo="3" NumFinca="8996858"/>
    <Pago TipoRecibo="3" NumFinca="7009929"/>
    <Pago TipoRecibo="3" NumFinca="5228864"/>
    <Pago TipoRecibo="3" NumFinca="2866079"/>
    <Pago TipoRecibo="3" NumFinca="7718001"/>
    <Pago TipoRecibo="3" NumFinca="5594145"/>
    <Pago TipoRecibo="3" NumFinca="1828043"/>
    <Pago TipoRecibo="3" NumFinca="9194586"/>
    <Pago TipoRecibo="3" NumFinca="9837074"/>
    <Pago TipoRecibo="3" NumFinca="5595498"/>
    <Pago TipoRecibo="3" NumFinca="4926405"/>
    <Pago TipoRecibo="3" NumFinca="2541702"/>
    <Pago TipoRecibo="3" NumFinca="6056857"/>
    <Pago TipoRecibo="3" NumFinca="9565501"/>
    <Pago TipoRecibo="3" NumFinca="3037336"/>
    <Pago TipoRecibo="3" NumFinca="3345659"/>
    <Pago TipoRecibo="3" NumFinca="2574448"/>
    <Pago TipoRecibo="3" NumFinca="5996674"/>
    <Pago TipoRecibo="3" NumFinca="8528257"/>
    <Pago TipoRecibo="3" NumFinca="1617330"/>
    <Pago TipoRecibo="3" NumFinca="5679867"/>
    <Pago TipoRecibo="3" NumFinca="4952759"/>
    <Pago TipoRecibo="3" NumFinca="5308786"/>
    <Pago TipoRecibo="3" NumFinca="6769371"/>
    <Pago TipoRecibo="3" NumFinca="3384583"/>
    <Pago TipoRecibo="3" NumFinca="7361613"/>
    <Pago TipoRecibo="3" NumFinca="3648079"/>
    <Pago TipoRecibo="3" NumFinca="4829319"/>
    <Pago TipoRecibo="3" NumFinca="4339116"/>
    <Pago TipoRecibo="3" NumFinca="4157922"/>
    <Pago TipoRecibo="3" NumFinca="2405525"/>
    <Pago TipoRecibo="3" NumFinca="5198737"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-13">
    <Propiedad NumFinca="8369257" Valor="26291672" Direccion="De Nava Café, 858 m Norte."/>
    <Propiedad NumFinca="4988590" Valor="29022541" Direccion=" MasxMenos, 384 m Noreste."/>
    <Propiedad NumFinca="2115098" Valor="13501276" Direccion=" Fresh Markert, 309 m Sureste."/>
    <Propiedad NumFinca="2275553" Valor="25077474" Direccion="La Giralda, 538 m Sureste."/>
    <Propiedad NumFinca="2633182" Valor="15712551" Direccion="Orotina, 787 m Oeste."/>
    <Propiedad NumFinca="5910576" Valor="12744254" Direccion="Urbanización La Pacífica, 623 m Noroeste."/>
    <Propiedad NumFinca="4868908" Valor="17880304" Direccion=" La fuente central, 801 m Norte."/>
    <Propiedad NumFinca="5016108" Valor="19528663" Direccion="Iglesia Católica de Cartago Norte, 393 m Norte."/>
    <Propiedad NumFinca="9248409" Valor="4184847" Direccion="Corazón de Jesús, 223 m Noroeste."/>
    <Propiedad NumFinca="5656927" Valor="13087286" Direccion="Ciruelas, 554 m Sur."/>
    <Propietario Nombre="Guillermo Muñoz Herrera" TipoDocIdentidad="2" identificacion="849052410"/>
    <Propietario Nombre="Bruno Cabrera Mata" TipoDocIdentidad="1" identificacion="468833151"/>
    <Propietario Nombre="Adam Blanco Roldan" TipoDocIdentidad="1" identificacion="720282232"/>
    <Propietario Nombre="Álvaro Moreno Garrido" TipoDocIdentidad="1" identificacion="330058710"/>
    <Propietario Nombre="Valeria Hernandez Soto" TipoDocIdentidad="1" identificacion="286247371"/>
    <Propietario Nombre="Alberto Espinosa Zamora" TipoDocIdentidad="1" identificacion="341085580"/>
    <Propietario Nombre="Carla Bermudez Bermudez" TipoDocIdentidad="2" identificacion="828040318"/>
    <Propietario Nombre="Adam Ballesteros Nieto" TipoDocIdentidad="2" identificacion="895349545"/>
    <Propietario Nombre="Blanca Izquierdo Calvo" TipoDocIdentidad="1" identificacion="461256929"/>
    <Propietario Nombre="Darío Andres Rosa" TipoDocIdentidad="2" identificacion="802625472"/>
    <PropiedadVersusPropietario NumFinca="8369257" identificacion="849052410"/>
    <PropiedadVersusPropietario NumFinca="4988590" identificacion="468833151"/>
    <PropiedadVersusPropietario NumFinca="2115098" identificacion="720282232"/>
    <PropiedadVersusPropietario NumFinca="2275553" identificacion="330058710"/>
    <PropiedadVersusPropietario NumFinca="2633182" identificacion="286247371"/>
    <PropiedadVersusPropietario NumFinca="5910576" identificacion="341085580"/>
    <PropiedadVersusPropietario NumFinca="4868908" identificacion="828040318"/>
    <PropiedadVersusPropietario NumFinca="5016108" identificacion="895349545"/>
    <PropiedadVersusPropietario NumFinca="9248409" identificacion="461256929"/>
    <PropiedadVersusPropietario NumFinca="5656927" identificacion="802625472"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8369257"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4988590"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2115098"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2275553"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2633182"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5910576"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4868908"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5016108"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9248409"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5656927"/>
    <TransConsumo id="1" LecturaM3="1190" descripcion="Cobro Mensual" NumFinca="1858970"/>
    <TransConsumo id="1" LecturaM3="1349" descripcion="Cobro Mensual" NumFinca="2101885"/>
    <TransConsumo id="3" LecturaM3="6" descripcion="Lectura errónea" NumFinca="6325448"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-14">
    <Propiedad NumFinca="1368778" Valor="10656896" Direccion="Bar las delicias, 411 m Noreste."/>
    <Propiedad NumFinca="3071957" Valor="26743464" Direccion="Las Cascadas, 259 m Oeste."/>
    <Propiedad NumFinca="8229732" Valor="5071687" Direccion="ITEC, 194 m Sur."/>
    <Propiedad NumFinca="1935633" Valor="5514601" Direccion="Ciruelas, 669 m Noreste."/>
    <Propiedad NumFinca="2032338" Valor="6180518" Direccion=" Maxi Pali, 214 m Noreste."/>
    <Propiedad NumFinca="8490663" Valor="4946783" Direccion=" UNA, 682 m Suroeste."/>
    <Propiedad NumFinca="2652994" Valor="9893480" Direccion="San Gerardo, 531 m Este."/>
    <Propiedad NumFinca="7090316" Valor="25808680" Direccion="Urbanización La Pacífica, 368 m Oeste."/>
    <Propiedad NumFinca="5225304" Valor="24760746" Direccion=" Iglecia Los capuchinos, 767 m Sureste."/>
    <Propiedad NumFinca="1252365" Valor="21954875" Direccion="San Felipe, 279 m Norte."/>
    <Propietario Nombre="Gabriel Prado Salas" TipoDocIdentidad="1" identificacion="713432059"/>
    <Propietario Nombre="Nerea Velasco Casado" TipoDocIdentidad="1" identificacion="781945514"/>
    <Propietario Nombre="Aitor Manzano Merino" TipoDocIdentidad="1" identificacion="185388027"/>
    <Propietario Nombre="Aitana Bermudez Velasco" TipoDocIdentidad="1" identificacion="725881845"/>
    <Propietario Nombre="Martina Gomez Roldan" TipoDocIdentidad="2" identificacion="819009880"/>
    <Propietario Nombre="Lucas Diez Blanco" TipoDocIdentidad="1" identificacion="492519850"/>
    <Propietario Nombre="Sara Redondo Mendoza" TipoDocIdentidad="1" identificacion="345187064"/>
    <Propietario Nombre="Marina Andres Gonzalez" TipoDocIdentidad="1" identificacion="702799081"/>
    <Propietario Nombre="Martín Camacho Gutierrez" TipoDocIdentidad="1" identificacion="568369215"/>
    <Propietario Nombre="Samuel Ballesteros Ballesteros" TipoDocIdentidad="1" identificacion="689262166"/>
    <PropiedadVersusPropietario NumFinca="1368778" identificacion="713432059"/>
    <PropiedadVersusPropietario NumFinca="3071957" identificacion="781945514"/>
    <PropiedadVersusPropietario NumFinca="8229732" identificacion="185388027"/>
    <PropiedadVersusPropietario NumFinca="1935633" identificacion="725881845"/>
    <PropiedadVersusPropietario NumFinca="2032338" identificacion="819009880"/>
    <PropiedadVersusPropietario NumFinca="8490663" identificacion="492519850"/>
    <PropiedadVersusPropietario NumFinca="2652994" identificacion="345187064"/>
    <PropiedadVersusPropietario NumFinca="7090316" identificacion="702799081"/>
    <PropiedadVersusPropietario NumFinca="5225304" identificacion="568369215"/>
    <PropiedadVersusPropietario NumFinca="1252365" identificacion="689262166"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1368778"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3071957"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="8229732"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1935633"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2032338"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8490663"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2652994"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7090316"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5225304"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1252365"/>
    <CambioPropiedad NumFinca="3975668" NuevoValor="3430592"/>
    <TransConsumo id="1" LecturaM3="1323" descripcion="Cobro Mensual" NumFinca="6722024"/>
    <TransConsumo id="1" LecturaM3="1124" descripcion="Cobro Mensual" NumFinca="5310895"/>
    <TransConsumo id="1" LecturaM3="1276" descripcion="Cobro Mensual" NumFinca="3443064"/>
    <TransConsumo id="1" LecturaM3="1322" descripcion="Cobro Mensual" NumFinca="7254630"/>
    <TransConsumo id="1" LecturaM3="1144" descripcion="Cobro Mensual" NumFinca="3901661"/>
    <TransConsumo id="1" LecturaM3="1126" descripcion="Cobro Mensual" NumFinca="6883678"/>
    <Pago TipoRecibo="2" NumFinca="3178673"/>
    <Pago TipoRecibo="2" NumFinca="1424417"/>
    <Pago TipoRecibo="2" NumFinca="1176180"/>
    <Pago TipoRecibo="2" NumFinca="1394522"/>
    <Pago TipoRecibo="2" NumFinca="1750401"/>
    <Pago TipoRecibo="2" NumFinca="4121713"/>
    <Pago TipoRecibo="2" NumFinca="1423800"/>
    <Pago TipoRecibo="2" NumFinca="2291223"/>
    <Pago TipoRecibo="2" NumFinca="5694094"/>
    <Pago TipoRecibo="2" NumFinca="7301730"/>
    <Pago TipoRecibo="2" NumFinca="3081243"/>
    <Pago TipoRecibo="2" NumFinca="7929322"/>
    <Pago TipoRecibo="2" NumFinca="5086841"/>
    <Pago TipoRecibo="2" NumFinca="1201330"/>
    <Pago TipoRecibo="2" NumFinca="6215848"/>
    <Pago TipoRecibo="2" NumFinca="9373199"/>
    <Pago TipoRecibo="2" NumFinca="7253078"/>
    <Pago TipoRecibo="2" NumFinca="6741380"/>
    <Pago TipoRecibo="2" NumFinca="8719164"/>
    <Pago TipoRecibo="2" NumFinca="1514282"/>
    <Pago TipoRecibo="2" NumFinca="2205723"/>
    <Pago TipoRecibo="2" NumFinca="6531847"/>
    <Pago TipoRecibo="2" NumFinca="1298862"/>
    <Pago TipoRecibo="2" NumFinca="3130126"/>
    <Pago TipoRecibo="2" NumFinca="5109920"/>
    <Pago TipoRecibo="2" NumFinca="1247220"/>
    <Pago TipoRecibo="2" NumFinca="1130552"/>
    <Pago TipoRecibo="2" NumFinca="4515090"/>
    <Pago TipoRecibo="2" NumFinca="2463803"/>
    <Pago TipoRecibo="2" NumFinca="7965590"/>
    <Pago TipoRecibo="2" NumFinca="4514551"/>
    <Pago TipoRecibo="2" NumFinca="7229874"/>
    <Pago TipoRecibo="2" NumFinca="1075105"/>
    <Pago TipoRecibo="2" NumFinca="7661654"/>
    <Pago TipoRecibo="2" NumFinca="4805505"/>
    <Pago TipoRecibo="2" NumFinca="1041312"/>
    <Pago TipoRecibo="2" NumFinca="4786459"/>
    <Pago TipoRecibo="2" NumFinca="9406874"/>
    <Pago TipoRecibo="2" NumFinca="9860743"/>
    <Pago TipoRecibo="2" NumFinca="6792148"/>
    <Pago TipoRecibo="2" NumFinca="7416445"/>
    <Pago TipoRecibo="2" NumFinca="7748824"/>
    <Pago TipoRecibo="2" NumFinca="5434825"/>
    <Pago TipoRecibo="2" NumFinca="3598213"/>
    <Pago TipoRecibo="2" NumFinca="9597064"/>
    <Pago TipoRecibo="2" NumFinca="3407892"/>
    <Pago TipoRecibo="2" NumFinca="4686808"/>
    <Pago TipoRecibo="2" NumFinca="4012617"/>
    <Pago TipoRecibo="2" NumFinca="9031163"/>
    <Pago TipoRecibo="2" NumFinca="2692524"/>
    <Pago TipoRecibo="2" NumFinca="6896983"/>
    <Pago TipoRecibo="2" NumFinca="5396190"/>
    <Pago TipoRecibo="2" NumFinca="7794993"/>
    <Pago TipoRecibo="2" NumFinca="8511183"/>
    <Pago TipoRecibo="2" NumFinca="7143966"/>
    <Pago TipoRecibo="2" NumFinca="4326248"/>
    <Pago TipoRecibo="2" NumFinca="9971625"/>
    <Pago TipoRecibo="2" NumFinca="7608458"/>
    <Pago TipoRecibo="2" NumFinca="9622855"/>
    <Pago TipoRecibo="2" NumFinca="7488094"/>
    <Pago TipoRecibo="2" NumFinca="5680609"/>
    <Pago TipoRecibo="2" NumFinca="8450452"/>
    <Pago TipoRecibo="2" NumFinca="2895405"/>
    <Pago TipoRecibo="2" NumFinca="7735736"/>
    <Pago TipoRecibo="2" NumFinca="7895153"/>
    <Pago TipoRecibo="2" NumFinca="8607532"/>
    <Pago TipoRecibo="2" NumFinca="1961703"/>
    <Pago TipoRecibo="2" NumFinca="5135972"/>
    <Pago TipoRecibo="2" NumFinca="5929358"/>
    <Pago TipoRecibo="2" NumFinca="2009936"/>
    <Pago TipoRecibo="2" NumFinca="9601548"/>
    <Pago TipoRecibo="2" NumFinca="2121748"/>
    <Pago TipoRecibo="2" NumFinca="5010544"/>
    <Pago TipoRecibo="2" NumFinca="6266789"/>
    <Pago TipoRecibo="2" NumFinca="7369246"/>
    <Pago TipoRecibo="2" NumFinca="5742845"/>
    <Pago TipoRecibo="2" NumFinca="1074869"/>
    <Pago TipoRecibo="2" NumFinca="7308269"/>
    <Pago TipoRecibo="2" NumFinca="2607709"/>
    <Pago TipoRecibo="2" NumFinca="3975668"/>
    <Pago TipoRecibo="2" NumFinca="7680583"/>
    <Pago TipoRecibo="2" NumFinca="2099652"/>
    <Pago TipoRecibo="2" NumFinca="4797949"/>
    <Pago TipoRecibo="2" NumFinca="8939738"/>
    <Pago TipoRecibo="2" NumFinca="7806630"/>
    <Pago TipoRecibo="2" NumFinca="8069451"/>
    <Pago TipoRecibo="2" NumFinca="3939729"/>
    <Pago TipoRecibo="2" NumFinca="1500605"/>
    <Pago TipoRecibo="2" NumFinca="9221039"/>
    <Pago TipoRecibo="2" NumFinca="6844297"/>
    <Pago TipoRecibo="2" NumFinca="7722500"/>
    <Pago TipoRecibo="2" NumFinca="3339019"/>
    <Pago TipoRecibo="2" NumFinca="9827023"/>
    <Pago TipoRecibo="2" NumFinca="1422786"/>
    <Pago TipoRecibo="2" NumFinca="3429696"/>
    <Pago TipoRecibo="2" NumFinca="3133715"/>
    <Pago TipoRecibo="2" NumFinca="5936115"/>
    <Pago TipoRecibo="2" NumFinca="6712929"/>
    <Pago TipoRecibo="2" NumFinca="6637431"/>
    <Pago TipoRecibo="2" NumFinca="7706037"/>
    <Pago TipoRecibo="2" NumFinca="3949789"/>
    <Pago TipoRecibo="2" NumFinca="1157634"/>
    <Pago TipoRecibo="2" NumFinca="3547514"/>
    <Pago TipoRecibo="2" NumFinca="5692223"/>
    <Pago TipoRecibo="2" NumFinca="7495320"/>
    <Pago TipoRecibo="2" NumFinca="7376083"/>
    <Pago TipoRecibo="2" NumFinca="5226945"/>
    <Pago TipoRecibo="2" NumFinca="4357229"/>
    <Pago TipoRecibo="2" NumFinca="7635286"/>
    <Pago TipoRecibo="2" NumFinca="8369257"/>
    <Pago TipoRecibo="2" NumFinca="2115098"/>
    <Pago TipoRecibo="2" NumFinca="4868908"/>
    <Pago TipoRecibo="2" NumFinca="5016108"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-15">
    <Propiedad NumFinca="9848141" Valor="27920922" Direccion="De Nava Café, 391 m Noroeste."/>
    <Propiedad NumFinca="7528580" Valor="11970101" Direccion=" AM-PM, 547 m Noroeste."/>
    <Propiedad NumFinca="2556693" Valor="21169773" Direccion="Iglesia Católica de Cartago Norte, 254 m Noroeste."/>
    <Propiedad NumFinca="8616785" Valor="28129904" Direccion="Urbanización La Pacífica, 342 m Norte."/>
    <Propiedad NumFinca="3125419" Valor="3533297" Direccion="Brasil de Mora, 261 m Suroeste."/>
    <Propiedad NumFinca="4162506" Valor="3484605" Direccion=" Autolavado Nuestra Señora, 44 m Noroeste."/>
    <Propiedad NumFinca="2037183" Valor="8978653" Direccion="El Jardín, 163 m Norte."/>
    <Propiedad NumFinca="8364952" Valor="8267615" Direccion="Soda la Paz, 196 m Noreste."/>
    <Propiedad NumFinca="2119681" Valor="15480605" Direccion=" Río Camarón, 852 m Sur."/>
    <Propiedad NumFinca="3344511" Valor="21392298" Direccion=" AM-PM, 895 m Suroeste."/>
    <Propietario Nombre="Lola Muñoz Menendez" TipoDocIdentidad="1" identificacion="356398843"/>
    <Propietario Nombre="Carmen Rico Mora" TipoDocIdentidad="1" identificacion="179400039"/>
    <Propietario Nombre="Hugo Palacios Sierra" TipoDocIdentidad="1" identificacion="652524220"/>
    <Propietario Nombre="Valeria Guerrero Fernandez" TipoDocIdentidad="2" identificacion="805971201"/>
    <Propietario Nombre="Chloe Benito Arias" TipoDocIdentidad="2" identificacion="829344649"/>
    <Propietario Nombre="Elsa Guerra Cortes" TipoDocIdentidad="1" identificacion="301522238"/>
    <Propietario Nombre="Nora Bueno Marcos" TipoDocIdentidad="1" identificacion="349075602"/>
    <Propietario Nombre="Lucía Franco Martin" TipoDocIdentidad="1" identificacion="692320463"/>
    <Propietario Nombre="Gabriel Salas Quintana" TipoDocIdentidad="2" identificacion="822150263"/>
    <Propietario Nombre="Oliver De La Fuente Otero" TipoDocIdentidad="1" identificacion="492788115"/>
    <PropiedadVersusPropietario NumFinca="9848141" identificacion="356398843"/>
    <PropiedadVersusPropietario NumFinca="7528580" identificacion="179400039"/>
    <PropiedadVersusPropietario NumFinca="2556693" identificacion="652524220"/>
    <PropiedadVersusPropietario NumFinca="8616785" identificacion="805971201"/>
    <PropiedadVersusPropietario NumFinca="3125419" identificacion="829344649"/>
    <PropiedadVersusPropietario NumFinca="4162506" identificacion="301522238"/>
    <PropiedadVersusPropietario NumFinca="2037183" identificacion="349075602"/>
    <PropiedadVersusPropietario NumFinca="8364952" identificacion="692320463"/>
    <PropiedadVersusPropietario NumFinca="2119681" identificacion="822150263"/>
    <PropiedadVersusPropietario NumFinca="3344511" identificacion="492788115"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9848141"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7528580"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2556693"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8616785"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3125419"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="4162506"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="2037183"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8364952"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2119681"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3344511"/>
    <CambioPropiedad NumFinca="7816509" NuevoValor="3186704"/>
    <TransConsumo id="1" LecturaM3="366" descripcion="Cobro Mensual" NumFinca="1103822"/>
    <TransConsumo id="1" LecturaM3="453" descripcion="Cobro Mensual" NumFinca="8077121"/>
    <TransConsumo id="2" LecturaM3="52" descripcion="Reclamo de cliente" NumFinca="1667419"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-16">
    <Propiedad NumFinca="8846823" Valor="14489635" Direccion="San Rafael, 454 m Este."/>
    <Propiedad NumFinca="8585446" Valor="12206999" Direccion=" La Paz, 173 m Sur."/>
    <Propiedad NumFinca="2826950" Valor="29961061" Direccion=" Río Camarón, 253 m Sur."/>
    <Propiedad NumFinca="4318124" Valor="18255405" Direccion="Cuestillas, 255 m Norte."/>
    <Propiedad NumFinca="7963606" Valor="26566415" Direccion=" Contrasuli, 367 m Sureste."/>
    <Propiedad NumFinca="6287984" Valor="21927337" Direccion="Cementerio de Santa Rosa, 64 m Noreste."/>
    <Propiedad NumFinca="9500446" Valor="14109680" Direccion="La Francia, 925 m Sur."/>
    <Propiedad NumFinca="4005318" Valor="9754453" Direccion="Orotina, 239 m Noroeste."/>
    <Propiedad NumFinca="4708081" Valor="23524060" Direccion="Residencias Pacific Sun, 385 m Oeste."/>
    <Propiedad NumFinca="9400306" Valor="17372491" Direccion="UCR, 77 m Sureste."/>
    <Propietario Nombre="Alejandro Santos Medina" TipoDocIdentidad="1" identificacion="609031484"/>
    <Propietario Nombre="Iker Asensio Izquierdo" TipoDocIdentidad="2" identificacion="859361953"/>
    <Propietario Nombre="Juan Mateo Valero" TipoDocIdentidad="1" identificacion="686990870"/>
    <Propietario Nombre="Juan Costa Lorenzo" TipoDocIdentidad="2" identificacion="809911164"/>
    <Propietario Nombre="Rubén Iglesias Calderon" TipoDocIdentidad="1" identificacion="492650478"/>
    <Propietario Nombre="Noa Rios Asensio" TipoDocIdentidad="1" identificacion="736560771"/>
    <Propietario Nombre="Paula Navarro Marti" TipoDocIdentidad="1" identificacion="271042503"/>
    <Propietario Nombre="Ainhoa Paz Prado" TipoDocIdentidad="1" identificacion="377055884"/>
    <Propietario Nombre="Víctor Ferrer Navarro" TipoDocIdentidad="2" identificacion="801216974"/>
    <Propietario Nombre="Marco Palacios Montero" TipoDocIdentidad="1" identificacion="634817112"/>
    <PropiedadVersusPropietario NumFinca="8846823" identificacion="609031484"/>
    <PropiedadVersusPropietario NumFinca="8585446" identificacion="859361953"/>
    <PropiedadVersusPropietario NumFinca="2826950" identificacion="686990870"/>
    <PropiedadVersusPropietario NumFinca="4318124" identificacion="809911164"/>
    <PropiedadVersusPropietario NumFinca="7963606" identificacion="492650478"/>
    <PropiedadVersusPropietario NumFinca="6287984" identificacion="736560771"/>
    <PropiedadVersusPropietario NumFinca="9500446" identificacion="271042503"/>
    <PropiedadVersusPropietario NumFinca="4005318" identificacion="377055884"/>
    <PropiedadVersusPropietario NumFinca="4708081" identificacion="801216974"/>
    <PropiedadVersusPropietario NumFinca="9400306" identificacion="634817112"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8846823"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8585446"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2826950"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4318124"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7963606"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6287984"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9500446"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4005318"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4708081"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9400306"/>
    <TransConsumo id="1" LecturaM3="699" descripcion="Cobro Mensual" NumFinca="9597151"/>
    <TransConsumo id="1" LecturaM3="771" descripcion="Cobro Mensual" NumFinca="3745857"/>
    <TransConsumo id="1" LecturaM3="328" descripcion="Cobro Mensual" NumFinca="6278640"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-17">
    <Propiedad NumFinca="4208023" Valor="22744514" Direccion=" Iglecia Los capuchinos, 360 m Sur."/>
    <Propiedad NumFinca="3470353" Valor="3217528" Direccion="Urbanización La Pacífica, 641 m Sureste."/>
    <Propiedad NumFinca="1325315" Valor="3851670" Direccion="Bri-Bri Centro, 783 m Noreste."/>
    <Propiedad NumFinca="8951907" Valor="17723482" Direccion="Calle Vargas, 104 m Noreste."/>
    <Propiedad NumFinca="4069525" Valor="15791217" Direccion="Bri-Bri Centro, 513 m Sureste."/>
    <Propiedad NumFinca="3176118" Valor="4818277" Direccion="Rio Azul, 272 m Norte."/>
    <Propiedad NumFinca="5540315" Valor="8990270" Direccion="Iglesia Católica de Cartago Norte, 308 m Este."/>
    <Propiedad NumFinca="4661931" Valor="29390844" Direccion="Banco Nacional, 55 m Noreste."/>
    <Propiedad NumFinca="8434486" Valor="6398752" Direccion="La Giralda, 584 m Sur."/>
    <Propiedad NumFinca="8164463" Valor="10979969" Direccion=" Fresh Markert, 43 m Oeste."/>
    <Propietario Nombre="Ana Diaz Roman" TipoDocIdentidad="1" identificacion="409166820"/>
    <Propietario Nombre="Mateo Redondo Aparicio" TipoDocIdentidad="1" identificacion="117941049"/>
    <Propietario Nombre="Leo Pastor Rio" TipoDocIdentidad="1" identificacion="373982751"/>
    <Propietario Nombre="David Palacios Manzano" TipoDocIdentidad="1" identificacion="216110040"/>
    <Propietario Nombre="Olivia Rodrigo Pascual" TipoDocIdentidad="1" identificacion="551225795"/>
    <Propietario Nombre="María Bernal Lara" TipoDocIdentidad="1" identificacion="131698416"/>
    <Propietario Nombre="Izan Tomas Rueda" TipoDocIdentidad="2" identificacion="891210974"/>
    <Propietario Nombre="Oliver Mata Marti" TipoDocIdentidad="1" identificacion="473907397"/>
    <Propietario Nombre="Pablo Mendoza San" TipoDocIdentidad="1" identificacion="116704045"/>
    <Propietario Nombre="Jimena Vidal Izquierdo" TipoDocIdentidad="1" identificacion="666025732"/>
    <PropiedadVersusPropietario NumFinca="4208023" identificacion="409166820"/>
    <PropiedadVersusPropietario NumFinca="3470353" identificacion="117941049"/>
    <PropiedadVersusPropietario NumFinca="1325315" identificacion="373982751"/>
    <PropiedadVersusPropietario NumFinca="8951907" identificacion="216110040"/>
    <PropiedadVersusPropietario NumFinca="4069525" identificacion="551225795"/>
    <PropiedadVersusPropietario NumFinca="3176118" identificacion="131698416"/>
    <PropiedadVersusPropietario NumFinca="5540315" identificacion="891210974"/>
    <PropiedadVersusPropietario NumFinca="4661931" identificacion="473907397"/>
    <PropiedadVersusPropietario NumFinca="8434486" identificacion="116704045"/>
    <PropiedadVersusPropietario NumFinca="8164463" identificacion="666025732"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4208023"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3470353"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1325315"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8951907"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4069525"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3176118"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5540315"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4661931"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8434486"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8164463"/>
    <TransConsumo id="1" LecturaM3="1275" descripcion="Cobro Mensual" NumFinca="2287722"/>
    <Pago TipoRecibo="6" NumFinca="7040783"/>
    <Pago TipoRecibo="6" NumFinca="1042185"/>
    <Pago TipoRecibo="6" NumFinca="4400689"/>
    <Pago TipoRecibo="6" NumFinca="1394522"/>
    <Pago TipoRecibo="6" NumFinca="1750401"/>
    <Pago TipoRecibo="6" NumFinca="4121713"/>
    <Pago TipoRecibo="6" NumFinca="1420570"/>
    <Pago TipoRecibo="6" NumFinca="4162559"/>
    <Pago TipoRecibo="6" NumFinca="2291223"/>
    <Pago TipoRecibo="6" NumFinca="4901706"/>
    <Pago TipoRecibo="6" NumFinca="4896538"/>
    <Pago TipoRecibo="6" NumFinca="4207552"/>
    <Pago TipoRecibo="6" NumFinca="8584160"/>
    <Pago TipoRecibo="6" NumFinca="5308209"/>
    <Pago TipoRecibo="6" NumFinca="1368271"/>
    <Pago TipoRecibo="6" NumFinca="8513969"/>
    <Pago TipoRecibo="6" NumFinca="4987514"/>
    <Pago TipoRecibo="6" NumFinca="2481735"/>
    <Pago TipoRecibo="6" NumFinca="1480840"/>
    <Pago TipoRecibo="6" NumFinca="2103983"/>
    <Pago TipoRecibo="6" NumFinca="4203725"/>
    <Pago TipoRecibo="6" NumFinca="1514445"/>
    <Pago TipoRecibo="6" NumFinca="1527660"/>
    <Pago TipoRecibo="6" NumFinca="2134489"/>
    <Pago TipoRecibo="6" NumFinca="5518445"/>
    <Pago TipoRecibo="6" NumFinca="1230183"/>
    <Pago TipoRecibo="6" NumFinca="7804860"/>
    <Pago TipoRecibo="6" NumFinca="7631082"/>
    <Pago TipoRecibo="6" NumFinca="3487316"/>
    <Pago TipoRecibo="6" NumFinca="3558821"/>
    <Pago TipoRecibo="6" NumFinca="9760688"/>
    <Pago TipoRecibo="6" NumFinca="6914115"/>
    <Pago TipoRecibo="6" NumFinca="7321231"/>
    <Pago TipoRecibo="6" NumFinca="8088162"/>
    <Pago TipoRecibo="6" NumFinca="8583828"/>
    <Pago TipoRecibo="6" NumFinca="1377010"/>
    <Pago TipoRecibo="6" NumFinca="2371257"/>
    <Pago TipoRecibo="6" NumFinca="3660611"/>
    <Pago TipoRecibo="6" NumFinca="1190024"/>
    <Pago TipoRecibo="6" NumFinca="4188723"/>
    <Pago TipoRecibo="6" NumFinca="2318994"/>
    <Pago TipoRecibo="6" NumFinca="8647522"/>
    <Pago TipoRecibo="6" NumFinca="7735977"/>
    <Pago TipoRecibo="6" NumFinca="8669107"/>
    <Pago TipoRecibo="6" NumFinca="1849959"/>
    <Pago TipoRecibo="6" NumFinca="5067735"/>
    <Pago TipoRecibo="6" NumFinca="2664388"/>
    <Pago TipoRecibo="6" NumFinca="4564012"/>
    <Pago TipoRecibo="6" NumFinca="7235520"/>
    <Pago TipoRecibo="6" NumFinca="7736703"/>
    <Pago TipoRecibo="6" NumFinca="9693383"/>
    <Pago TipoRecibo="6" NumFinca="6247645"/>
    <Pago TipoRecibo="6" NumFinca="1306106"/>
    <Pago TipoRecibo="6" NumFinca="2462335"/>
    <Pago TipoRecibo="6" NumFinca="1053119"/>
    <Pago TipoRecibo="6" NumFinca="6720212"/>
    <Pago TipoRecibo="6" NumFinca="9197411"/>
    <Pago TipoRecibo="6" NumFinca="6970256"/>
    <Pago TipoRecibo="6" NumFinca="6753927"/>
    <Pago TipoRecibo="6" NumFinca="9766737"/>
    <Pago TipoRecibo="6" NumFinca="5891079"/>
    <Pago TipoRecibo="6" NumFinca="8383136"/>
    <Pago TipoRecibo="6" NumFinca="6601202"/>
    <Pago TipoRecibo="6" NumFinca="6377628"/>
    <Pago TipoRecibo="6" NumFinca="5728652"/>
    <Pago TipoRecibo="6" NumFinca="2048658"/>
    <Pago TipoRecibo="6" NumFinca="7636857"/>
    <Pago TipoRecibo="6" NumFinca="4473302"/>
    <Pago TipoRecibo="6" NumFinca="8932418"/>
    <Pago TipoRecibo="6" NumFinca="6662169"/>
    <Pago TipoRecibo="6" NumFinca="5952902"/>
    <Pago TipoRecibo="6" NumFinca="3645360"/>
    <Pago TipoRecibo="6" NumFinca="4458781"/>
    <Pago TipoRecibo="6" NumFinca="3341074"/>
    <Pago TipoRecibo="6" NumFinca="6125262"/>
    <Pago TipoRecibo="6" NumFinca="2902272"/>
    <Pago TipoRecibo="6" NumFinca="6813035"/>
    <Pago TipoRecibo="6" NumFinca="9034114"/>
    <Pago TipoRecibo="6" NumFinca="8562573"/>
    <Pago TipoRecibo="6" NumFinca="9718422"/>
    <Pago TipoRecibo="6" NumFinca="5528247"/>
    <Pago TipoRecibo="6" NumFinca="2107941"/>
    <Pago TipoRecibo="6" NumFinca="6769378"/>
    <Pago TipoRecibo="6" NumFinca="5531722"/>
    <Pago TipoRecibo="6" NumFinca="4844521"/>
    <Pago TipoRecibo="6" NumFinca="9442819"/>
    <Pago TipoRecibo="6" NumFinca="8364362"/>
    <Pago TipoRecibo="6" NumFinca="2145176"/>
    <Pago TipoRecibo="6" NumFinca="3343918"/>
    <Pago TipoRecibo="6" NumFinca="1222342"/>
    <Pago TipoRecibo="6" NumFinca="3230023"/>
    <Pago TipoRecibo="6" NumFinca="5768738"/>
    <Pago TipoRecibo="6" NumFinca="3654908"/>
    <Pago TipoRecibo="6" NumFinca="6772528"/>
    <Pago TipoRecibo="6" NumFinca="8051611"/>
    <Pago TipoRecibo="6" NumFinca="9927244"/>
    <Pago TipoRecibo="6" NumFinca="5813463"/>
    <Pago TipoRecibo="6" NumFinca="9880299"/>
    <Pago TipoRecibo="6" NumFinca="7114147"/>
    <Pago TipoRecibo="6" NumFinca="4770710"/>
    <Pago TipoRecibo="6" NumFinca="7142670"/>
    <Pago TipoRecibo="6" NumFinca="6540501"/>
    <Pago TipoRecibo="6" NumFinca="6296537"/>
    <Pago TipoRecibo="6" NumFinca="9073717"/>
    <Pago TipoRecibo="6" NumFinca="4716673"/>
    <Pago TipoRecibo="6" NumFinca="8236896"/>
    <Pago TipoRecibo="6" NumFinca="7278185"/>
    <Pago TipoRecibo="6" NumFinca="2633182"/>
    <Pago TipoRecibo="6" NumFinca="1368778"/>
    <Pago TipoRecibo="6" NumFinca="9848141"/>
    <Pago TipoRecibo="6" NumFinca="8846823"/>
    <Pago TipoRecibo="6" NumFinca="9400306"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-18">
    <Propiedad NumFinca="5475783" Valor="14975476" Direccion="Rio Azul, 726 m Noreste."/>
    <Propiedad NumFinca="3890511" Valor="14364328" Direccion="Bri-Bri Centro, 570 m Oeste."/>
    <Propiedad NumFinca="6282308" Valor="6060507" Direccion=" AM-PM, 50 m Suroeste."/>
    <Propiedad NumFinca="9414099" Valor="3889903" Direccion="San Gerardo, 338 m Suroeste."/>
    <Propiedad NumFinca="1825388" Valor="5350190" Direccion="Astua Pirie, 886 m Suroeste."/>
    <Propiedad NumFinca="3837978" Valor="16749028" Direccion="Rio Azul, 443 m Este."/>
    <Propiedad NumFinca="3320833" Valor="25688498" Direccion=" Río Camarón, 400 m Noroeste."/>
    <Propiedad NumFinca="3284113" Valor="10053969" Direccion="Las Cascadas, 146 m Este."/>
    <Propiedad NumFinca="4643900" Valor="10096156" Direccion="Iglesia Católica de Cartago Norte, 303 m Sur."/>
    <Propiedad NumFinca="5649097" Valor="3864355" Direccion=" Maxi Pali, 719 m Norte."/>
    <Propietario Nombre="Alma Hidalgo Varela" TipoDocIdentidad="1" identificacion="258155632"/>
    <Propietario Nombre="Javier Morales Navarro" TipoDocIdentidad="1" identificacion="314253959"/>
    <Propietario Nombre="Mario Serrano Mateo" TipoDocIdentidad="1" identificacion="373023186"/>
    <Propietario Nombre="Lucas Torre Suarez" TipoDocIdentidad="2" identificacion="836557845"/>
    <Propietario Nombre="Víctor Corral Mora" TipoDocIdentidad="1" identificacion="747684005"/>
    <Propietario Nombre="Javier Lazaro Gimenez" TipoDocIdentidad="2" identificacion="880628161"/>
    <Propietario Nombre="Thiago Garrido Gracia" TipoDocIdentidad="1" identificacion="165764229"/>
    <Propietario Nombre="Gabriel De La Fuente Rojas" TipoDocIdentidad="2" identificacion="882346082"/>
    <Propietario Nombre="Nerea Quintana Soriano" TipoDocIdentidad="1" identificacion="412932246"/>
    <Propietario Nombre="Lara Millan Calvo" TipoDocIdentidad="1" identificacion="379031710"/>
    <PropiedadVersusPropietario NumFinca="5475783" identificacion="258155632"/>
    <PropiedadVersusPropietario NumFinca="3890511" identificacion="314253959"/>
    <PropiedadVersusPropietario NumFinca="6282308" identificacion="373023186"/>
    <PropiedadVersusPropietario NumFinca="9414099" identificacion="836557845"/>
    <PropiedadVersusPropietario NumFinca="1825388" identificacion="747684005"/>
    <PropiedadVersusPropietario NumFinca="3837978" identificacion="880628161"/>
    <PropiedadVersusPropietario NumFinca="3320833" identificacion="165764229"/>
    <PropiedadVersusPropietario NumFinca="3284113" identificacion="882346082"/>
    <PropiedadVersusPropietario NumFinca="4643900" identificacion="412932246"/>
    <PropiedadVersusPropietario NumFinca="5649097" identificacion="379031710"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5475783"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3890511"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6282308"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9414099"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1825388"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3837978"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3320833"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3284113"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4643900"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5649097"/>
    <CambioPropiedad NumFinca="8364952" NuevoValor="6436961"/>
    <TransConsumo id="1" LecturaM3="1385" descripcion="Cobro Mensual" NumFinca="5612982"/>
    <TransConsumo id="1" LecturaM3="1203" descripcion="Cobro Mensual" NumFinca="1667419"/>
    <TransConsumo id="1" LecturaM3="1253" descripcion="Cobro Mensual" NumFinca="1463009"/>
    <TransConsumo id="1" LecturaM3="822" descripcion="Cobro Mensual" NumFinca="9984034"/>
    <TransConsumo id="1" LecturaM3="810" descripcion="Cobro Mensual" NumFinca="3146361"/>
    <TransConsumo id="1" LecturaM3="496" descripcion="Cobro Mensual" NumFinca="1693614"/>
    <TransConsumo id="1" LecturaM3="486" descripcion="Cobro Mensual" NumFinca="5869245"/>
    <TransConsumo id="3" LecturaM3="70" descripcion="Lectura errónea" NumFinca="2291223"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-19">
    <Propiedad NumFinca="4919240" Valor="26923718" Direccion="Soda la Paz, 604 m Este."/>
    <Propiedad NumFinca="6853846" Valor="9059300" Direccion="La Francia, 881 m Sur."/>
    <Propiedad NumFinca="4167306" Valor="23102462" Direccion="Bar las delicias, 768 m Noreste."/>
    <Propiedad NumFinca="9913679" Valor="29529990" Direccion=" Central Electrica, 575 m Este."/>
    <Propiedad NumFinca="7600254" Valor="27044341" Direccion="Banco Nacional, 771 m Sur."/>
    <Propiedad NumFinca="6239793" Valor="21155087" Direccion="De Nava Café, 238 m Suroeste."/>
    <Propiedad NumFinca="5984217" Valor="13331113" Direccion="Las Cascadas, 554 m Noreste."/>
    <Propiedad NumFinca="6611023" Valor="20420743" Direccion="Santa Rosa, 266 m Sureste."/>
    <Propiedad NumFinca="6326581" Valor="13489630" Direccion="Bar las delicias, 549 m Norte."/>
    <Propiedad NumFinca="7785531" Valor="16890529" Direccion="Soda la Paz, 760 m Este."/>
    <Propietario Nombre="Martín San Cortes" TipoDocIdentidad="1" identificacion="646977779"/>
    <Propietario Nombre="Dylan Beltran Diez" TipoDocIdentidad="2" identificacion="844111185"/>
    <Propietario Nombre="Miguel Morales Contreras" TipoDocIdentidad="1" identificacion="453004829"/>
    <Propietario Nombre="Jorge Molina Calvo" TipoDocIdentidad="1" identificacion="638568992"/>
    <Propietario Nombre="Lucas Ibañez Bravo" TipoDocIdentidad="1" identificacion="562962454"/>
    <Propietario Nombre="Jesús Marti Arroyo" TipoDocIdentidad="1" identificacion="748790439"/>
    <Propietario Nombre="Alejandra Crespo Pereira" TipoDocIdentidad="1" identificacion="682661515"/>
    <Propietario Nombre="Inés Roca Miranda" TipoDocIdentidad="1" identificacion="568839770"/>
    <Propietario Nombre="Guillermo Segura Carrasco" TipoDocIdentidad="1" identificacion="789238569"/>
    <Propietario Nombre="Dylan Suarez Zamora" TipoDocIdentidad="2" identificacion="840698600"/>
    <PropiedadVersusPropietario NumFinca="4919240" identificacion="646977779"/>
    <PropiedadVersusPropietario NumFinca="6853846" identificacion="844111185"/>
    <PropiedadVersusPropietario NumFinca="4167306" identificacion="453004829"/>
    <PropiedadVersusPropietario NumFinca="9913679" identificacion="638568992"/>
    <PropiedadVersusPropietario NumFinca="7600254" identificacion="562962454"/>
    <PropiedadVersusPropietario NumFinca="6239793" identificacion="748790439"/>
    <PropiedadVersusPropietario NumFinca="5984217" identificacion="682661515"/>
    <PropiedadVersusPropietario NumFinca="6611023" identificacion="568839770"/>
    <PropiedadVersusPropietario NumFinca="6326581" identificacion="789238569"/>
    <PropiedadVersusPropietario NumFinca="7785531" identificacion="840698600"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4919240"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="6853846"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4167306"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="9913679"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7600254"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6239793"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="5984217"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6611023"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6326581"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7785531"/>
    <CambioPropiedad NumFinca="4203725" NuevoValor="95926004"/>
    <TransConsumo id="1" LecturaM3="385" descripcion="Cobro Mensual" NumFinca="1798133"/>
    <TransConsumo id="1" LecturaM3="389" descripcion="Cobro Mensual" NumFinca="2154272"/>
    <TransConsumo id="1" LecturaM3="356" descripcion="Cobro Mensual" NumFinca="4932823"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-20">
    <Propiedad NumFinca="1613299" Valor="18644710" Direccion="El Alto, 31 m Este."/>
    <Propiedad NumFinca="9325302" Valor="24489668" Direccion="Bar las delicias, 274 m Sureste."/>
    <Propiedad NumFinca="3188242" Valor="28933384" Direccion="Las Cascadas, 950 m Noroeste."/>
    <Propiedad NumFinca="5907250" Valor="3663647" Direccion=" MasxMenos, 26 m Noroeste."/>
    <Propiedad NumFinca="9642423" Valor="24088116" Direccion=" Río Camarón, 40 m Noroeste."/>
    <Propiedad NumFinca="3982164" Valor="20988143" Direccion=" Central Electrica, 641 m Noroeste."/>
    <Propiedad NumFinca="2017172" Valor="8705079" Direccion="Bri-Bri Centro, 306 m Suroeste."/>
    <Propiedad NumFinca="6769087" Valor="29708845" Direccion="Canoas, 865 m Este."/>
    <Propiedad NumFinca="7914525" Valor="19631883" Direccion="De Nava Café, 604 m Suroeste."/>
    <Propiedad NumFinca="1893981" Valor="25997459" Direccion=" UNA, 386 m Sureste."/>
    <Propietario Nombre="Aitor Gracia Rivera" TipoDocIdentidad="1" identificacion="489399244"/>
    <Propietario Nombre="Adam Castillo Alonso" TipoDocIdentidad="1" identificacion="253990015"/>
    <Propietario Nombre="Álvaro Bernal Anton" TipoDocIdentidad="1" identificacion="470093200"/>
    <Propietario Nombre="Irene Exposito Cabrera" TipoDocIdentidad="1" identificacion="772726124"/>
    <Propietario Nombre="Paula Juan Vicente" TipoDocIdentidad="1" identificacion="721339940"/>
    <Propietario Nombre="Jesús Bermudez Santos" TipoDocIdentidad="1" identificacion="652581557"/>
    <Propietario Nombre="Valentina Castro Guerrero" TipoDocIdentidad="1" identificacion="624984579"/>
    <Propietario Nombre="Izan Martinez Martin" TipoDocIdentidad="1" identificacion="142621803"/>
    <Propietario Nombre="Alejandro Pastor Merino" TipoDocIdentidad="1" identificacion="359014284"/>
    <Propietario Nombre="Marina Pascual Roca" TipoDocIdentidad="1" identificacion="593361437"/>
    <PropiedadVersusPropietario NumFinca="1613299" identificacion="489399244"/>
    <PropiedadVersusPropietario NumFinca="9325302" identificacion="253990015"/>
    <PropiedadVersusPropietario NumFinca="3188242" identificacion="470093200"/>
    <PropiedadVersusPropietario NumFinca="5907250" identificacion="772726124"/>
    <PropiedadVersusPropietario NumFinca="9642423" identificacion="721339940"/>
    <PropiedadVersusPropietario NumFinca="3982164" identificacion="652581557"/>
    <PropiedadVersusPropietario NumFinca="2017172" identificacion="624984579"/>
    <PropiedadVersusPropietario NumFinca="6769087" identificacion="142621803"/>
    <PropiedadVersusPropietario NumFinca="7914525" identificacion="359014284"/>
    <PropiedadVersusPropietario NumFinca="1893981" identificacion="593361437"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1613299"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9325302"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3188242"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5907250"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9642423"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3982164"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2017172"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6769087"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7914525"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1893981"/>
    <CambioPropiedad NumFinca="6526774" NuevoValor="15264230"/>
    <TransConsumo id="1" LecturaM3="482" descripcion="Cobro Mensual" NumFinca="8076511"/>
    <TransConsumo id="1" LecturaM3="436" descripcion="Cobro Mensual" NumFinca="8370396"/>
    <TransConsumo id="1" LecturaM3="488" descripcion="Cobro Mensual" NumFinca="6342713"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-21">
    <Propiedad NumFinca="3825764" Valor="12234952" Direccion=" Central Electrica, 30 m Norte."/>
    <Propiedad NumFinca="9237272" Valor="20214581" Direccion="San Felipe, 185 m Sur."/>
    <Propiedad NumFinca="8949388" Valor="15169882" Direccion=" Hospital Central, 239 m Oeste."/>
    <Propiedad NumFinca="8268649" Valor="15251035" Direccion="Cuestillas, 36 m Norte."/>
    <Propiedad NumFinca="9382866" Valor="26666170" Direccion="ITEC, 147 m Sureste."/>
    <Propiedad NumFinca="9200797" Valor="18662968" Direccion="Iglesia Católica de Cartago Norte, 904 m Noroeste."/>
    <Propiedad NumFinca="8241571" Valor="23990980" Direccion="Soda la Paz, 107 m Noreste."/>
    <Propiedad NumFinca="1532131" Valor="27069749" Direccion="Hacienda Vieja, 869 m Noreste."/>
    <Propiedad NumFinca="7636125" Valor="14922547" Direccion=" UNA, 241 m Noroeste."/>
    <Propiedad NumFinca="9838726" Valor="22392213" Direccion="Plantel de COPRESA, 533 m Noreste."/>
    <Propietario Nombre="Miguel Bravo Garcia" TipoDocIdentidad="1" identificacion="435801872"/>
    <Propietario Nombre="Ariadna Mendez Parra" TipoDocIdentidad="1" identificacion="738605817"/>
    <Propietario Nombre="Víctor Vega Morales" TipoDocIdentidad="1" identificacion="372221600"/>
    <Propietario Nombre="Lucía Villanueva Prado" TipoDocIdentidad="1" identificacion="689101965"/>
    <Propietario Nombre="Noa Marcos Martinez" TipoDocIdentidad="2" identificacion="843495735"/>
    <Propietario Nombre="Vera Aguilar Varela" TipoDocIdentidad="1" identificacion="204269464"/>
    <Propietario Nombre="Adrián Roman Redondo" TipoDocIdentidad="1" identificacion="778373476"/>
    <Propietario Nombre="Ariadna Vera Silva" TipoDocIdentidad="1" identificacion="127178701"/>
    <Propietario Nombre="Aitor Lozano Medina" TipoDocIdentidad="1" identificacion="202288853"/>
    <Propietario Nombre="Carlota Vega Gracia" TipoDocIdentidad="1" identificacion="363877290"/>
    <PropiedadVersusPropietario NumFinca="3825764" identificacion="435801872"/>
    <PropiedadVersusPropietario NumFinca="9237272" identificacion="738605817"/>
    <PropiedadVersusPropietario NumFinca="8949388" identificacion="372221600"/>
    <PropiedadVersusPropietario NumFinca="8268649" identificacion="689101965"/>
    <PropiedadVersusPropietario NumFinca="9382866" identificacion="843495735"/>
    <PropiedadVersusPropietario NumFinca="9200797" identificacion="204269464"/>
    <PropiedadVersusPropietario NumFinca="8241571" identificacion="778373476"/>
    <PropiedadVersusPropietario NumFinca="1532131" identificacion="127178701"/>
    <PropiedadVersusPropietario NumFinca="7636125" identificacion="202288853"/>
    <PropiedadVersusPropietario NumFinca="9838726" identificacion="363877290"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3825764"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9237272"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8949388"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8268649"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9382866"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9200797"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8241571"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1532131"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7636125"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9838726"/>
    <TransConsumo id="1" LecturaM3="1242" descripcion="Cobro Mensual" NumFinca="2415723"/>
    <TransConsumo id="1" LecturaM3="1149" descripcion="Cobro Mensual" NumFinca="2405935"/>
    <TransConsumo id="1" LecturaM3="1176" descripcion="Cobro Mensual" NumFinca="2416612"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-22">
    <Propiedad NumFinca="2328793" Valor="20613169" Direccion="San Felipe, 99 m Oeste."/>
    <Propiedad NumFinca="6744002" Valor="15368426" Direccion="El Jardín, 48 m Sur."/>
    <Propiedad NumFinca="8414582" Valor="4861606" Direccion="UCR, 513 m Noreste."/>
    <Propiedad NumFinca="5158210" Valor="11238347" Direccion="El Alto, 300 m Noreste."/>
    <Propiedad NumFinca="4252718" Valor="28892389" Direccion="Soda la Paz, 335 m Norte."/>
    <Propiedad NumFinca="8317315" Valor="3230984" Direccion="De Nava Café, 806 m Este."/>
    <Propiedad NumFinca="6165203" Valor="25379057" Direccion="Astua Pirie, 229 m Suroeste."/>
    <Propiedad NumFinca="1137020" Valor="28236462" Direccion="Cuestillas, 438 m Sur."/>
    <Propiedad NumFinca="2385736" Valor="4782476" Direccion=" MasxMenos, 700 m Sur."/>
    <Propiedad NumFinca="7659430" Valor="6425282" Direccion="Calle Vargas, 293 m Sureste."/>
    <Propietario Nombre="Javier Fuentes Garrido" TipoDocIdentidad="1" identificacion="410250592"/>
    <Propietario Nombre="Alejandro Roldan Garrido" TipoDocIdentidad="1" identificacion="411290956"/>
    <Propietario Nombre="Lucas Camacho Leon" TipoDocIdentidad="2" identificacion="854497159"/>
    <Propietario Nombre="Carla Gonzalez Romero" TipoDocIdentidad="2" identificacion="856145673"/>
    <Propietario Nombre="Diego Dominguez Rivas" TipoDocIdentidad="1" identificacion="701960802"/>
    <Propietario Nombre="Lara Vidal Velasco" TipoDocIdentidad="1" identificacion="455415731"/>
    <Propietario Nombre="Mateo Vila Parra" TipoDocIdentidad="1" identificacion="447482208"/>
    <Propietario Nombre="Ainhoa Ramos Cortes" TipoDocIdentidad="1" identificacion="506667113"/>
    <Propietario Nombre="Marc Redondo Dominguez" TipoDocIdentidad="1" identificacion="144628528"/>
    <Propietario Nombre="Marina Marquez Calderon" TipoDocIdentidad="1" identificacion="552728247"/>
    <PropiedadVersusPropietario NumFinca="2328793" identificacion="410250592"/>
    <PropiedadVersusPropietario NumFinca="6744002" identificacion="411290956"/>
    <PropiedadVersusPropietario NumFinca="8414582" identificacion="854497159"/>
    <PropiedadVersusPropietario NumFinca="5158210" identificacion="856145673"/>
    <PropiedadVersusPropietario NumFinca="4252718" identificacion="701960802"/>
    <PropiedadVersusPropietario NumFinca="8317315" identificacion="455415731"/>
    <PropiedadVersusPropietario NumFinca="6165203" identificacion="447482208"/>
    <PropiedadVersusPropietario NumFinca="1137020" identificacion="506667113"/>
    <PropiedadVersusPropietario NumFinca="2385736" identificacion="144628528"/>
    <PropiedadVersusPropietario NumFinca="7659430" identificacion="552728247"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2328793"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6744002"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8414582"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5158210"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4252718"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8317315"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6165203"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1137020"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="2385736"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7659430"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-23">
    <Propiedad NumFinca="1038867" Valor="10220706" Direccion="San Gerardo, 906 m Noroeste."/>
    <Propiedad NumFinca="5942005" Valor="15329807" Direccion="Las Cascadas, 937 m Noroeste."/>
    <Propiedad NumFinca="2017711" Valor="5866313" Direccion="Hacienda Vieja, 123 m Norte."/>
    <Propiedad NumFinca="7591131" Valor="6091483" Direccion="San Gerardo, 101 m Sureste."/>
    <Propiedad NumFinca="1903911" Valor="15521053" Direccion="La Giralda, 813 m Noroeste."/>
    <Propiedad NumFinca="1006611" Valor="9922831" Direccion="Calle Vargas, 343 m Este."/>
    <Propiedad NumFinca="7162821" Valor="22204037" Direccion="Hacienda Vieja, 579 m Norte."/>
    <Propiedad NumFinca="7075605" Valor="3818059" Direccion="Soda la Paz, 473 m Oeste."/>
    <Propiedad NumFinca="3558141" Valor="27069911" Direccion="Soda el Higueron, 379 m Este."/>
    <Propiedad NumFinca="2152231" Valor="19265577" Direccion="Plantel de COPRESA, 415 m Suroeste."/>
    <Propietario Nombre="Carlota Mateo Carrasco" TipoDocIdentidad="1" identificacion="321724727"/>
    <Propietario Nombre="Noa Marti Flores" TipoDocIdentidad="1" identificacion="441706779"/>
    <Propietario Nombre="Darío Lozano Plaza" TipoDocIdentidad="1" identificacion="628573882"/>
    <Propietario Nombre="Carlos Morales Salas" TipoDocIdentidad="1" identificacion="660129065"/>
    <Propietario Nombre="Inés Rico Crespo" TipoDocIdentidad="1" identificacion="655162819"/>
    <Propietario Nombre="Irene Paz Anton" TipoDocIdentidad="1" identificacion="471276286"/>
    <Propietario Nombre="Izan Vila Lorenzo" TipoDocIdentidad="1" identificacion="357937311"/>
    <Propietario Nombre="Lara Soriano Gallardo" TipoDocIdentidad="1" identificacion="792948239"/>
    <Propietario Nombre="Elena Ramos Arroyo" TipoDocIdentidad="2" identificacion="820548304"/>
    <Propietario Nombre="Nicolás Calderon Pastor" TipoDocIdentidad="1" identificacion="152285448"/>
    <PropiedadVersusPropietario NumFinca="1038867" identificacion="321724727"/>
    <PropiedadVersusPropietario NumFinca="5942005" identificacion="441706779"/>
    <PropiedadVersusPropietario NumFinca="2017711" identificacion="628573882"/>
    <PropiedadVersusPropietario NumFinca="7591131" identificacion="660129065"/>
    <PropiedadVersusPropietario NumFinca="1903911" identificacion="655162819"/>
    <PropiedadVersusPropietario NumFinca="1006611" identificacion="471276286"/>
    <PropiedadVersusPropietario NumFinca="7162821" identificacion="357937311"/>
    <PropiedadVersusPropietario NumFinca="7075605" identificacion="792948239"/>
    <PropiedadVersusPropietario NumFinca="3558141" identificacion="820548304"/>
    <PropiedadVersusPropietario NumFinca="2152231" identificacion="152285448"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1038867"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="5942005"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2017711"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7591131"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1903911"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1006611"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7162821"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7075605"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3558141"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2152231"/>
    <TransConsumo id="1" LecturaM3="685" descripcion="Cobro Mensual" NumFinca="9483099"/>
    <TransConsumo id="1" LecturaM3="428" descripcion="Cobro Mensual" NumFinca="4060041"/>
    <TransConsumo id="2" LecturaM3="87" descripcion="Reclamo de cliente" NumFinca="2287722"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-24">
    <Propiedad NumFinca="3955410" Valor="12480375" Direccion="San Felipe, 710 m Sureste."/>
    <Propiedad NumFinca="5751209" Valor="18257856" Direccion="Plantel de COPRESA, 293 m Oeste."/>
    <Propiedad NumFinca="8707091" Valor="29512596" Direccion="Las Cascadas, 664 m Este."/>
    <Propiedad NumFinca="4793951" Valor="6771736" Direccion="La Francia, 889 m Oeste."/>
    <Propiedad NumFinca="5729381" Valor="22096685" Direccion=" Central Electrica, 619 m Sureste."/>
    <Propiedad NumFinca="5746821" Valor="9998581" Direccion=" La Paz, 29 m Suroeste."/>
    <Propiedad NumFinca="7155538" Valor="10325418" Direccion="Hacienda Vieja, 752 m Oeste."/>
    <Propiedad NumFinca="8345509" Valor="7304308" Direccion="Orotina, 195 m Norte."/>
    <Propiedad NumFinca="4071017" Valor="9824652" Direccion="ITEC, 873 m Noroeste."/>
    <Propiedad NumFinca="4058539" Valor="26637413" Direccion="Corazón de Jesús, 789 m Oeste."/>
    <Propietario Nombre="Eric Duran Sanchez" TipoDocIdentidad="2" identificacion="879691349"/>
    <Propietario Nombre="Miguel Guerrero Ortiz" TipoDocIdentidad="1" identificacion="670699173"/>
    <Propietario Nombre="Clara Calderon Sierra" TipoDocIdentidad="1" identificacion="349449731"/>
    <Propietario Nombre="Elsa Cruz Torres" TipoDocIdentidad="1" identificacion="538277330"/>
    <Propietario Nombre="Alberto Cano Ballesteros" TipoDocIdentidad="1" identificacion="565545294"/>
    <Propietario Nombre="María Rojo Estevez" TipoDocIdentidad="1" identificacion="363566916"/>
    <Propietario Nombre="Hugo Contreras Mendoza" TipoDocIdentidad="1" identificacion="379707671"/>
    <Propietario Nombre="Oliver Mateos Costa" TipoDocIdentidad="1" identificacion="765804881"/>
    <Propietario Nombre="Ana Fuentes Rico" TipoDocIdentidad="1" identificacion="640163686"/>
    <Propietario Nombre="Ariadna Lazaro Valero" TipoDocIdentidad="1" identificacion="432959857"/>
    <PropiedadVersusPropietario NumFinca="3955410" identificacion="879691349"/>
    <PropiedadVersusPropietario NumFinca="5751209" identificacion="670699173"/>
    <PropiedadVersusPropietario NumFinca="8707091" identificacion="349449731"/>
    <PropiedadVersusPropietario NumFinca="4793951" identificacion="538277330"/>
    <PropiedadVersusPropietario NumFinca="5729381" identificacion="565545294"/>
    <PropiedadVersusPropietario NumFinca="5746821" identificacion="363566916"/>
    <PropiedadVersusPropietario NumFinca="7155538" identificacion="379707671"/>
    <PropiedadVersusPropietario NumFinca="8345509" identificacion="765804881"/>
    <PropiedadVersusPropietario NumFinca="4071017" identificacion="640163686"/>
    <PropiedadVersusPropietario NumFinca="4058539" identificacion="432959857"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="3955410"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5751209"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8707091"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4793951"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5729381"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5746821"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="7155538"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8345509"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4071017"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="4058539"/>
    <TransConsumo id="1" LecturaM3="1387" descripcion="Cobro Mensual" NumFinca="3151260"/>
    <TransConsumo id="1" LecturaM3="1196" descripcion="Cobro Mensual" NumFinca="5333273"/>
    <TransConsumo id="1" LecturaM3="1270" descripcion="Cobro Mensual" NumFinca="1337841"/>
    <TransConsumo id="1" LecturaM3="797" descripcion="Cobro Mensual" NumFinca="5603734"/>
    <TransConsumo id="1" LecturaM3="719" descripcion="Cobro Mensual" NumFinca="2675651"/>
    <Pago TipoRecibo="12" NumFinca="2346431"/>
    <Pago TipoRecibo="12" NumFinca="2132441"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-25">
    <Propiedad NumFinca="3483977" Valor="9661623" Direccion="Ciruelas, 880 m Norte."/>
    <Propiedad NumFinca="1490750" Valor="26161131" Direccion="San Gerardo, 26 m Este."/>
    <Propiedad NumFinca="7563560" Valor="17188450" Direccion=" Contrasuli, 682 m Suroeste."/>
    <Propiedad NumFinca="2814773" Valor="4846532" Direccion="Plantel de COPRESA, 693 m Oeste."/>
    <Propiedad NumFinca="7463826" Valor="12041440" Direccion="San Rafael, 396 m Oeste."/>
    <Propiedad NumFinca="3198447" Valor="29313849" Direccion=" Central Electrica, 496 m Oeste."/>
    <Propiedad NumFinca="7336049" Valor="22158195" Direccion=" Fresh Markert, 396 m Oeste."/>
    <Propiedad NumFinca="5945180" Valor="9713226" Direccion="Residencias Pacific Sun, 829 m Suroeste."/>
    <Propiedad NumFinca="9185218" Valor="5361093" Direccion="Las Cascadas, 329 m Norte."/>
    <Propiedad NumFinca="7105680" Valor="3998036" Direccion="Bar las delicias, 586 m Sureste."/>
    <Propietario Nombre="Enzo Carrera Soto" TipoDocIdentidad="1" identificacion="376552944"/>
    <Propietario Nombre="Aaron Rivas Castillo" TipoDocIdentidad="1" identificacion="690952926"/>
    <Propietario Nombre="Pablo Gallardo Camacho" TipoDocIdentidad="1" identificacion="176001161"/>
    <Propietario Nombre="Laura Del Rio Ballesteros" TipoDocIdentidad="1" identificacion="483994964"/>
    <Propietario Nombre="Sofía Vazquez Iglesias" TipoDocIdentidad="1" identificacion="263362011"/>
    <Propietario Nombre="Javier Casas Prieto" TipoDocIdentidad="1" identificacion="617354885"/>
    <Propietario Nombre="Marco Simon Beltran" TipoDocIdentidad="1" identificacion="666381891"/>
    <Propietario Nombre="Álvaro Zamora Prado" TipoDocIdentidad="2" identificacion="891370322"/>
    <Propietario Nombre="Oliver Izquierdo Gimenez" TipoDocIdentidad="1" identificacion="745781180"/>
    <Propietario Nombre="Diego Morales Sierra" TipoDocIdentidad="1" identificacion="298886724"/>
    <PropiedadVersusPropietario NumFinca="3483977" identificacion="376552944"/>
    <PropiedadVersusPropietario NumFinca="1490750" identificacion="690952926"/>
    <PropiedadVersusPropietario NumFinca="7563560" identificacion="176001161"/>
    <PropiedadVersusPropietario NumFinca="2814773" identificacion="483994964"/>
    <PropiedadVersusPropietario NumFinca="7463826" identificacion="263362011"/>
    <PropiedadVersusPropietario NumFinca="3198447" identificacion="617354885"/>
    <PropiedadVersusPropietario NumFinca="7336049" identificacion="666381891"/>
    <PropiedadVersusPropietario NumFinca="5945180" identificacion="891370322"/>
    <PropiedadVersusPropietario NumFinca="9185218" identificacion="745781180"/>
    <PropiedadVersusPropietario NumFinca="7105680" identificacion="298886724"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="3483977"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="1490750"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7563560"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="2814773"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="7463826"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3198447"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="7336049"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="5945180"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="9185218"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="7105680"/>
    <TransConsumo id="1" LecturaM3="777" descripcion="Cobro Mensual" NumFinca="9383952"/>
    <TransConsumo id="1" LecturaM3="469" descripcion="Cobro Mensual" NumFinca="2060905"/>
    <TransConsumo id="1" LecturaM3="432" descripcion="Cobro Mensual" NumFinca="3131064"/>
    <TransConsumo id="1" LecturaM3="426" descripcion="Cobro Mensual" NumFinca="5973252"/>
    <TransConsumo id="1" LecturaM3="496" descripcion="Cobro Mensual" NumFinca="1872614"/>
    <TransConsumo id="3" LecturaM3="62" descripcion="Lectura errónea" NumFinca="3901661"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-26">
    <Propiedad NumFinca="9043285" Valor="23482812" Direccion="Canoas, 823 m Noreste."/>
    <Propiedad NumFinca="2540717" Valor="28025856" Direccion="Astua Pirie, 751 m Oeste."/>
    <Propiedad NumFinca="9897039" Valor="20426608" Direccion=" Autolavado Nuestra Señora, 802 m Este."/>
    <Propiedad NumFinca="4301605" Valor="3470162" Direccion="Bri-Bri Centro, 640 m Sureste."/>
    <Propiedad NumFinca="7141504" Valor="8912796" Direccion="Las Cascadas, 528 m Oeste."/>
    <Propiedad NumFinca="6061005" Valor="27260155" Direccion="Brasil de Mora, 226 m Sur."/>
    <Propiedad NumFinca="4808632" Valor="27509969" Direccion="Soda la Paz, 226 m Sureste."/>
    <Propiedad NumFinca="1328954" Valor="10067048" Direccion="La Giralda, 298 m Noroeste."/>
    <Propiedad NumFinca="1511992" Valor="21742103" Direccion=" La fuente central, 823 m Noroeste."/>
    <Propiedad NumFinca="2307454" Valor="21230030" Direccion="UCR, 749 m Este."/>
    <Propietario Nombre="Alba Diaz Gutierrez" TipoDocIdentidad="1" identificacion="307708108"/>
    <Propietario Nombre="Irene Roman Andres" TipoDocIdentidad="1" identificacion="231722885"/>
    <Propietario Nombre="Ángel Pardo Flores" TipoDocIdentidad="1" identificacion="161552024"/>
    <Propietario Nombre="Gabriel Morales Abad" TipoDocIdentidad="1" identificacion="231707825"/>
    <Propietario Nombre="Enzo Rojas Gracia" TipoDocIdentidad="1" identificacion="764336741"/>
    <Propietario Nombre="Ainhoa Flores Gallardo" TipoDocIdentidad="2" identificacion="872267838"/>
    <Propietario Nombre="Ana Gallardo Ramirez" TipoDocIdentidad="1" identificacion="356846368"/>
    <Propietario Nombre="Rubén Rey Duran" TipoDocIdentidad="1" identificacion="729376913"/>
    <Propietario Nombre="José Roca Carmona" TipoDocIdentidad="2" identificacion="846275789"/>
    <Propietario Nombre="Irene Miguel Garrido" TipoDocIdentidad="1" identificacion="623580214"/>
    <PropiedadVersusPropietario NumFinca="9043285" identificacion="307708108"/>
    <PropiedadVersusPropietario NumFinca="2540717" identificacion="231722885"/>
    <PropiedadVersusPropietario NumFinca="9897039" identificacion="161552024"/>
    <PropiedadVersusPropietario NumFinca="4301605" identificacion="231707825"/>
    <PropiedadVersusPropietario NumFinca="7141504" identificacion="764336741"/>
    <PropiedadVersusPropietario NumFinca="6061005" identificacion="872267838"/>
    <PropiedadVersusPropietario NumFinca="4808632" identificacion="356846368"/>
    <PropiedadVersusPropietario NumFinca="1328954" identificacion="729376913"/>
    <PropiedadVersusPropietario NumFinca="1511992" identificacion="846275789"/>
    <PropiedadVersusPropietario NumFinca="2307454" identificacion="623580214"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9043285"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2540717"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9897039"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="4301605"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7141504"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="6061005"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4808632"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="1328954"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1511992"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2307454"/>
    <CambioPropiedad NumFinca="7090316" NuevoValor="29710023"/>
    <TransConsumo id="1" LecturaM3="1094" descripcion="Cobro Mensual" NumFinca="2425954"/>
    <TransConsumo id="1" LecturaM3="1279" descripcion="Cobro Mensual" NumFinca="7816509"/>
    <Pago TipoRecibo="10" NumFinca="1176180"/>
    <Pago TipoRecibo="10" NumFinca="1394522"/>
    <Pago TipoRecibo="10" NumFinca="1750401"/>
    <Pago TipoRecibo="10" NumFinca="4121713"/>
    <Pago TipoRecibo="10" NumFinca="1605224"/>
    <Pago TipoRecibo="10" NumFinca="1423800"/>
    <Pago TipoRecibo="10" NumFinca="1568495"/>
    <Pago TipoRecibo="10" NumFinca="2291223"/>
    <Pago TipoRecibo="1" NumFinca="4782873"/>
    <Pago TipoRecibo="10" NumFinca="6325448"/>
    <Pago TipoRecibo="10" NumFinca="6766683"/>
    <Pago TipoRecibo="10" NumFinca="6736147"/>
    <Pago TipoRecibo="1" NumFinca="1858970"/>
    <Pago TipoRecibo="1" NumFinca="2101885"/>
    <Pago TipoRecibo="1" NumFinca="6722024"/>
    <Pago TipoRecibo="1" NumFinca="5310895"/>
    <Pago TipoRecibo="1" NumFinca="3443064"/>
    <Pago TipoRecibo="1" NumFinca="7254630"/>
    <Pago TipoRecibo="1" NumFinca="3901661"/>
    <Pago TipoRecibo="1" NumFinca="6883678"/>
    <Pago TipoRecibo="1" NumFinca="2287722"/>
    <Pago TipoRecibo="1" NumFinca="5612982"/>
    <Pago TipoRecibo="1" NumFinca="1667419"/>
    <Pago TipoRecibo="1" NumFinca="1463009"/>
    <Pago TipoRecibo="1" NumFinca="2415723"/>
    <Pago TipoRecibo="1" NumFinca="2405935"/>
    <Pago TipoRecibo="1" NumFinca="2416612"/>
    <Pago TipoRecibo="1" NumFinca="3151260"/>
    <Pago TipoRecibo="1" NumFinca="5333273"/>
    <Pago TipoRecibo="1" NumFinca="1337841"/>
    <Pago TipoRecibo="1" NumFinca="2425954"/>
    <Pago TipoRecibo="1" NumFinca="7816509"/>
    <Pago TipoRecibo="1" NumFinca="1118180"/>
    <Pago TipoRecibo="1" NumFinca="1596904"/>
    <Pago TipoRecibo="1" NumFinca="5998719"/>
    <Pago TipoRecibo="1" NumFinca="4663528"/>
    <Pago TipoRecibo="1" NumFinca="7494272"/>
    <Pago TipoRecibo="1" NumFinca="5590052"/>
    <Pago TipoRecibo="1" NumFinca="8271399"/>
    <Pago TipoRecibo="1" NumFinca="6732750"/>
    <Pago TipoRecibo="1" NumFinca="9324439"/>
    <Pago TipoRecibo="1" NumFinca="5649015"/>
    <Pago TipoRecibo="1" NumFinca="3336538"/>
    <Pago TipoRecibo="1" NumFinca="6832824"/>
    <Pago TipoRecibo="1" NumFinca="8583838"/>
    <Pago TipoRecibo="1" NumFinca="3159179"/>
    <Pago TipoRecibo="1" NumFinca="3312213"/>
    <Pago TipoRecibo="1" NumFinca="9365866"/>
    <Pago TipoRecibo="1" NumFinca="9597151"/>
    <Pago TipoRecibo="1" NumFinca="3745857"/>
    <Pago TipoRecibo="1" NumFinca="9984034"/>
    <Pago TipoRecibo="1" NumFinca="3146361"/>
    <Pago TipoRecibo="1" NumFinca="9483099"/>
    <Pago TipoRecibo="1" NumFinca="5603734"/>
    <Pago TipoRecibo="1" NumFinca="2675651"/>
    <Pago TipoRecibo="1" NumFinca="9383952"/>
    <Pago TipoRecibo="1" NumFinca="5227673"/>
    <Pago TipoRecibo="1" NumFinca="8394022"/>
    <Pago TipoRecibo="1" NumFinca="8434186"/>
    <Pago TipoRecibo="1" NumFinca="9677981"/>
    <Pago TipoRecibo="1" NumFinca="6450028"/>
    <Pago TipoRecibo="1" NumFinca="1516510"/>
    <Pago TipoRecibo="1" NumFinca="6706978"/>
    <Pago TipoRecibo="1" NumFinca="7463111"/>
    <Pago TipoRecibo="1" NumFinca="3709169"/>
    <Pago TipoRecibo="1" NumFinca="3645908"/>
    <Pago TipoRecibo="1" NumFinca="7820463"/>
    <Pago TipoRecibo="1" NumFinca="2299692"/>
    <Pago TipoRecibo="1" NumFinca="9459793"/>
    <Pago TipoRecibo="1" NumFinca="5426691"/>
    <Pago TipoRecibo="1" NumFinca="5488897"/>
    <Pago TipoRecibo="1" NumFinca="7200258"/>
    <Pago TipoRecibo="1" NumFinca="3099309"/>
    <Pago TipoRecibo="1" NumFinca="5480590"/>
    <Pago TipoRecibo="1" NumFinca="9652577"/>
    <Pago TipoRecibo="1" NumFinca="4065289"/>
    <Pago TipoRecibo="1" NumFinca="1103822"/>
    <Pago TipoRecibo="1" NumFinca="8077121"/>
    <Pago TipoRecibo="1" NumFinca="6278640"/>
    <Pago TipoRecibo="1" NumFinca="1693614"/>
    <Pago TipoRecibo="1" NumFinca="5869245"/>
    <Pago TipoRecibo="1" NumFinca="1798133"/>
    <Pago TipoRecibo="1" NumFinca="2154272"/>
    <Pago TipoRecibo="1" NumFinca="4932823"/>
    <Pago TipoRecibo="1" NumFinca="8076511"/>
    <Pago TipoRecibo="1" NumFinca="8370396"/>
    <Pago TipoRecibo="1" NumFinca="6342713"/>
    <Pago TipoRecibo="1" NumFinca="4060041"/>
    <Pago TipoRecibo="1" NumFinca="2060905"/>
    <Pago TipoRecibo="1" NumFinca="3131064"/>
    <Pago TipoRecibo="1" NumFinca="5973252"/>
    <Pago TipoRecibo="1" NumFinca="1872614"/>
    <Pago TipoRecibo="1" NumFinca="2666223"/>
    <Pago TipoRecibo="1" NumFinca="1128583"/>
    <Pago TipoRecibo="1" NumFinca="4720230"/>
    <Pago TipoRecibo="1" NumFinca="9950218"/>
    <Pago TipoRecibo="1" NumFinca="2497661"/>
    <Pago TipoRecibo="1" NumFinca="4351134"/>
    <Pago TipoRecibo="1" NumFinca="2138568"/>
    <Pago TipoRecibo="1" NumFinca="2338177"/>
    <Pago TipoRecibo="1" NumFinca="2304894"/>
    <Pago TipoRecibo="1" NumFinca="3147915"/>
    <Pago TipoRecibo="1" NumFinca="2929299"/>
    <Pago TipoRecibo="1" NumFinca="2197832"/>
    <Pago TipoRecibo="1" NumFinca="9521893"/>
    <Pago TipoRecibo="1" NumFinca="2678819"/>
    <Pago TipoRecibo="1" NumFinca="6527556"/>
    <Pago TipoRecibo="1" NumFinca="2657785"/>
    <Pago TipoRecibo="1" NumFinca="5827292"/>
    <Pago TipoRecibo="1" NumFinca="2032338"/>
    <Pago TipoRecibo="1" NumFinca="2556693"/>
    <Pago TipoRecibo="1" NumFinca="2119681"/>
    <Pago TipoRecibo="1" NumFinca="3344511"/>
    <Pago TipoRecibo="1" NumFinca="7963606"/>
    <Pago TipoRecibo="1" NumFinca="3470353"/>
    <Pago TipoRecibo="1" NumFinca="8434486"/>
    <Pago TipoRecibo="1" NumFinca="8164463"/>
    <Pago TipoRecibo="1" NumFinca="6282308"/>
    <Pago TipoRecibo="1" NumFinca="9414099"/>
    <Pago TipoRecibo="1" NumFinca="4919240"/>
    <Pago TipoRecibo="1" NumFinca="4167306"/>
    <Pago TipoRecibo="1" NumFinca="6239793"/>
    <Pago TipoRecibo="1" NumFinca="6326581"/>
    <Pago TipoRecibo="1" NumFinca="7785531"/>
    <Pago TipoRecibo="1" NumFinca="1613299"/>
    <Pago TipoRecibo="1" NumFinca="6769087"/>
    <Pago TipoRecibo="1" NumFinca="7914525"/>
    <Pago TipoRecibo="1" NumFinca="3825764"/>
    <Pago TipoRecibo="1" NumFinca="8949388"/>
    <Pago TipoRecibo="1" NumFinca="8414582"/>
    <Pago TipoRecibo="1" NumFinca="5158210"/>
    <Pago TipoRecibo="1" NumFinca="6165203"/>
    <Pago TipoRecibo="1" NumFinca="7075605"/>
    <Pago TipoRecibo="1" NumFinca="5751209"/>
    <Pago TipoRecibo="1" NumFinca="8707091"/>
    <Pago TipoRecibo="1" NumFinca="3198447"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-27">
    <Propiedad NumFinca="3545953" Valor="28867817" Direccion=" Fresh Markert, 62 m Norte."/>
    <Propiedad NumFinca="6631629" Valor="11205817" Direccion=" Fresh Markert, 505 m Este."/>
    <Propiedad NumFinca="7062166" Valor="18935819" Direccion=" iglesia de Oreamuno, 339 m Noreste."/>
    <Propiedad NumFinca="2852314" Valor="20874422" Direccion="El Jardín, 538 m Noroeste."/>
    <Propiedad NumFinca="4361353" Valor="14481858" Direccion=" Central Electrica, 250 m Noreste."/>
    <Propiedad NumFinca="1460219" Valor="26585487" Direccion=" Lumaca, 735 m Este."/>
    <Propiedad NumFinca="7125370" Valor="5882874" Direccion=" Fresh Markert, 332 m Noroeste."/>
    <Propiedad NumFinca="3970740" Valor="16376394" Direccion="Orotina, 662 m Norte."/>
    <Propiedad NumFinca="9044296" Valor="15437576" Direccion=" iglesia de Oreamuno, 232 m Noreste."/>
    <Propiedad NumFinca="9909406" Valor="22620922" Direccion="El Alto, 414 m Noroeste."/>
    <Propietario Nombre="Aaron Paz Peña" TipoDocIdentidad="1" identificacion="732577870"/>
    <Propietario Nombre="Valentina Rivas Campo" TipoDocIdentidad="1" identificacion="382766333"/>
    <Propietario Nombre="Thiago Pardo Valle" TipoDocIdentidad="2" identificacion="867263561"/>
    <Propietario Nombre="Valeria Valle Simon" TipoDocIdentidad="1" identificacion="584970274"/>
    <Propietario Nombre="Vera Rios Roman" TipoDocIdentidad="1" identificacion="563588657"/>
    <Propietario Nombre="Emma Izquierdo Lopez" TipoDocIdentidad="1" identificacion="537483787"/>
    <Propietario Nombre="Aitor Miranda Aguilar" TipoDocIdentidad="1" identificacion="361134624"/>
    <Propietario Nombre="David Salvador Garcia" TipoDocIdentidad="1" identificacion="372757881"/>
    <Propietario Nombre="Nora Izquierdo Pastor" TipoDocIdentidad="1" identificacion="199163290"/>
    <Propietario Nombre="Carmen Santiago Morales" TipoDocIdentidad="1" identificacion="392074434"/>
    <PropiedadVersusPropietario NumFinca="3545953" identificacion="732577870"/>
    <PropiedadVersusPropietario NumFinca="6631629" identificacion="382766333"/>
    <PropiedadVersusPropietario NumFinca="7062166" identificacion="867263561"/>
    <PropiedadVersusPropietario NumFinca="2852314" identificacion="584970274"/>
    <PropiedadVersusPropietario NumFinca="4361353" identificacion="563588657"/>
    <PropiedadVersusPropietario NumFinca="1460219" identificacion="537483787"/>
    <PropiedadVersusPropietario NumFinca="7125370" identificacion="361134624"/>
    <PropiedadVersusPropietario NumFinca="3970740" identificacion="372757881"/>
    <PropiedadVersusPropietario NumFinca="9044296" identificacion="199163290"/>
    <PropiedadVersusPropietario NumFinca="9909406" identificacion="392074434"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="3545953"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6631629"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7062166"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2852314"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4361353"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1460219"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="7125370"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="3970740"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9044296"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9909406"/>
    <TransConsumo id="1" LecturaM3="348" descripcion="Cobro Mensual" NumFinca="2666223"/>
    <TransConsumo id="1" LecturaM3="382" descripcion="Cobro Mensual" NumFinca="1128583"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-28">
    <Propiedad NumFinca="9407324" Valor="3018442" Direccion="Hacienda Vieja, 828 m Sur."/>
    <Propiedad NumFinca="1117288" Valor="12086283" Direccion=" Lumaca, 725 m Oeste."/>
    <Propiedad NumFinca="6990993" Valor="15922302" Direccion=" Contrasuli, 565 m Noreste."/>
    <Propiedad NumFinca="2751758" Valor="22098040" Direccion="San Rafael, 692 m Oeste."/>
    <Propiedad NumFinca="8560436" Valor="13510476" Direccion="El Alto, 628 m Norte."/>
    <Propiedad NumFinca="1957701" Valor="11092929" Direccion="San Gerardo, 859 m Oeste."/>
    <Propiedad NumFinca="9957800" Valor="10652469" Direccion="Calle Vargas, 93 m Noreste."/>
    <Propiedad NumFinca="6787398" Valor="9813470" Direccion="Hacienda Vieja, 915 m Norte."/>
    <Propiedad NumFinca="5759955" Valor="28184801" Direccion=" Lumaca, 682 m Este."/>
    <Propiedad NumFinca="3158806" Valor="26344831" Direccion=" Hospital Central, 358 m Este."/>
    <Propietario Nombre="Diego Bueno Vila" TipoDocIdentidad="1" identificacion="670137632"/>
    <Propietario Nombre="Lucas Gonzalez Ruiz" TipoDocIdentidad="1" identificacion="632432630"/>
    <Propietario Nombre="Dylan Pastor Varela" TipoDocIdentidad="1" identificacion="398171812"/>
    <Propietario Nombre="Laura Carrillo Mateo" TipoDocIdentidad="1" identificacion="279925587"/>
    <Propietario Nombre="Alberto Vila Alvarez" TipoDocIdentidad="1" identificacion="447966909"/>
    <Propietario Nombre="Julia Andres Herrero" TipoDocIdentidad="1" identificacion="169695836"/>
    <Propietario Nombre="Alba Anton Guillen" TipoDocIdentidad="2" identificacion="847059612"/>
    <Propietario Nombre="Olivia Guillen Sanchez" TipoDocIdentidad="1" identificacion="169292918"/>
    <Propietario Nombre="Nicolás Vazquez Gil" TipoDocIdentidad="1" identificacion="458255293"/>
    <Propietario Nombre="Adam Vicente Navarro" TipoDocIdentidad="1" identificacion="310688785"/>
    <PropiedadVersusPropietario NumFinca="9407324" identificacion="670137632"/>
    <PropiedadVersusPropietario NumFinca="1117288" identificacion="632432630"/>
    <PropiedadVersusPropietario NumFinca="6990993" identificacion="398171812"/>
    <PropiedadVersusPropietario NumFinca="2751758" identificacion="279925587"/>
    <PropiedadVersusPropietario NumFinca="8560436" identificacion="447966909"/>
    <PropiedadVersusPropietario NumFinca="1957701" identificacion="169695836"/>
    <PropiedadVersusPropietario NumFinca="9957800" identificacion="847059612"/>
    <PropiedadVersusPropietario NumFinca="6787398" identificacion="169292918"/>
    <PropiedadVersusPropietario NumFinca="5759955" identificacion="458255293"/>
    <PropiedadVersusPropietario NumFinca="3158806" identificacion="310688785"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="9407324"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="1117288"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6990993"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="2751758"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8560436"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1957701"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="9957800"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6787398"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5759955"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="3158806"/>
    <CambioPropiedad NumFinca="5680609" NuevoValor="26046506"/>
    <TransConsumo id="1" LecturaM3="1117" descripcion="Cobro Mensual" NumFinca="1118180"/>
    <TransConsumo id="1" LecturaM3="1182" descripcion="Cobro Mensual" NumFinca="1596904"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-29">
    <Propiedad NumFinca="4525718" Valor="4416143" Direccion="Iglesia Católica de Cartago Norte, 533 m Sureste."/>
    <Propiedad NumFinca="2985353" Valor="18805208" Direccion=" Iglecia Los capuchinos, 106 m Norte."/>
    <Propiedad NumFinca="8155441" Valor="13321142" Direccion="Urbanización La Fundación, 332 m Noroeste."/>
    <Propiedad NumFinca="8736605" Valor="12355292" Direccion=" UNA, 73 m Sur."/>
    <Propiedad NumFinca="2213140" Valor="20042578" Direccion="Urbanización La Fundación, 53 m Noroeste."/>
    <Propiedad NumFinca="4921952" Valor="19606573" Direccion="Calle Vargas, 464 m Sur."/>
    <Propiedad NumFinca="9674392" Valor="25363501" Direccion=" Central Electrica, 336 m Suroeste."/>
    <Propiedad NumFinca="9630946" Valor="22018088" Direccion="Soda la Paz, 266 m Noroeste."/>
    <Propiedad NumFinca="3176219" Valor="4046277" Direccion="San Gerardo, 760 m Suroeste."/>
    <Propiedad NumFinca="2420114" Valor="12416158" Direccion=" iglesia de Oreamuno, 806 m Oeste."/>
    <Propietario Nombre="Blanca Ramirez Mendoza" TipoDocIdentidad="2" identificacion="803962074"/>
    <Propietario Nombre="Carlos Pascual Medina" TipoDocIdentidad="1" identificacion="727945780"/>
    <Propietario Nombre="Laura Moya Salvador" TipoDocIdentidad="1" identificacion="699352684"/>
    <Propietario Nombre="Marta Juan Bernal" TipoDocIdentidad="2" identificacion="818134511"/>
    <Propietario Nombre="Marcos Marin Paz" TipoDocIdentidad="1" identificacion="519185659"/>
    <Propietario Nombre="Lucas Contreras Vega" TipoDocIdentidad="1" identificacion="591593884"/>
    <Propietario Nombre="Jorge Iglesias Gonzalez" TipoDocIdentidad="1" identificacion="445891551"/>
    <Propietario Nombre="Mateo Escudero Calderon" TipoDocIdentidad="1" identificacion="325536309"/>
    <Propietario Nombre="Leire Carrera Rivera" TipoDocIdentidad="1" identificacion="118109263"/>
    <Propietario Nombre="Mía Alonso Leon" TipoDocIdentidad="2" identificacion="890235104"/>
    <PropiedadVersusPropietario NumFinca="4525718" identificacion="803962074"/>
    <PropiedadVersusPropietario NumFinca="2985353" identificacion="727945780"/>
    <PropiedadVersusPropietario NumFinca="8155441" identificacion="699352684"/>
    <PropiedadVersusPropietario NumFinca="8736605" identificacion="818134511"/>
    <PropiedadVersusPropietario NumFinca="2213140" identificacion="519185659"/>
    <PropiedadVersusPropietario NumFinca="4921952" identificacion="591593884"/>
    <PropiedadVersusPropietario NumFinca="9674392" identificacion="445891551"/>
    <PropiedadVersusPropietario NumFinca="9630946" identificacion="325536309"/>
    <PropiedadVersusPropietario NumFinca="3176219" identificacion="118109263"/>
    <PropiedadVersusPropietario NumFinca="2420114" identificacion="890235104"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="4525718"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2985353"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="8155441"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="8736605"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2213140"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="4921952"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9674392"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="9630946"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="3176219"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="2420114"/>
    <CambioPropiedad NumFinca="5729381" NuevoValor="26398494"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-30">
    <Propiedad NumFinca="7722201" Valor="15384872" Direccion="Manzanar, 758 m Oeste."/>
    <Propiedad NumFinca="5414325" Valor="10349370" Direccion="Urbanización La Pacífica, 746 m Noreste."/>
    <Propiedad NumFinca="8368931" Valor="19634249" Direccion="Orotina, 693 m Oeste."/>
    <Propiedad NumFinca="4626058" Valor="10847200" Direccion=" Río Camarón, 913 m Este."/>
    <Propiedad NumFinca="5820372" Valor="18143107" Direccion=" Río Camarón, 809 m Norte."/>
    <Propiedad NumFinca="1228673" Valor="4502424" Direccion="Brasil de Mora, 433 m Este."/>
    <Propiedad NumFinca="5267816" Valor="19505142" Direccion=" UNA, 803 m Oeste."/>
    <Propiedad NumFinca="9686525" Valor="4111026" Direccion="Las Cascadas, 759 m Suroeste."/>
    <Propiedad NumFinca="1957741" Valor="28045932" Direccion=" Hospital Central, 825 m Noroeste."/>
    <Propiedad NumFinca="1033562" Valor="7589521" Direccion=" Río Camarón, 190 m Noroeste."/>
    <Propietario Nombre="Guillermo Morales Ortiz" TipoDocIdentidad="1" identificacion="124046261"/>
    <Propietario Nombre="Marcos Iglesias Pereira" TipoDocIdentidad="1" identificacion="172464127"/>
    <Propietario Nombre="Carlos Rosa Izquierdo" TipoDocIdentidad="1" identificacion="433223435"/>
    <Propietario Nombre="Sergio Fernandez Campos" TipoDocIdentidad="1" identificacion="506315308"/>
    <Propietario Nombre="Guillermo Plaza Estevez" TipoDocIdentidad="1" identificacion="796765180"/>
    <Propietario Nombre="Mario Nieto Espinosa" TipoDocIdentidad="1" identificacion="582683860"/>
    <Propietario Nombre="Miguel Soler Cruz" TipoDocIdentidad="1" identificacion="487967040"/>
    <Propietario Nombre="Daniela Quintana Mateos" TipoDocIdentidad="1" identificacion="750350891"/>
    <Propietario Nombre="Clara Vidal Iglesias" TipoDocIdentidad="1" identificacion="331911841"/>
    <Propietario Nombre="Ángel Muñoz Benitez" TipoDocIdentidad="1" identificacion="363428452"/>
    <PropiedadVersusPropietario NumFinca="7722201" identificacion="124046261"/>
    <PropiedadVersusPropietario NumFinca="5414325" identificacion="172464127"/>
    <PropiedadVersusPropietario NumFinca="8368931" identificacion="433223435"/>
    <PropiedadVersusPropietario NumFinca="4626058" identificacion="506315308"/>
    <PropiedadVersusPropietario NumFinca="5820372" identificacion="796765180"/>
    <PropiedadVersusPropietario NumFinca="1228673" identificacion="582683860"/>
    <PropiedadVersusPropietario NumFinca="5267816" identificacion="487967040"/>
    <PropiedadVersusPropietario NumFinca="9686525" identificacion="750350891"/>
    <PropiedadVersusPropietario NumFinca="1957741" identificacion="331911841"/>
    <PropiedadVersusPropietario NumFinca="1033562" identificacion="363428452"/>
    <ConceptoCobroVersusPropiedad idcobro="2" NumFinca="7722201"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5414325"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="8368931"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="4626058"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="5820372"/>
    <ConceptoCobroVersusPropiedad idcobro="5" NumFinca="1228673"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5267816"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="9686525"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1957741"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="1033562"/>
    <CambioPropiedad NumFinca="6404248" NuevoValor="6948674"/>
    <TransConsumo id="1" LecturaM3="759" descripcion="Cobro Mensual" NumFinca="5227673"/>
    <TransConsumo id="1" LecturaM3="999" descripcion="Cobro Mensual" NumFinca="8394022"/>
  </OperacionDia>
  <OperacionDia fecha="2020-05-31">
    <Propiedad NumFinca="6433951" Valor="22030334" Direccion="Rio Azul, 154 m Sur."/>
    <Propiedad NumFinca="8312886" Valor="11709287" Direccion="Cuestillas, 755 m Norte."/>
    <Propiedad NumFinca="6652489" Valor="13704027" Direccion=" Fresh Markert, 299 m Sureste."/>
    <Propiedad NumFinca="5739859" Valor="18869273" Direccion="Cementerio de Santa Rosa, 383 m Noreste."/>
    <Propiedad NumFinca="6447355" Valor="13628326" Direccion=" iglesia de Oreamuno, 147 m Este."/>
    <Propiedad NumFinca="2194127" Valor="22282671" Direccion=" La fuente central, 125 m Sureste."/>
    <Propiedad NumFinca="1768599" Valor="9876469" Direccion=" Maxi Pali, 884 m Suroeste."/>
    <Propiedad NumFinca="6393847" Valor="8240950" Direccion="San Joser, 920 m Sureste."/>
    <Propiedad NumFinca="6852677" Valor="10376314" Direccion="De Nava Café, 534 m Este."/>
    <Propiedad NumFinca="8920893" Valor="20835342" Direccion="Hacienda Vieja, 621 m Suroeste."/>
    <Propietario Nombre="Daniela Camacho Espinosa" TipoDocIdentidad="1" identificacion="366411834"/>
    <Propietario Nombre="Leire Vicente Ortega" TipoDocIdentidad="1" identificacion="146998536"/>
    <Propietario Nombre="Vega Vega Parra" TipoDocIdentidad="1" identificacion="688752507"/>
    <Propietario Nombre="Julia Campos Rivera" TipoDocIdentidad="1" identificacion="400492183"/>
    <Propietario Nombre="Héctor Roman Bueno" TipoDocIdentidad="2" identificacion="817984522"/>
    <Propietario Nombre="Candela Rodriguez Prado" TipoDocIdentidad="2" identificacion="876162176"/>
    <Propietario Nombre="Adrián Conde Hernandez" TipoDocIdentidad="2" identificacion="853277121"/>
    <Propietario Nombre="Martina Gallardo Pastor" TipoDocIdentidad="1" identificacion="530342854"/>
    <Propietario Nombre="Eric Camacho Miranda" TipoDocIdentidad="1" identificacion="581856556"/>
    <Propietario Nombre="Clara Guerra Soler" TipoDocIdentidad="1" identificacion="132296627"/>
    <PropiedadVersusPropietario NumFinca="6433951" identificacion="366411834"/>
    <PropiedadVersusPropietario NumFinca="8312886" identificacion="146998536"/>
    <PropiedadVersusPropietario NumFinca="6652489" identificacion="688752507"/>
    <PropiedadVersusPropietario NumFinca="5739859" identificacion="400492183"/>
    <PropiedadVersusPropietario NumFinca="6447355" identificacion="817984522"/>
    <PropiedadVersusPropietario NumFinca="2194127" identificacion="876162176"/>
    <PropiedadVersusPropietario NumFinca="1768599" identificacion="853277121"/>
    <PropiedadVersusPropietario NumFinca="6393847" identificacion="530342854"/>
    <PropiedadVersusPropietario NumFinca="6852677" identificacion="581856556"/>
    <PropiedadVersusPropietario NumFinca="8920893" identificacion="132296627"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6433951"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8312886"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="6652489"/>
    <ConceptoCobroVersusPropiedad idcobro="4" NumFinca="5739859"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6447355"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="2194127"/>
    <ConceptoCobroVersusPropiedad idcobro="3" NumFinca="1768599"/>
    <ConceptoCobroVersusPropiedad idcobro="1" NumFinca="6393847"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="6852677"/>
    <ConceptoCobroVersusPropiedad idcobro="6" NumFinca="8920893"/>
    <CambioPropiedad NumFinca="1693614" NuevoValor="15406239"/>
  </OperacionDia>
</Operaciones_por_Dia>'


END TRY
BEGIN CATCH
	return @@Error * -1
END CATCH
END