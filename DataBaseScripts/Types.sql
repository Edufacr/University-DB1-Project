/* Create a table type. */
--DROP TYPE TodayConsumptionMovsTable2
CREATE TYPE TodayConsumptionMovsTable
AS TABLE 
(Id int PRIMARY KEY IDENTITY(1,1),IdMovType int, PropertyNum int,ConsumptionReading int,Description VARCHAR(100));


