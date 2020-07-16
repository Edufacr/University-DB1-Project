SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Delete  an element from DB1P_PropertyOwners.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_deletePropertyOwner
		@inOwnerDocValue varchar(30), 
		@inOwnerDocType varchar(50), 
		@inPropertyNumber int
AS
BEGIN
	
	begin try

		declare @IdOwner int;
		declare @IdProperty int;
		declare @OwnerIdDocType int;

		select @OwnerIdDocType = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @inOwnerDocType

		select @IdOwner = Id 
		from dbo.DB1P_Owners 
		where DocValue = @inOwnerDocValue and DocType_Id = @OwnerIdDocType
		
		select @IdProperty = Id
		from dbo.DB1P_Properties
		where PropertyNumber = @inPropertyNumber

		IF(@IdOwner IS NOT NULL AND @IdProperty IS NOT NULL)
		BEGIN
			update dbo.DB1P_PropertyOwners
				set Active = 0
				where Property_Id = @IdProperty and Owner_Id = @IdOwner
			RETURN SCOPE_IDENTITY();
		END
		return -50002;
	end try
	begin catch
		return @@Error * -1
	end catch
END