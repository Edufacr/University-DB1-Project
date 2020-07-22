SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/28
-- Description:	Alters [SP_insertPropertyOwner] procedure.
-- =============================================
create or alter procedure dbo.SP_insertPropertyOwner 
	@inPropertyNumber int, 
	@inOwnerDocValue varchar(30),
	@inOwnerDocType varchar(50)
as
begin

	declare @IdProperty int;
	declare @IdOwner int;
	declare @IdOwnerDocType int;

	begin try

		select @IdOwnerDocType = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name  = @inOwnerDocType

		select @IdOwner = o.Id
		from dbo.activeOwners as o
		where  o.DocValue = @inOwnerDocValue and o.DocType_Id = @IdOwnerDocType

		select @IdProperty = p.Id
		from dbo.activeProperties as p
		where p.PropertyNumber = @inPropertyNumber

		IF(@IdProperty IS NOT NULL AND @IdOwner IS NOT NULL)
			BEGIN
				insert into dbo.DB1P_PropertyOwners (Property_Id, Owner_Id, Active)
				values (@IdProperty, @IdOwner, 1);
				RETURN SCOPE_IDENTITY();
			END
		return -50002
	end try
	begin catch
		return @@Error * -1
	end catch		
end