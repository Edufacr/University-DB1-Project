SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	get pop for a given property num
-- =============================================
CREATE OR ALTER PROCEDURE SP_getProofOfPaymentByPropertyNum
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
        SELECT 
			@Id_Property = Id
        FROM 
			DB1P_Properties
        WHERE 
			@inPropertyNum = PropertyNumber

        SELECT 
			ProofNumber
			,PaymentDate as ProofOfPaymentDate
			,TotalAmount
        FROM 
			ProofOfPaymentsWithIdProperty
        WHERE 
			@Id_Property = Id_Property
        ORDER BY 
			PaymentDate DESC;
            
        RETURN @@ROWCOUNT;
    END
	RETURN -50002
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO