SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER PROCEDURE SP_updatePercentageCC
	-- Add the parameters for the stored procedure here
	@inName varchar(50),
	@inNewName varchar(50),
	@inNewExpirationDays tinyint,
	@inNewReciptEmisionDay tinyint,
	@inNewMoratoryInterestRate real,
	@inNewPercentageValue real
AS
BEGIN
	declare @id int
	begin try
		select @id = cc.Id
		from DB1P_ChargeConcepts as cc
		where cc.Name = @inName
		if(@id IS NOT NULL)
		BEGIN
			BEGIN TRANSACTION
				update DB1P_ChargeConcepts
				set Name = @inNewName,
					ExpirationDays = @inNewExpirationDays,
					ReciptEmisionDay = @inNewReciptEmisionDay,
					MoratoryInterestRate = @inNewMoratoryInterestRate
				where Id = @id

				update DB1P_Percentage_CC
				set PercentageValue = @inNewPercentageValue
				where Id = @id
			COMMIT TRANSACTION
			RETURN @id;
		END
		RETURN -50002
	end try
	begin catch
		if @@TRANCOUNT > 1
			rollback
		return @@Error * -1
	end catch

END
GO