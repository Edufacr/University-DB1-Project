--Test
use [DB1-Project]
GO

EXEC SP_DropNCreate;
GO

EXEC SP_XML_EntityFill;
EXEC SP_XML_CcFill;
EXEC SP_XML_IdTypesFill;
EXEC SP_XML_MovTypeFill;
EXEC SP_XML_UsersFill;
GO

INSERT INTO DB1P_AP_MovementTypes (Id,Name) VALUES (1,'Debito')
INSERT INTO DB1P_AP_MovementTypes (Id,Name) VALUES (2,'Credito')

EXEC SP_XML_OperationsFill
GO

SELECT * FROM DB1P_AP_Receipts

SELECT 
    m.Id, m.IdAp,m.Amount, m.MonthlyInterest, m.PaymentTermsLeft, m.NewBalance
FROM 
    dbo.DB1P_AP_Movements as m
ORDER BY
    m.IdAp ASC,
    m.PaymentTermsLeft DESC;

/*
SELECT Amount,MonthlyInterest,PaymentTermsLeft,NewBalance FROM dbo.DB1P_AP_Movements;
SELECT * FROM activeReceipts WHERE Id_Property = 11

EXEC SP_clearSelectedReceiptsTable;
--*/



