SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Insert an element on DB1P_CC_onProperties.
-- =============================================

-- TODO Input validation
-- TODO Transaction


CREATE OR ALTER procedure dbo.SP_insertCC_onPropety
	
	@pPropertyNumber int, 
	@pChargeConceptName varchar(50), 

	@pBeginDate date

AS
BEGIN

	declare @PropertyId int;
	declare @ChargeConceptId int;
	
	begin try

		select @PropertyId = p.Id
		from dbo.activeProperties as p
		where p.PropertyNumber = @pPropertyNumber

		select @ChargeConceptId = cc.Id
		from dbo.DB1P_ChargeConcepts as cc
		where cc.Name = @pChargeConceptName

		insert into dbo.DB1P_CC_onProperties (Property_Id, ChargeConcept_Id, BeginDate, EndDate, Active)
		values (@PropertyId, @ChargeConceptId, @pBeginDate, null, 1)
	end try
	begin catch
		return @@Error * -1
	end catch
		
END