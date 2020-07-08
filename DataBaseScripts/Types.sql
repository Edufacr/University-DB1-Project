/* Create a table type. */
CREATE TYPE TodayConsumptionMovs 
AS TABLE 
(Id int PRIMARY KEY IDENTITY(1,1),IdMovType int, PropertyNum int,ConsumptionReading int,Description VARCHAR(100));
GO