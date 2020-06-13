USE [DB1-Project]
GO
/****** Object:  StoredProcedure [dbo].[SP_getLegalOwnerInfoByDocValue]    Script Date: 6/4/2020 10:15:23 PM ******/
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

CREATE OR ALTER PROCEDURE [dbo].[SP_getLegalOwnerInfoByDocValue]
	@pDocValue VARCHAR(30)
AS
BEGIN

	declare @Id int

	begin try


		select @Id = o.Id
		from activeOwners as o
		where DocValue = @pDocValue and DocType_Id = 4

		
		select lo.LegalName, lo.LegalDocValue, lo.ResponsibleName, lo.RespDocValue, lo.RespDocType
		from dbo.completeLegalOwners as lo
		where Id = @Id
			
		return 1

	end try

	begin catch

		return @@Error * -1

	end catch

END