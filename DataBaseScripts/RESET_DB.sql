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

INSERT INTO DB1P_Users
VALUES('b','b',0,1)
INSERT INTO DB1P_Users
VALUES('a','a',1,1)

INSERT INTO DB1P_PropertiesUsers (Property_Id, User_Id,Active)
VALUES(44,27,1)
--SELECT *  FROM DB1P_APs
