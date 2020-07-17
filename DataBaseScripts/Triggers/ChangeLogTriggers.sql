CREATE OR ALTER TRIGGER changeLogPropertyInsertTrigger
ON DB1P_Properties
AFTER INSERT
AS
DECLARE @date DATETIME ;
DECLARE @id INT;
DECLARE @jsonAfter VARCHAR(500);
SET @id = @@IDENTITY;
SET @date = GETDATE();
BEGIN TRY
    IF(@id IS NOT NULL)
    BEGIN
        SET @jsonAfter = 
            (SELECT Id,PropertyNumber,[Value],Address,AccumulatedM3,AccumulatedLRM3
                FROM DB1P_Properties
                    WHERE Id = @id
            FOR JSON PATH); 
        EXEC SP_insertChangeLog 1, @id, @date,'Trigger','127.0.0.1',null,@jsonAfter;
    END
END TRY
BEGIN CATCH
    PRINT(1)
    Print(@@ERROR)
END CATCH
GO

CREATE OR ALTER TRIGGER changeLogPropertyUpdateTrigger
ON DB1P_Properties
INSTEAD OF UPDATE
AS

DECLARE @date DATETIME ;
DECLARE @id INT;
DECLARE @jsonBefore VARCHAR(500);
DECLARE @jsonAfter VARCHAR(500);
DECLARE @Active bit;
BEGIN TRY
SET @date = GETDATE();
SELECT @Active = i.Active
    FROM inserted i;
SELECT @id = i.Id 
    FROM inserted i
IF(@id IS NOT NULL)
    BEGIN 
        SET @jsonBefore = 
            (SELECT Id,PropertyNumber,[Value],Address,AccumulatedM3,AccumulatedLRM3
                FROM DB1P_Properties
                WHERE Id = @id
            FOR JSON PATH); 
        UPDATE DB1P_Properties
            SET 
                Value = i.Value,
                Address = i.Address,
                PropertyNumber = i.PropertyNumber,
                Active = i.Active
            FROM inserted i
                INNER JOIN 
                    DB1P_Properties p
                        ON i.Id = p.Id;
        IF(@Active = 1)
            BEGIN
                SET @jsonAfter = 
                    (SELECT Id,PropertyNumber,[Value],Address,AccumulatedM3,AccumulatedLRM3
                        FROM DB1P_Properties
                        WHERE Id = @id
                    FOR JSON PATH); ;
            END
        EXEC SP_insertChangeLog 1, @id, @date,'Trigger','127.0.0.1',@jsonBefore,@jsonAfter;
    END
END TRY
BEGIN CATCH
    --ROLLBACK
    PRINT(@@Error)
END CATCH
GO