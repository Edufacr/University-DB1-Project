use [DB1-Project]
go

create or alter view completeFixed_CCs as
	select cc.Id as Id, 
		   cc.Name as Name, 
	       cc.MoratoryInterestRate, 
		   cc.ReciptEmisionDay, 
		   cc.ExpirationDays, 
		   
		   fcc.Amount
	
	from dbo.DB1P_ChargeConcepts as cc
		inner join dbo.DB1P_Fixed_CC as fcc
			on fcc.Id = cc.Id
go

create or alter view completeConsumption_CCs as
	select cc.Id as Id, 
		   cc.Name as Name, 
	       cc.MoratoryInterestRate, 
		   cc.ReciptEmisionDay, 
		   cc.ExpirationDays, 
		   
		   ccc.ValueM3,
		   ccc.MinValue
	
	from dbo.DB1P_ChargeConcepts as cc
		inner join dbo.DB1P_Consumption_CC as ccc
			on ccc.Id = cc.Id
go

create or alter view completeMoratoryInterest_CCs as
	select cc.Id as Id, 
		   cc.Name as Name, 
	       cc.MoratoryInterestRate, 
		   cc.ReciptEmisionDay, 
		   cc.ExpirationDays, 
		   
		   mcc.Amount
	
	from dbo.DB1P_ChargeConcepts as cc
		inner join dbo.DB1P_MoratoryInterest_CC as mcc
			on mcc.Id = cc.Id
go

create or alter view completePercentaje_CCs as
	select cc.Id as Id, 
		   cc.Name as Name, 
	       cc.MoratoryInterestRate, 
		   cc.ReciptEmisionDay, 
		   cc.ExpirationDays, 
		   
		   pcc.PercentageValue
	
	from dbo.DB1P_ChargeConcepts as cc
		inner join dbo.DB1P_Percentage_CC as pcc
			on pcc.Id = cc.Id
go

CREATE OR ALTER view completeCCs AS
	SELECT cc.Id AS Id, 
		   cc.Name AS Name, 
	       cc.MoratoryInterestRate, 
		   cc.ReciptEmisionDay, 
		   cc.ExpirationDays, 
		   
		   fcc.Amount,
		   ccc.ValueM3,
		   ccc.MinValue,
		   pcc.PercentageValue,
		   mcc.Amount AS MoratoryAmount

	FROM dbo.DB1P_ChargeConcepts AS cc
		LEFT JOIN dbo.DB1P_Fixed_CC AS fcc
		ON fcc.Id = cc.Id
			LEFT JOIN dbo.DB1P_Consumption_CC AS ccc
			ON ccc.Id = cc.Id
				LEFT JOIN dbo.DB1P_Percentage_CC AS pcc
				ON pcc.Id = cc.Id
					LEFT JOIN dbo.DB1P_MoratoryInterest_CC AS mcc
					ON mcc.Id = cc.Id
GO

CREATE OR ALTER view completeCCsReceipts AS
	SELECT cc.Id AS Id, 
		   cc.Name AS Name, 
	       cc.MoratoryInterestRate, 
		   cc.ReciptEmisionDay, 
		   cc.ExpirationDays, 
		   
		   fcc.Amount,
		   pcc.PercentageValue,
		   mcc.Amount AS MoratoryAmount

	FROM dbo.DB1P_ChargeConcepts AS cc
		LEFT JOIN dbo.DB1P_Fixed_CC AS fcc
		ON fcc.Id = cc.Id
			LEFT JOIN dbo.DB1P_Percentage_CC AS pcc
			ON pcc.Id = cc.Id
				LEFT JOIN dbo.DB1P_MoratoryInterest_CC AS mcc
				ON mcc.Id = cc.Id
GO
