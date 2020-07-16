--Test
EXEC SP_XML_EntityFill
EXEC SP_XML_CcFill
EXEC SP_XML_IdTypesFill
EXEC SP_XML_MovTypeFill
EXEC SP_XML_UsersFill
EXEC SP_XML_OperationsFill

-- DECLARE @d DATETIME ;
-- DECLARE @retValue INT;
-- SET @d = GETDATE();
-- EXEC @retValue = SP_insertChangeLog 1, 1, @d,'Test','Test'
-- PRINT(@retValue)
-- SELECT * FROM DB1P_ChangeLog

-- Insert INTO DB1P_Properties
-- VALUES(1,'1',12,1,1,1)

--EXEC SP_B_insertOwner 'Test','123','Cedula Nacional','TestAdmin','127'

