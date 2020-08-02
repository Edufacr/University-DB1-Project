SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	calculates Fee value
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_calculateFeeValue
    @inOriginalAmount MONEY,
    @inPaymentTerms int,
    @outFeeValue MONEY OUTPUT,
    @outAnnualInterestRate DECIMAL(4,2) OUTPUT

AS
BEGIN
    
    DECLARE @AnnualInterestRate  DECIMAL(4,2);
    DECLARE @MonthlyInterest     DECIMAL(6,6);
	
    BEGIN TRY
        
        SET
            @AnnualInterestRate = ( SELECT 
                                        c.AnnualInterestRate
                                    FROM 
                                        DB1P_ConfigurationTable as c
                                    WHERE
                                        c.Id = 1 );
        SET
            @MonthlyInterest = (@AnnualInterestRate / 12);
        
        -- R = P [(i (1 + i)^n) / ((1 + i)^n – 1)]
        SET
            @OutFeeValue = @inOriginalAmount * ( ( @MonthlyInterest * POWER( (1 + @MonthlyInterest) , @inPaymentTerms ) ) 
                                                     / (POWER( (1 + @MonthlyInterest) , @inPaymentTerms ) - 1) )

        SET @outAnnualInterestRate = @AnnualInterestRate;
	
    END TRY
	BEGIN CATCH
		RETURN @@Error * -1
	END CATCH		
END