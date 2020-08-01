SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	get Ap details
-- =============================================
CREATE OR ALTER PROCEDURE SP_getApDetails
	-- Add the parameters for the stored procedure here
    @inApNumber INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE @IdAP INT;
BEGIN TRY
    SELECT @IdAP = Id
        FROM DB1P_APs
        WHERE @inApNumber = Id;
    IF(@IdAP IS NOT NULL)
    BEGIN
        SELECT Id as ApNumber,InitialAmount,Balance,AnnualInterestRate,PaymentTerms,
                PaymentTermsLeft,FeeValue,InsertedAt,UpdatedAt
            FROM DB1P_APs
            WHERE @IdAP = Id;
        RETURN @IdAP;
    END
	RETURN -50002
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO