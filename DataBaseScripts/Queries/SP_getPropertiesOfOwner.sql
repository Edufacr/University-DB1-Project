SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/6/1
-- Description:	Query the properties of an owner.
-- =============================================

-- TODO Input validations
-- TODO Transaction

CREATE OR ALTER PROCEDURE [dbo].[SP_getPropertiesOfOwner]
	@pDocValue varchar(30),
	@pDocType varchar(50)
AS
BEGIN

	declare @OwnerId int
	declare @DocType_Id int
	begin try

		select @DocType_Id = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @pDocType
		
		select @OwnerId = o.Id
		from activeOwners as o
		where o.DocValue = @pDocValue and o.DocType_Id = @DocType_Id

		select r.PropertyAddress as Address, r.PropertyValue as Value, r.PropertyNumber,r.AccumulatedM3 as AccumulatedM3, r.AccumulatedLRM3 as AccumulatedLRM3
		from activePropertiesOwnersRelations as r
		where r.ownerId = @OwnerId

		return 1

	end try

	begin catch
		
		return @@Error * -1

	end catch
		
END