SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

-- TODO Input validations
-- TODO Transaction

CREATE OR ALTER PROCEDURE [dbo].[SP_getOwnerInfoByDocValue]
	@pDocValue VARCHAR(30), 
	@pDocType varchar(50)
AS
BEGIN

	declare @Id int
	declare @DocType_Id int

	begin try

		
		select @DocType_Id = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @pDocType

		select @Id = o.Id
		from activeOwners as o
		where DocValue = @pDocValue and DocType_Id = @DocType_Id

		if @DocType_Id = 4
			begin
				select lo.LegalName, lo.LegalDocValue, lo.ResponsibleName, lo.RespDocValue, lo.RespDocType
				from dbo.completeLegalOwners as lo
				where Id = @Id
			end
		else
			begin
				select o.Name, o.DocValue, o.DocType
				from dbo.activeOwners as o
				where Id = @Id
			end

		return 1

	end try

	begin catch

		return @@Error * -1

	end catch

END