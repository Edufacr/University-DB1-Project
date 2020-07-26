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

    DECLARE @IdProperty         INT;
    DECLARE @IdProofOfPayment   INT;
    DECLARE @PaymentTerms       INT;
    DECLARE @PaymentTermsLeft   INT;
    DECLARE @OriginalAmount     MONEY;
    DECLARE @Balance            MONEY;
    DECLARE @FeeValue           MONEY;
    DECLARE @InsertAt           DATETIME;
    DECLARE @UpdateAt           DATETIME;
    DECLARE @AnnualInterestRate DECIMAL(4,2);

BEGIN TRY
    BEGIN TRANSACTION

        SET
            @IdProperty = ( SELECT 
                                p.Id
                            FROM 
                                activeProperties as p
                            WHERE
                                p.PropertyNumber = @inPropertyNumber )

        SET
            @AnnualInterestRate = ( SELECT 
                                        c.AnnualInterestRate
                                    FROM 
                                        DB1P_ConfigurationTable as c
                                    WHERE
                                        c.Id = 1 )
        SET 
            @PaymentTerms = @inPaymentTerms;
        SET 
            @PaymentTermsLeft = @inPaymentTerms;
        SET 
            @Balance = 0;
        SET 
            @InsertAt = GETDATE();
        SET
            @UpdateAt = GETDATE();

        EXEC 
            @IdProofOfPayment = dbo.SP_paySelectedReceipts;
        EXEC 
            dbo.SP_getSelectedTotalAmount @outTotal = @OriginalAmount OUTPUT;
        
        -- R = P [(i (1 + i)n) / ((1 + i)n – 1)]
        SET
            @FeeValue = @OriginalAmount * ( ( @AnnualInterestRate * POWER( 1 + @AnnualInterestRate , @PaymentTerms ) ) / (POWER( 1 + @AnnualInterestRate , @PaymentTerms ) - 1) )
    
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
            ,@Balance
            ,@AnnualInterestRate
            ,@PaymentTerms
            ,@PaymentTermsLeft
            ,@FeeValue
            ,@InsertAt
            ,@UpdateAt)

    COMMIT TRANSACTION
    RETURN 1;
	
END TRY
BEGIN CATCH

	RETURN @@Error * -1

END CATCH
END
GO