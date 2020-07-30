CREATE OR ALTER PROCEDURE SP_payAPTerm

    @inIdAP INT,
    @inPaymentDate DATE

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here

    DECLARE @Error            INT;

    DECLARE @IdMovement       INT;
    DECLARE @IdChargeConcept  INT;
    DECLARE @IdProperty       INT;
    DECLARE @IdReceipt        INT;

    DECLARE @FeeValue         MONEY;
    DECLARE @Amortization     MONEY;
    DECLARE @MonthlyInterest  MONEY;

    DECLARE @CurrentBalance   MONEY;
    DECLARE @LeftPaymentTerms INT;
    DECLARE @AnnualInterest   DECIMAL(4,2);

    DECLARE @ExpirationDays   INT;
    DECLARE @ReceiptDueDate   DATE;
    

BEGIN TRY

    -- SET DE LOS PARÁMETROS PARA EL MOVIMIENTO --

    SELECT -- Set de los valores que se necesitan sacar del AP para hacer los procesos
        @CurrentBalance   = ap.Balance,
        @LeftPaymentTerms = ap.PaymentTermsLeft,
        @AnnualInterest   = ap.AnnualInterestRate,
        @FeeValue         = ap.FeeValue,
        @IdProperty       = ap.IdProperty
    FROM
        dbo.DB1P_APs AS ap
    WHERE
        ap.Id = @inIdAP;

    SET -- Set de el interés del mes y la amortización.
        @MonthlyInterest = -@CurrentBalance * (@AnnualInterest / 12);
    
    SET
        @Amortization = @FeeValue - @MonthlyInterest;
    
    SET -- Decremento de los plazos restantes
        @LeftPaymentTerms -= 1;


    -- SET DE LOS PARÁMETROS PARA EL RECIBO --

    SET
        @IdChargeConcept = 12;--> Id del Tipo CC
    SET 
        @ExpirationDays = ( SELECT 
                                cc.ExpirationDays
                            FROM 
                                dbo.DB1P_ChargeConcepts AS cc
                            WHERE 
                                cc.Id = @IdChargeConcept )
    SET
        @ReceiptDueDate = DATEADD(day,@ExpirationDays,@inPaymentDate)     

    BEGIN TRANSACTION
        
        EXEC 
            @IdMovement = SP_APMovement -- Ejecuta el movimiento, y deja el id del mismo en @IdMovement
            
            @Amortization,   --> Cantidad del movimiento
            @CurrentBalance, --> Saldo actual
            @MonthlyInterest,--> Interes del mes
            @inIdAP,         --> Id del Arreglo de pago
            2,               --> Id del tipo de movimiento
            @LeftPaymentTerms--> Cantidad de plazos restante*/
        
        
  
        INSERT INTO 
            dbo.DB1P_Receipt 
                ( Id_ChargeConcept,
                  Id_Property,
                  Date,
                  DueDate,
                  Amount,
                  Status  )
        VALUES
            ( @IdChargeConcept,
              @IdProperty,
              @inPaymentDate,
              @ReceiptDueDate,
              @FeeValue,
              0 )

        SET
            @IdReceipt = SCOPE_IDENTITY()

        INSERT INTO
            dbo.DB1P_AP_Receipts
                ( Id,
                  IdMovement )
        VALUES
            ( @IdReceipt,
              @IdMovement )
        
    --*/ 
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