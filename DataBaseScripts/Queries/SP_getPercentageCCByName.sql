
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER PROCEDURE SP_getPercentageCCByName
	-- Add the parameters for the stored procedure here
	@inName varchar(50)
AS
BEGIN
	begin try
		
		select pcc.Name as CCName, 
			   pcc.ExpirationDays,
			   pcc.MoratoryInterestRate,
			   pcc.ReciptEmisionDay,
			   pcc.PercentageValue
		from completePercentaje_CCs as pcc
		where pcc.Name = @inName

		return 1

	end try
	begin catch
		return @@Error * -1
	end catch
END
GO