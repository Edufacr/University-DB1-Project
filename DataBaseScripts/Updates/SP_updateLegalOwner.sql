SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/31
-- Description:	Updates a [DB1P_LegalOwners] element.
-- =============================================
CREATE or ALTER PROCEDURE dbo.SP_updateLegalOwner
	
	@inLegalOwner_DocValue VARCHAR(30),
	@inNewLegal_DocValue VARCHAR (30),
	@inNewLegalName varchar(50),
	@inNewResponsibleName varchar(50), 
	@inNewResp_DocId_type varchar(50),
	@inNewResp_DocValue VARCHAR(30)


AS 
BEGIN
	declare @IdNewDocType int
	declare @IdOwner INT;

	begin try

		select @IdNewDocType = t.Id
		from DB1P_Doc_Id_Types as t
		where t.Name = @inNewResp_DocId_type
		
		select @IdOwner = o.Id
		from activeOwners as o
		where o.DocValue = @inLegalOwner_DocValue and o.DocType_Id = 4

		IF(@IdOwner IS NOT NULL AND @IdNewDocType IS NOT NULL)
		BEGIN 
			BEGIN TRANSACTION
				update dbo.DB1P_LegalOwners
				set ResponsibleName = @inNewResponsibleName,
					Resp_DocType_Id = @IdNewDocType,
					Resp_DocValue = @inNewResp_DocValue
				where Id = @IdOwner

				update dbo.DB1P_Owners
				set 
				Name = @inNewLegalName,
				DocValue = @inNewLegal_DocValue
				where Id = @IdOwner
			COMMIT TRANSACTION
			return @IdOwner;
		END
		return -50002
	end try
	begin catch
		ROLLBACK
		return @@Error * -1
	end catch

END