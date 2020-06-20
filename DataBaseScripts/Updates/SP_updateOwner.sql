SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Updates an element of the table DB1P_Owners.
-- =============================================

-- TODO Input validations
-- TODO Transaction

CREATE OR ALTER PROCEDURE dbo.SP_updateOwner 
	@pDocValue VARCHAR(30), 
	@pDocType  varchar(50), 
	@pNewName varchar(50),
	@pNewDocValue VARCHAR(30),
	@pNewDocType varchar(50)

AS
BEGIN

	declare @DocType_Id int
	declare @NewDocType_Id int

	begin try

		select @DocType_Id = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @pDocType
		
		select @NewDocType_Id = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @pNewDocType

		update dbo.DB1P_Owners
		set Name = @pNewName,
			DocValue = @pNewDocValue,
			DocType_Id = @NewDocType_Id
		where DocValue = @pDocValue and DocType_Id = @DocType_Id
		return 1

	end try
	begin catch
		return @@Error * -1
	end catch	

END