SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE SP_getReceiptsFromProofOfPayment
	@inProofNumber int
AS
BEGIN
	BEGIN TRY

		SELECT
			rp.ChargeConceptName, 
			rp.Date AS ReceiptDate,
            rp.DueDate,rp.Amount,
			rp.ProofNumber AS Id_ProofOfPayment,
			rp.PaymentDate AS ProofOfPaymentDate,
			rp.TotalAmount
		FROM
			ReceiptsWithProofOfPayment  AS rp
		WHERE 
			rp.ProofNumber = @inProofNumber

		RETURN 1
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1
	END CATCH
END
GO
