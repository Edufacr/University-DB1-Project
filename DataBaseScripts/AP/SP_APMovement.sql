CREATE OR ALTER PROCEDURE SP_APMovement

    @inAmount           MONEY,
    @inCurrentBalance   MONEY,
    @inMonthlyInterest  MONEY,
    @inApId             INT,
    @inIdMovType        INT,
    @inPaymentTermsLeft INT
    

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here

    DECLARE @Error        INT; -- Variable declarada para almacenar un posible error.
    DECLARE @Date         DATE;
    DECLARE @InsertedAt   DATETIME;
    DECLARE @UpdatedAt    DATETIME; -- Variable que se usa para el AP, no el Movimiento

    DECLARE @MovAmount    MONEY;
    DECLARE @newBalance   MONEY;

BEGIN TRY

    BEGIN TRANSACTION
    
    SET -- Set fechas de insersión y update
        @Date = GETDATE();
    SET
        @InsertedAt = GETDATE();
    SET
        @UpdatedAt = GETDATE();
    
    SET
        @MovAmount = @inAmount

    IF @inIdMovType = 1 -- Si es débito le cambia el signo a la cantidad que se va sumar al saldo
        SET @MovAmount = @MovAmount * -1

    SET 
        @newBalance = @inCurrentBalance + @MovAmount;


    
    UPDATE -- Update del saldo, plazos restantes y el campo de UpdatedAt de la tabla de AP.
        DB1P_APs
    SET
        Balance          = @newBalance,
        UpdatedAt        = @UpdatedAt,
        PaymentTermsLeft = @inPaymentTermsLeft
    WHERE
        Id = @inApId;


    INSERT INTO
        DB1P_AP_Movements (IdAP,
                           IdMovType,
                           Amount,
                           MonthlyInterest,
                           PaymentTermsLeft,
                           NewBalance,
                           Date,
                           InsertedAt)
    VALUES
        (@inApId,
        @inIdMovType,
        @inAmount,
        @inMonthlyInterest,
        @inPaymentTermsLeft,
        @newBalance,
        @Date,
        @InsertedAt)

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