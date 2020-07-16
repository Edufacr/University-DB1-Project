-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE or ALTER PROCEDURE SP_updateConsumptionCC
	-- Add the parameters for the stored procedure here
	@inName varchar(50),
	@inNewName varchar(50),
	@inNewExpirationDays tinyint,
	@inNewReciptEmisionDay tinyint,
	@inNewMoratoryInterestRate real,
	@inNewValueM3 money,
	@inNewMinValue money
AS
BEGIN
	
	declare @id int
	begin try
		select @id = cc.Id
		from DB1P_ChargeConcepts as cc
		where cc.Name = @inName
		if(@id is not null)
		BEGIN
			BEGIN TRANSACTION
			update DB1P_ChargeConcepts
				set Name = @inNewName,
					ExpirationDays = @inNewExpirationDays,
					ReciptEmisionDay = @inNewReciptEmisionDay,
					MoratoryInterestRate = @inNewMoratoryInterestRate
				where Id = @id
				update DB1P_Consumption_CC
				set MinValue = @inNewMinValue,
					ValueM3 = @inNewValueM3
				where Id = @id
			COMMIT TRANSACTION
			RETURN @id
		END
	return -50002
	end try
	begin catch
		if @@TRANCOUNT > 1
			rollback
		return @@Error * -1
	end catch

END
GO