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
