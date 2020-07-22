CREATE OR ALTER VIEW ReceiptsWithProofOfPayment AS
	SELECT 
		r.Amount,
		r.Date,
		r.DueDate,
		pp.Date as PaymentDate,
		pp.TotalAmount,
		cc.Name
	FROM
		dbo.DB1P_Receipt AS r
		INNER JOIN DB1P_PaidReceipts AS pr
			ON r.Id = pr.Id
		INNER JOIN DB1P_ProofOfPayment AS pp
			ON pr.Id_ProofOfPayment = pp.Id
		INNER JOIN DB1P_ChargeConcepts AS cc
			ON r.Id_ChargeConcept = cc.Id
GO