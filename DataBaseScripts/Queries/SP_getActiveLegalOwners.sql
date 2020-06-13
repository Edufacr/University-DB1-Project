USE [DB1-Project]
GO
/****** Object:  StoredProcedure [dbo].[SP_getActiveLegalOwners]    Script Date: 6/1/2020 12:18:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/6/1
-- Description:	Query all active legal owners from completeLegalOwners view.
-- =============================================


CREATE OR ALTER PROCEDURE [dbo].[SP_getActiveLegalOwners]
AS
BEGIN
	
	begin try
	
		select o.LegalName, o.LegalDocValue, o.ResponsibleName, o.RespDocValue, o.RespDocType
		from dbo.completeLegalOwners as o
	
	end try

	begin catch
	
		return @@Error * -1
	
	end catch
END