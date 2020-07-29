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

EXEC SP_selectReceipt 19;
GO

EXEC SP_selectReceipt 161;
GO

EXEC SP_selectReceipt 535;
GO

EXEC SP_selectReceipt 1052;
GO

DECLARE @var INT;
EXEC @var = SP_generateAP 1160169, 10
PRINT @var

SELECT * FROM dbo.DB1P_APs;
SELECT * FROM dbo.DB1P_ChargeConcepts;
SELECT * FROM dbo.DB1P_CalculatedFee_CC;
EXEC SP_clearSelectedReceiptsTable;




