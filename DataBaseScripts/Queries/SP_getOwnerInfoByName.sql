SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/6/1
-- Description:	Query the information of an owner by name.
-- =============================================

-- TODO Input validations

CREATE OR ALTER PROCEDURE [dbo].[SP_getOwnerInfoByName]
	@pName varchar(50)
AS
BEGIN

	begin try

		select o.DocType, o.DocValue, o.Name
		from activeOwners as o
		where Name = @pName

		return 1

	end try

	begin catch

		return @@Error * -1

	end catch
END