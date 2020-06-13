SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/31
-- Description:	Updates a [DB1P_LegalOwners] element.
-- =============================================

-- TODO Input validations
-- TODO Transaction


CREATE or ALTER PROCEDURE dbo.SP_updateLegalOwner
	
	@pNewResponsibleName varchar(50), 
	@pNewResp_DocId_type int,
	@pNewResp_DocValue VARCHAR(30), 
	@pLegalOwner_DocValue VARCHAR(30)

AS 
BEGIN
	
	declare @Id int

	begin try
		
		select @Id = o.Id
		from activeOwners as o
		where o.DocValue = @pLegalOwner_DocValue and o.DocType_Id = 4

		update dbo.DB1P_LegalOwners
		set ResponsibleName = @pNewResponsibleName,
			Resp_DocType_Id = @pNewResp_DocId_type,
			Resp_DocValue = @pNewResp_DocValue
		where Id = @Id
	
		return 1
	
	end try
	
	begin catch
	
		return @@Error * -1
	
	end catch

END