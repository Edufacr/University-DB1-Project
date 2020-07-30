/* Create a table type. */
--DROP TYPE TodayPaymentsTable

CREATE TYPE TodayConsumptionMovsTable
AS TABLE 
(Id int PRIMARY KEY IDENTITY(1,1),IdMovType int, PropertyNum int,ConsumptionReading int,Description VARCHAR(100));
GO

CREATE TYPE TodayPaymentsTable
AS TABLE
(ReceiptType INT, PropertyNum INT);
GO

CREATE TYPE APsTable
AS TABLE
(Id int PRIMARY KEY IDENTITY(1,1), PropertyNumber INT, PaymentTerms INT, InsertionDate DATE);
GO


