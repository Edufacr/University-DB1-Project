-- Solo genera un AP con los recibos que hayan seleccionados en la tabla selección.

CREATE OR ALTER PROCEDURE SP_generateAP

    @inPropertyNumber int,
    @inPaymentTerms int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here

    DECLARE @IdAP                INT;
    DECLARE @IdProperty          INT;
    DECLARE @IdProofOfPayment    INT;
    DECLARE @OriginalAmount      MONEY;
    DECLARE @InitialBalance      MONEY;
    DECLARE @FeeValue            MONEY;
    DECLARE @InsertAt            DATETIME;
    DECLARE @UpdateAt            DATETIME;
    DECLARE @AnnualInterestRate  DECIMAL(4,2);
    DECLARE @Error INT;

BEGIN TRY

        SET
            @IdProperty = ( SELECT 
                                p.Id
                            FROM 
                                activeProperties as p
                            WHERE
                                p.PropertyNumber = @inPropertyNumber )
        
        IF @IdProperty IS NULL PRINT 'IdProperty'

        SET 
            @InitialBalance = 0;
        
        SET 
            @InsertAt = GETDATE();

        IF @InsertAt IS NULL PRINT 'InsertAt'

        SET
            @UpdateAt = GETDATE();

        IF @UpdateAt IS NULL PRINT 'UpdateAt'


        EXEC 
            dbo.SP_getSelectedTotalAmount 
            @outTotal = @OriginalAmount OUTPUT;

        IF @OriginalAmount IS NULL PRINT 'OriginalAmount'

        EXEC 
            @IdProofOfPayment = dbo.SP_paySelectedReceipts;

        IF @IdProofOfPayment IS NULL PRINT 'IdProofOfPayment'

        EXEC SP_calculateFeeValue @OriginalAmount,@inPaymentTerms, @FeeValue OUTPUT, @AnnualInterestRate OUTPUT;

    BEGIN TRANSACTION  

        INSERT INTO
            dbo.DB1P_APs([IdProperty]
                        ,[IdProofOfPayment]
                        ,[InitialAmount]
                        ,[Balance]
                        ,[AnnualInterestRate]
                        ,[PaymentTerms]
                        ,[PaymentTermsLeft]
                        ,[FeeValue]
                        ,[InsertedAt]
                        ,[UpdatedAt])
        VALUES
            (@IdProperty
            ,@IdProofOfPayment
            ,@OriginalAmount
            ,0
            ,@AnnualInterestRate
            ,@inPaymentTerms
            ,@inPaymentTerms        --> PaymentTermsLeft
            ,@FeeValue
            ,@InsertAt
            ,@UpdateAt)

        SET @IdAP = SCOPE_IDENTITY();
        
        EXEC 
            SP_APMovement 
                @OriginalAmount, --> Cantidad del movimiento
                @InitialBalance, --> Saldo actual
                0,               --> Interes del mes (como no hay al ser un débito, va en 0)
                @IdAP,           --> Id del Arreglo de pago
                1,               --> Id del tipo de movimiento (DEBITO)
                @inPaymentTerms  --> Cantidad de plazos ingresada por el usuario*/

        EXEC SP_insertCC_onPropety @inPropertyNumber, 'Cuota Calculada', @InsertAt

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