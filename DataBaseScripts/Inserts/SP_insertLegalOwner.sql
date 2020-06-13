SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/27
-- Description:	Insert a Legal Owner to the table DB1P_LegalOwners.
-- =============================================

-- TODO Input validations 
-- TODO Transaction


CREATE or ALTER PROCEDURE dbo.SP_insertLegalOwner
	
	@pName varchar(50), 
	@pResp_DocType_Id int, 
	@pResp_DocValue VARCHAR(30), 
	@pLegalOwner_DocValue VARCHAR(30)

AS
BEGIN

	declare @Id int

	begin try
		
		select @Id = o.Id
		from activeOwners as o
		where o.DocValue = @pLegalOwner_DocValue

		insert into dbo.DB1P_LegalOwners (Id, ResponsibleName, Resp_DocType_Id, Resp_DocValue, Active)
		values (@Id, @pName, @pResp_DocType_Id, @pResp_DocValue, 1)
		return 1
	
	end try

	begin catch
	
		return @@Error * -1
	
	end catch
		
END