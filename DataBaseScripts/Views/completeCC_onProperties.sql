use [DB1-Project]
go

create or alter view completeConsumptionCC_onProperties as
	
	select cc_p.RelationId, 
		   cc_p.BeginDate, 
		   cc_p.EndDate, 
		   ccc.Id as CC_Id, 
		   ccc.Name as CCName, 
		   ccc.ExpirationDays, 
		   ccc.MoratoryInterestRate, 
		   ccc.ReciptEmisionDay,
		   ccc.ValueM3, 
		   ccc.MinValue,
		  
		   p.Id as Property_Id, 
		   p.PropertyNumber
	
	from dbo.activeCC_onProperties as cc_p
		inner join dbo.activeProperties as p
			on cc_p.PropertyId = p.Id
				inner join dbo.completeConsumption_CCs as ccc
					on ccc.Id = cc_p.CC_Id
go

create or alter view completeMoratoryInterestCC_onProperties as
	
	select cc_p.RelationId, 
		   cc_p.BeginDate, 
		   cc_p.EndDate, 
		   mcc.Id as CC_Id, 
		   mcc.Name as CCName, 
		   mcc.ExpirationDays, 
		   mcc.MoratoryInterestRate, 
		   mcc.ReciptEmisionDay,
		   mcc.Amount, 

		   p.Id as Property_Id, 
		   p.PropertyNumber
	
	from dbo.activeCC_onProperties as cc_p
		inner join dbo.activeProperties as p
			on cc_p.PropertyId = p.Id
				inner join dbo.completeMoratoryInterest_CCs as mcc
					on mcc.Id = cc_p.CC_Id
go

create or alter view completeFixedCC_onProperties as
	select cc_p.RelationId, 
		   cc_p.BeginDate, 
		   cc_p.EndDate, 
		   fcc.Id as CC_Id, 
		   fcc.Name as CCName, 
		   fcc.ExpirationDays, 
		   fcc.MoratoryInterestRate, 
		   fcc.ReciptEmisionDay,
		   fcc.Amount, 

		   p.Id as Property_Id, 
		   p.PropertyNumber
	
	from dbo.activeCC_onProperties as cc_p
		inner join dbo.activeProperties as p
			on cc_p.PropertyId = p.Id
				inner join dbo.completeFixed_CCs as fcc
					on fcc.Id = cc_p.CC_Id
go

create or alter view completePercentageCC_onProperties as
	select cc_p.RelationId, 
		   cc_p.BeginDate, 
		   cc_p.EndDate, 
		   pcc.Id as CC_Id, 
		   pcc.Name as CCName, 
		   pcc.ExpirationDays, 
		   pcc.MoratoryInterestRate, 
		   pcc.ReciptEmisionDay,
		   pcc.PercentageValue,
		   
		   p.Id as Property_Id, 
		   p.PropertyNumber
	
	from dbo.activeCC_onProperties as cc_p
		inner join dbo.activeProperties as p
			on cc_p.PropertyId = p.Id
				inner join dbo.completePercentaje_CCs as pcc
					on pcc.Id = cc_p.CC_Id
GO

CREATE or ALTER view completeCCs_onProperties AS
	SELECT ccp.RelationId, 
		   ccp.BeginDate, 
		   ccp.EndDate, 
		   cc.Id AS CC_Id, 
		   cc.Name AS CCName, 
		   cc.ExpirationDays, 
		   cc.MoratoryInterestRate, 
		   cc.ReciptEmisionDay,
		   cc.Amount,
		   cc.ValueM3,
		   cc.MinValue,
		   cc.PercentageValue,
		   cc.MoratoryAmount,
		   p.Id AS Property_Id,
		   p.PropertyNumber,
		   p.Value AS PropertyValue,
		   p.AccumulatedM3,
		   p.AccumulatedLRM3
	FROM dbo.activeCC_onProperties AS ccp
		INNER JOIN dbo.activeProperties AS p
			ON ccp.PropertyId = p.Id
				INNER JOIN dbo.completeCCs AS cc
					ON cc.Id = ccp.CC_Id
	
GO