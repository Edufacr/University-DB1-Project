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
	@inIdOwner INT

AS
BEGIN
	declare @IdRespDocType int

	begin try

		select @IdRespDocType = t.Id
			from DB1P_Doc_Id_Types as t
			where t.Name = @inResp_DocType

		IF(@IdRespDocType IS NOT NULL AND @inIdOwner IS NOT NULL)
		BEGIN
			insert into dbo.DB1P_LegalOwners (Id, ResponsibleName, Resp_DocType_Id, Resp_DocValue, Active)
			values (@inIdOwner, @inName, @IdRespDocType, @inResp_DocValue, 1)
			return @inIdOwner
		END
		return -50002;
	end try

	begin catch
	
		return @@Error * -1
	
	end catch
		
END