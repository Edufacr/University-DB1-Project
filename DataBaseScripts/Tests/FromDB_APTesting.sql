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

EXEC SP_selectReceipt 1;
GO
EXEC SP_selectReceipt 7;
GO
EXEC SP_selectReceipt 9;
GO
EXEC SP_selectReceipt 14;
GO
EXEC SP_selectReceipt 499;
GO
EXEC SP_selectReceipt 879;
GO
EXEC SP_selectReceipt 1084;
GO
EXEC SP_selectReceipt 439;
GO

SELECT * FROM dbo.DB1P_SelectedReceipts;

DECLARE @var INT;
EXEC @var = SP_generateAP 3107084, 10
PRINT @var

SELECT * FROM dbo.DB1P_APs;
SELECT * FROM dbo.DB1P_ConfigurationTable

DECLARE @Date DATE
SET @Date = GETDATE()

EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 
EXEC SP_payAPTerm 1, @Date 

SELECT Amount,MonthlyInterest,PaymentTermsLeft,NewBalance FROM dbo.DB1P_AP_Movements;
SELECT * FROM activeReceipts WHERE Id_Property = 11

EXEC SP_clearSelectedReceiptsTable;
--*/



