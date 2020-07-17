SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/6/1
-- Description:	Query all active properties-owners relations.
-- =============================================

-- TODO Input validations

CREATE OR ALTER PROCEDURE [dbo].[SP_getActivePropertyOwners]

AS
BEGIN

	begin try
		select *
		from activePropertiesOwnersRelations as po
		return 1
	end try

	begin catch
		return @@Error * -1
	end catch
		
END