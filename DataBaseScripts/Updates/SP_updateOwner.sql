SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/30
-- Description:	Updates an element of the table DB1P_Owners.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.SP_updateOwner 
	@inDocValue VARCHAR(30), 
	@inDocType  varchar(50), 
	@inNewName varchar(50),
	@inNewDocValue VARCHAR(30),
	@inNewDocType varchar(50)

AS
BEGIN

	declare @IdDocType int
	declare @IdNewDocType int
	declare @IdOwner int;

	begin try

		select @IdDocType = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @inDocType
		
		select @IdNewDocType = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @inNewDocType

		select @IdOwner = Id 
			from DB1P_Owners
			where @inDocValue = DocValue and DocType_Id = @IdDocType ;

		IF(@IdOwner IS NOT NULL AND @IdNewDocType IS NOT NULL)
		BEGIN
			update dbo.DB1P_Owners
			set Name = @inNewName,
				DocValue = @inNewDocValue,
				DocType_Id = @IdNewDocType
			where @IdOwner = Id;
			return @IdOwner;
		END
		return -50002
	end try
	begin catch
		return @@Error * -1
	end catch	

END