CREATE OR ALTER PROCEDURE SP_XML_APTermPayment

    @inCurrentDate DATE

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here

    DECLARE @Error       INT;
    DECLARE @APQuantity  INT;
    DECLARE @EmissionDay INT;
    DECLARE @CurrentDay  INT;
    DECLARE @InsertedAt  DATE;
    DECLARE @IterationId INT = 1;

BEGIN TRY



        SET -- Saca la cantidad de APs que se generaron en la simulación para ver cuantas veces pasar por el ciclo
            @APQuantity = ( SELECT 
                                COUNT(1)
                            FROM 
                                dbo.DB1P_APs)

        SET -- Accede al día de la fecha actual
            @CurrentDay = DAY(@inCurrentDate)

    BEGIN TRANSACTION
        WHILE @IterationId <= @APQuantity
            BEGIN

                SELECT -- Saca la fecha en la que se insertó el AP
                    @InsertedAt = ap.InsertedAt
                FROM 
                    dbo.DB1P_APs AS ap
                WHERE
                    ap.Id = @IterationId

                SET -- Accede al día de la fecha de insersión
                   @EmissionDay =  DAY(@InsertedAt)

                IF @CurrentDay = @EmissionDay -- Si el día actual es igual al día de emisión del recibo
                    EXEC -- Ejecuta la acción de pagar el plazo si pasa la condición
                        SP_payAPTerm @IterationId   --> Id del AP por el que va iterando
                                    ,@inCurrentDate --> Fecha que ingresó como parametro, se asume que es la fecha actual

                SET @IterationId = @IterationId + 1
            END
        
    COMMIT TRANSACTION
    RETURN 1;
	
END TRY
BEGIN CATCH

    SET @Error = @@Error

    IF @@TRANCOUNT > 0
        ROLLBACK
	RETURN @Error

END CATCH
END
GO