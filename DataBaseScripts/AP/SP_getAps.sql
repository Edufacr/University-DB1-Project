SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	get Aps
-- =============================================
CREATE OR ALTER PROCEDURE SP_getAps
	-- Add the parameters for the stored procedure here
    @inPropertyNum INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE @Exists INT;
DECLARE @Id_Property INT;
BEGIN TRY
    EXEC @Exists = SP_validateProperty @inPropertyNum
    IF(@Exists = 1)
    BEGIN
        SELECT @Id_Property = Id
            FROM DB1P_Properties
            WHERE @inPropertyNum = PropertyNumber

        SELECT Id as ApNumber,InitialAmount,Balance,AnnualInterestRate,PaymentTerms,
                PaymentTermsLeft,FeeValue,InsertedAt,UpdatedAt
            FROM DB1P_APs
            WHERE @Id_Property = IdProperty;
        RETURN @@ROWCOUNT;
    END
	RETURN -50002
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO