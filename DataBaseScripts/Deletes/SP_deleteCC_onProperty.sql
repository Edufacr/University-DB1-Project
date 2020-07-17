SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Delete  an element from DB1P_CC_onProperties.
-- =============================================

--TODO Inputs validations.
--TODO Transaction



CREATE OR ALTER PROCEDURE dbo.SP_deleteCC_onProperty
	@pCCName varchar(50), 
	@pPropertyNumber int
AS
BEGIN

	declare @ChargeConceptId int
	declare @PropertyId int

	begin try

		select @ChargeConceptId = Id
		from dbo.DB1P_ChargeConcepts
		where Name = @pCCName

		select @PropertyId = Id
		from dbo.DB1P_Properties
		where PropertyNumber = @pPropertyNumber

		update dbo.DB1P_CC_onProperties
		set Active = 0
		where ChargeConcept_Id = @ChargeConceptId and Property_Id = @PropertyId
		return 1
	end try
	begin catch
		return @@Error * -1
	end catch
END