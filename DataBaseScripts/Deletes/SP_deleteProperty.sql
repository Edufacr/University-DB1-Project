SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Delete  an element from DB1P_Properties.
-- =============================================

--TODO Inputs validations.
--TODO Transaction



CREATE OR ALTER PROCEDURE dbo.SP_deleteProperty
	@pPropertyNumber int
AS
BEGIN

	declare @PropertyId int

	begin try


		select @PropertyId = p.Id
		from dbo.activeProperties as p
		where p.PropertyNumber = @pPropertyNumber

		update dbo.DB1P_CC_onProperties
		set Active = 0
		where Property_Id = @PropertyId

		update dbo.DB1P_PropertyOwners
		set Active = 0
		where Property_Id = @PropertyId

		update dbo.DB1P_Properties
		set Active = 0
		where PropertyNumber = @pPropertyNumber

		return 1
	end try
	begin catch
		return @@Error * -1
	end catch
END