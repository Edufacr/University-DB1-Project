
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER PROCEDURE SP_getMoratoryInterestCCByName
	-- Add the parameters for the stored procedure here
	@inName varchar(50)
AS
BEGIN
	begin try
		
		select micc.Name as CCName, 
			   micc.ExpirationDays,
			   micc.MoratoryInterestRate,
			   micc.ReciptEmisionDay,
			   micc.Amount
		from completeMoratoryInterest_CCs as micc
		where micc.Name = @inName

		return 1

	end try
	begin catch
		return @@Error * -1
	end catch
END
GO