CREATE OR ALTER PROCEDURE SP_XML_APCreations

    @inAPsTable APsTable READONLY,
    @inCurrentDate DATE

AS
BEGIN

	SET NOCOUNT ON;
    
    DECLARE @PropertyNum  INT;
    DECLARE @IdProperty   INT;
    DECLARE @PaymentTerms INT;
    DECLARE @APDate       DATE;
    DECLARE @APQuantity   INT;
    DECLARE @Error        INT;
    DECLARE @IterationId  INT = 1;

BEGIN TRY
    
    SET -- Saca la cantidad de APs que se generaron en la simulación para ver cuantas veces pasar por el ciclo
        @APQuantity = ( SELECT 
                            COUNT(*)
                        FROM 
                            @inAPsTable)

    BEGIN TRANSACTION

        WHILE @IterationId <= @APQuantity
        BEGIN

            SELECT -- Set de los valores que se necesitan sacar de la tabla parámetro
                @PropertyNum  = ap.PropertyNumber,
                @PaymentTerms = ap.PaymentTerms,
                @APDate       = ap.InsertionDate
            FROM
                @inAPsTable AS ap
            WHERE
                ap.Id = @IterationId;

            SET -- Set de el ID de la propiedad para poder accesar a los recibos de esa propiedad
                @IdProperty = ( SELECT 
                                    P.Id
                                FROM 
                                    activeProperties as p
                                WHERE 
                                    p.PropertyNumber = @PropertyNum); 
            
            IF @APDate = @inCurrentDate -- Condición de la fecha actual
                BEGIN

                    INSERT INTO -- Insert masivo que inserta a la tabla selección todos los recibos activos de la propiedad.
                        DB1P_SelectedReceipts 
                            (ReceiptNumber)
                    SELECT 
                        r.ReceiptNumber
                    FROM 
                        activeReceipts AS r
                    WHERE
                        r.Id_Property = @IdProperty;

                    EXEC -- Ejecución del método de generar AP.
                        SP_generateAP
                             @PropertyNum   --> Número de la propiedad que venía en la tabla parámetro
                             ,@PaymentTerms --> Cánt. Plazos que venía en la tabla parámetro
                             ,@APDate       --> Fecha del AP que venía en la tabla parámetro

                    EXEC -- Ejecución del método de limpiar la tabla de selección.
                        SP_clearSelectedReceiptsTable; 

                END

            SET @IterationId = @IterationId + 1
        END

    COMMIT TRANSACTION
	--*/
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