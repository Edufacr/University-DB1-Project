SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	get paid receipts
-- =============================================
CREATE OR ALTER PROCEDURE SP_getPaidReceipts
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

        SELECT cc.Name,pr.Date AS ReceiptDate,
            DueDate,Amount,Id_ProofOfPayment,pop.[Date] AS ProofOfPaymentDate, pop.TotalAmount
            FROM paidReceipts pr
                INNER JOIN DB1P_ChargeConcepts cc
                    ON cc.Id = pr.Id_ChargeConcept
                        INNER JOIN DB1P_ProofOfPayment pop
                            ON pop.Id = Id_ProofOfPayment
                    
            WHERE @Id_Property = Id_Property;
        RETURN @@ROWCOUNT;
    END
	RETURN -50002
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO