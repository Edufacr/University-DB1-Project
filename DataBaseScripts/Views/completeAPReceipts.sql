use [DB1-Project]
go

CREATE OR ALTER VIEW completeAPReceipts
AS
    SELECT 
        r.Id AS ReceiptNumer,
        r.Id_ChargeConcept,
        r.Id_Property,
        r.Date,
        r.DueDate,
        r.Amount,
        ap_m.Amount AS Amortization,
        ap_m.MonthlyInterest,
        ap_m.PaymentTermsLeft
    FROM
        dbo.DB1P_Receipt AS r
    INNER JOIN 
        dbo.DB1P_AP_Receipts AS ap_r
        ON r.Id = ap_r.Id
    INNER JOIN 
        dbo.DB1P_AP_Movements AS ap_m
        ON ap_r.IdMovement = ap_m.Id
GO