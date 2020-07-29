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
    DECLARE @MonthlyInterestRate DECIMAL(4,2);
    DECLARE @Error INT;

BEGIN TRY

    BEGIN TRANSACTION

        SET
            @IdProperty = ( SELECT 
                                p.Id
                            FROM 
                                activeProperties as p
                            WHERE
                                p.PropertyNumber = @inPropertyNumber )
        
        IF @IdProperty IS NULL PRINT 'IdProperty'

        SET
            @AnnualInterestRate = ( SELECT 
                                        c.AnnualInterestRate
                                    FROM 
                                        DB1P_ConfigurationTable as c
                                    WHERE
                                        c.Id = 1 )

        IF @AnnualInterestRate IS NULL PRINT 'AnnualInterestRate'

        SET 
            @MonthlyInterestRate = @AnnualInterestRate / 12;

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

        
        
        -- R = P [(i (1 + i)n) / ((1 + i)n – 1)]
        SET
            @FeeValue = @OriginalAmount * ( ( @MonthlyInterestRate * POWER( 1 + @MonthlyInterestRate , @inPaymentTerms ) ) / (POWER( 1 + @MonthlyInterestRate , @inPaymentTerms ) - 1) )
    
        IF @FeeValue IS NULL PRINT 'FeeValue'

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
                @IdAP,            --> Id del Arreglo de pago
                1,               --> Id del tipo de movimiento (DEBITO)
                @inPaymentTerms  --> Cantidad de plazos ingresada por el usuario*/

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