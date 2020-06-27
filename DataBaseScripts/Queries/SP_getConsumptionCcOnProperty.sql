SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE OR ALTER PROCEDURE [dbo].[SP_getConsumptionCcOnProperty]
	@inPropertyNum int
AS
BEGIN
	begin try
        DECLARE @Exists int;
        EXEC @Exists = SP_validateProperty @inPropertyNum;
        IF(@Exists =1)
        BEGIN
            SELECT * FROM completeConsumptionCC_onProperties 
            where @inPropertyNum = PropertyNumber;
		    return 1
        END
        RETURN -50002
	end try
	begin catch
		return @@Error * -1
	end catch

END