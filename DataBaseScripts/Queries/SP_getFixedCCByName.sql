
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER PROCEDURE SP_getFixedCCByName
	-- Add the parameters for the stored procedure here
	@inName varchar(50)
AS
BEGIN
	begin try
		
		select fcc.Name as CCName, 
			   fcc.ExpirationDays,
			   fcc.MoratoryInterestRate,
			   fcc.ReciptEmisionDay,
			   fcc.Amount
		from completeFixed_CCs as fcc
		where fcc.Name = @inName

		return 1

	end try
	begin catch
		return @@Error * -1
	end catch
END
GO
