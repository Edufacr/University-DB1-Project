use [DB1-Project]
go

create or alter view activePropertiesOwnersRelations as
	
	select o.Id as ownerId, 
	       o.Name as ownerName, 
		   o.DocType_Id as ownerDocTypeId, 
		   o.DocType as ownerDocType,
		   o.DocValue as ownerDocValue,
		   
		   p.Id as PropertyId, 
		   p.Address as PropertyAddress, 
		   p.PropertyNumber as PropertyNumber, 
		   p.Value as PropertyValue,
		   p.AccumulatedM3 as AccumulatedM3,
		   p.AccumulatedLRM3 as AccumulatedLRM3,
		   
		   po.RelationId as RelationId
	
	from activePropertyOwners as po
		inner join activeProperties as p 
			on po.PropertyId = p.Id
				inner join activeOwners as o 
					on po.OwnerId = o.Id
go