SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/27
-- Description:	Insert a Legal Owner to the table DB1P_LegalOwners.
-- =============================================
CREATE or ALTER PROCEDURE dbo.SP_insertLegalOwner
	
	@inName varchar(50), 
	@inResp_DocType varchar(50), 
	@inResp_DocValue VARCHAR(30), 
	@inLegalOwner_DocValue VARCHAR(30)

AS
BEGIN

	declare @IdOwner int
	declare @IdRespDocType int

	begin try

		select @IdRespDocType = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @inResp_DocType
		
		select @IdOwner = o.Id
		from activeOwners as o
		where o.DocValue = @inLegalOwner_DocValue

		IF(@IdRespDocType IS NOT NULL AND @IdOwner IS NOT NULL)
		BEGIN
			insert into dbo.DB1P_LegalOwners (Id, ResponsibleName, Resp_DocType_Id, Resp_DocValue, Active)
			values (@IdOwner, @inName, @IdRespDocType, @inResp_DocValue, 1)
			return @IdOwner
		END
		return -5002;
	end try

	begin catch
	
		return @@Error * -1
	
	end catch
		
END