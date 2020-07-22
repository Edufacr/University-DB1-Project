SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE SP_getProofOfPaymentByProofNumber
	@inProofNumber int
AS
BEGIN
	BEGIN TRY

		SELECT
			pop.Id AS Id_ProofOfPayment,
			pop.Date AS ProofOfPaymentDate,
			pop.TotalAmount
		FROM
			DB1P_ProofOfPayment AS pop
		WHERE 
			pop.Id = @inProofNumber

		RETURN 1
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1
	END CATCH
END
GO