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

SELECT * FROM dbo.DB1P_APs

DECLARE @var INT;
EXEC @var = SP_generateAP 1160169, 10
PRINT @var

SELECT * FROM dbo.DB1P_APs

EXEC SP_clearSelectedReceiptsTable;




