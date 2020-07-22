USE [DB1-Project]
GO

CREATE OR ALTER VIEW ReceiptsWithProofOfPayment AS
	SELECT
		r.Amount,
		r.Date,
		r.DueDate,
		PP.Id AS ProofNumber, -- ID del comprobante para usar como identificador
		pp.Date as PaymentDate,
		pp.TotalAmount,
		cc.Name as ChargeConceptName
	FROM
		dbo.DB1P_Receipt AS r
		INNER JOIN DB1P_PaidReceipts AS pr
			ON r.Id = pr.Id
		INNER JOIN DB1P_ProofOfPayment AS pp
			ON pr.Id_ProofOfPayment = pp.Id
		INNER JOIN DB1P_ChargeConcepts AS cc
			ON r.Id_ChargeConcept = cc.Id
GO


CREATE OR ALTER VIEW ProofOfPaymentsWithIdProperty AS
	SELECT DISTINCT
		pop.Id AS ProofNumber, -- ID del comprobante para usar como identificador
		pop.Date as PaymentDate,
		pop.TotalAmount,
		pr.Id_Property
	FROM paidReceipts pr
		INNER JOIN DB1P_ProofOfPayment pop
			ON pr.Id_ProofOfPayment = pop.Id
GO