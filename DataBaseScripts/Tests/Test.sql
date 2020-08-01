--Test
EXEC SP_XML_EntityFill
EXEC SP_XML_CcFill
EXEC SP_XML_IdTypesFill
EXEC SP_XML_MovTypeFill
EXEC SP_XML_UsersFill
EXEC SP_XML_OperationsFill
--!! HAY QUE CORRER TRIGGERS DESPUES DEL DROP & CREATE !!
INSERT INTO DB1P_Users
VALUES('b','b',0,1)
INSERT INTO DB1P_Users
VALUES('a','a',1,1)

INSERT INTO DB1P_PropertiesUsers (Property_Id, User_Id,Active)
VALUES(44,27,1)
INSERT INTO DB1P_PropertiesUsers (Property_Id, User_Id,Active)
VALUES(11,27,1)



SELECT * FROM DB1P_ConsumptionMov
    WHERE Id_Property = 45
SELECT * FROM DB1P_Receipt
SELECT * FROM DB1P_PaidReceipts 
SELECT * FROM DB1P_ReconnectionReceipt
SELECT * FROM DB1P_ProofOfPayment
SELECT * FROM DB1P_Disconnection
SELECT * FROM DB1P_Reconnection

SELECT * FROM activeReceipts
EXEC SP_getSelectedReceipts
DECLARE @Error INT;
EXEC @Error = SP_paySelectedReceipts
PRINT @Error;

SELECT * FROM activePropertiesUsers
SELECT * FROM activeProperties
    WHERE Id = 45
SELECT * FROM DB1P_APs



