SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/27
-- Description:	Alters [SP_insertOwner] procedure.
-- =============================================

--TODO Input validations

CREATE or ALTER procedure dbo.SP_insertOwner 
	
	@pName varchar(50), 
	@pDocValue VARCHAR(30), 
	@pDocType varchar(50)

as
begin

	declare @DocType_ID int

	begin try

		select @DocType_ID = t.ID
		from dbo.DB1P_Doc_Id_Types t
		where t.Name = @pDocType

		insert into dbo.DB1P_Owners (Name, DocValue, DocType_Id, Active)
		values (@pName, @pDocValue, @DocType_ID, 1);
		return 1
	end try
	begin catch
		return @@Error * -1
	end catch		
end