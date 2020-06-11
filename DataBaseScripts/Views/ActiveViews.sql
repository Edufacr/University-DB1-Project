use [DB1-Project]
go


create or alter view activeProperties as
	
	select p.Id as Id, 
	       p.Address as Address, 
		   p.Value as Value, 
		   p.PropertyNumber as PropertyNumber
	
	from dbo.DB1P_Properties as p
	where Active = 1

go

create or alter view activeOwners as
	
	select o.Id as Id, 
		   o.Name as Name, 
		   o.DocValue as DocValue, 
		   o.DocType_Id as DocType_Id,
		  
		   d.Name as DocType
	
	from dbo.DB1P_Owners as o
			inner join dbo.DB1P_Doc_Id_Types as d
				on o.DocType_Id = d.Id
	
	where Active = 1
go

create or alter view activePropertyOwners as
	
	select po.Id as RelationId, 
	       po.Owner_Id as OwnerId, 
		   po.Property_Id as PropertyId
	
	from dbo.DB1P_PropertyOwners as po
	
	where Active = 1
go

create or alter view activeCC_onProperties as
	
	select cc_p.Id as RelationId, 
	       cc_p.ChargeConcept_Id as CC_Id, 
		   cc_p.Property_Id as PropertyId, 
		   cc_p.BeginDate as BeginDate, 
		   cc_p.EndDate as EndDate
	
	from dbo.DB1P_CC_onProperties as cc_p
	where Active = 1
go

create or alter view activeUsers as
	
	select u.Id as Id, 
		   u.Username as Username, 
		   u.UserType as UserType, 
		   u.Password as Password
	
	
	from dbo.DB1P_Users as u
	where Active = 1
go

create or alter view activePropertiesUsers as
	
	select pu.Id as RelationId, 
		   pu.Property_Id as PropertyId, 
		   pu.User_Id as UserId
	
	from dbo.DB1P_PropertiesUsers pu
	where Active = 1
go
