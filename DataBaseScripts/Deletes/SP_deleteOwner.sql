SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Delete  an element from DB1P_Owners.
-- =============================================

--TODO Inputs validations.
--TODO Transaction


CREATE OR ALTER PROCEDURE dbo.SP_deleteOwner
	@pDocValue int, 
	@pDocType int
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
				update dbo.DB1P_LegalOwners
				set Active = 0
				where Id = @Id
			end
		
		update dbo.DB1P_Owners
		set Active = 0
		where Id = @Id
		
		return 1

	end try
	begin catch
		return @@Error * -1
	end catch
END