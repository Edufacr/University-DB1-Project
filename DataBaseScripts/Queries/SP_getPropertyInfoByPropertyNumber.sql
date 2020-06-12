USE [DB1-Project]
GO
/****** Object:  StoredProcedure [dbo].[SP_getPropertyInfoByPropertyNumber]    Script Date: 6/1/2020 12:30:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/6/1
-- Description:	Query the information of a property by property number.
-- =============================================

-- TODO Input validations

CREATE OR ALTER PROCEDURE dbo.SP_getPropertyInfoByPropertyNumber
	@pPropertyNumber int
AS
BEGIN

	begin try
		select p.Address, p.Value, p.PropertyNumber
		from dbo.activeProperties as p
		where PropertyNumber = @pPropertyNumber
		return 1
	end try

	begin catch
		return @@Error * -1
	end catch

END
