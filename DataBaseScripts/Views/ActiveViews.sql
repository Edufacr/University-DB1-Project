use [DB1-Project]
go


create or alter view activeProperties as
	
	select p.Id as Id, 
	       p.Address as Address, 
		   p.Value as Value, 
		   p.PropertyNumber as PropertyNumber,
		   p.AccumulatedM3 as AccumulatedM3,
		   p.AccumulatedLRM3 as AccumulatedLRM3
	
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

--TODO
--Para no dejar el 1 alambrado se tiene que hacer un SP que devuelva el Id del CC del agua
--Si se hace este sp hay que ponerlo en el operationsFill
CREATE OR ALTER VIEW activeWaterReceipts
AS
    SELECT Id,Id_Property,Date,DueDate,Amount
    FROM DB1P_Receipt
    WHERE Id_ChargeConcept = 1 AND [Status] = 0
GO

CREATE OR ALTER VIEW activeReconnectionReceipts
AS
    SELECT Id,Id_Property,Date,DueDate,Amount
    FROM DB1P_Receipt
    WHERE Id_ChargeConcept = 10 AND [Status] = 0
GO

CREATE OR ALTER VIEW activeReceipts
AS
    SELECT Id AS ReceiptNumber,Id_ChargeConcept,Id_Property,Date,DueDate,Amount
    FROM DB1P_Receipt
    WHERE [Status] = 0
GO

CREATE OR ALTER VIEW paidReceipts
AS
    SELECT Id_ChargeConcept,Id_Property,Date,DueDate,Amount,pr.Id_ProofOfPayment
		FROM DB1P_Receipt r
			INNER JOIN DB1P_PaidReceipts pr
				ON r.Id = pr.Id
		WHERE [Status] = 1
GO


CREATE OR ALTER VIEW activeReceiptsWithMoratoryRate
AS
    SELECT r.ReceiptNumber,r.Id_ChargeConcept,r.Id_Property,r.Date,r.DueDate,r.Amount,cc.MoratoryInterestRate
    FROM activeReceipts r
		INNER JOIN DB1P_ChargeConcepts cc
			ON cc.Id = r.Id_ChargeConcept
GO


CREATE OR ALTER VIEW ConnDiscReceipt
AS
    SELECT re.Id,re.Id_ChargeConcept,re.Id_Property,re.Date,re.DueDate,re.Amount,re.[Status],
	d.Id AS Id_Disconnection, d.Date AS DisconnectionDate, r.Id AS Id_Reconnection, r.Date AS ReconnectionDate
    	FROM DB1P_Receipt re
			INNER JOIN DB1P_Disconnection d
				ON re.Id = d.Id_ReconnectionReceipt
					LEFT JOIN DB1P_Reconnection r 
						ON re.Id = r.Id_ReconnectionReceipt
GO
