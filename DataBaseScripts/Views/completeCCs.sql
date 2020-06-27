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

