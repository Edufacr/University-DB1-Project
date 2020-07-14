CREATE OR ALTER TRIGGER changeLogPropertyTrigger
ON DB1P_Properties
AFTER  INSERT,UPDATE,DELETE
AS
DECLARE @date DATETIME ;
SET @date = GETDATE();
EXEC SP_insertChangeLog 1, 1, @date,'TriggerAdmin','127.0.0.1'