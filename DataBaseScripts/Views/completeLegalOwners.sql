use [DB1-Project]
go

create or alter view completeLegalOwners as
	select o.Id as Id, 
		   o.Name as LegalName, 
		   o.DocValue as LegalDocValue,
		    
		   lo.ResponsibleName as ResponsibleName, 
		   lo.Resp_DocValue as RespDocValue, 
		   lo.Resp_DocType_Id as RespDocType_Id,
		   
		   dt.Name as RespDocType
	
	from dbo.activeOwners as o
		inner join dbo.DB1P_LegalOwners as lo
			on o.Id = lo.Id
				inner join dbo.DB1P_Doc_Id_Types as dt
					on dt.Id = lo.Resp_DocType_Id
go
