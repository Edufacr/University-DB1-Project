--Test
EXEC SP_XML_EntityFill
EXEC SP_XML_CcFill
EXEC SP_XML_IdTypesFill
EXEC SP_XML_MovTypeFill
EXEC SP_XML_UsersFill
EXEC SP_XML_OperationsFill

INSERT INTO DB1P_Users
VALUES('a','a',1,1)

SELECT * FROM DB1P_ConsumptionMov
SELECT * FROM DB1P_Receipt
SELECT * FROM DB1P_PaidReceipts
SELECT * FROM DB1P_ReconnectionReceipt
SELECT * FROM DB1P_ProofOfPayment
SELECT * FROM DB1P_Disconnection
SELECT * FROM DB1P_Reconnection