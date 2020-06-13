SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Updates an element of the table DB1P_PropertyOwners.
-- =============================================

-- TODO Input validations
-- TODO transaction

CREATE OR ALTER PROCEDURE dbo.SP_updatePropertyOwner 	
	
	@pOwnerDocValue VARCHAR(30), 
	@pOwnerDocType_Id int,
	@pPropertyNumber int,

	@pNewOwnerDocValue VARCHAR(30), 
	@pNewDocType_Id int,
	@pNewPropertyNumber int

AS
BEGIN
	
	declare @NewPropertyId int;
	declare @NewOwnerId int;
	declare @OwnerId int;
	declare @PropertyId int;


	begin try

		select @OwnerId = Id 
		from dbo.DB1P_Owners 
		where DocValue = @pOwnerDocValue and DocType_Id = @pOwnerDocType_Id
		
		select @PropertyId = Id
		from dbo.DB1P_Properties
		where PropertyNumber = @pPropertyNumber

		select @NewOwnerId = Id
		from dbo.DB1P_Owners 
		where DocValue = @pNewOwnerDocValue and DocType_Id = @pNewDocType_Id

		select @NewPropertyId = Id
		from dbo.DB1P_Properties
		where PropertyNumber = @pNewPropertyNumber

		update dbo.DB1P_PropertyOwners
		set Property_Id = @NewPropertyId,
			Owner_Id = @NewOwnerId
		where Property_Id = @PropertyId and Owner_Id = @OwnerId

		return 1

	end try
	begin catch
		return @@Error * -1
	end catch	
END