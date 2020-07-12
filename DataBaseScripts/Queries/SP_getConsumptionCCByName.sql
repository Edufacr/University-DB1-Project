
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER PROCEDURE SP_getConsumptionCCByName
	-- Add the parameters for the stored procedure here
	@inName varchar(50)
AS
BEGIN
	begin try
		
		select ccc.Name as CCName, 
			   ccc.ExpirationDays,
			   ccc.MoratoryInterestRate,
			   ccc.ReciptEmisionDay,
			   CCC.ValueM3,
			   CCC.MinValue
		from completeConsumption_CCs as ccc
		where ccc.Name = @inName

		return 1

	end try
	begin catch
		return @@Error * -1
	end catch
END
GO
