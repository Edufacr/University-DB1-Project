SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	get Ap movements
-- =============================================
CREATE OR ALTER PROCEDURE SP_getMovementsByApNumber
	-- Add the parameters for the stored procedure here
    @inApNumber INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE @IdAP INT;
BEGIN TRY
    SELECT @IdAP = Id 
        FROM DB1P_APs
        WHERE @inApNumber = Id;
    IF(@IdAP IS NOT NULL)
    BEGIN
        SELECT apm.IdAP,apm.Id as MovNumber,mt.Name as MovTypeName,Amount,MonthlyInterest,NewBalance,
                PaymentTermsLeft,Date,InsertedAt
            FROM DB1P_AP_Movements apm
                INNER JOIN DB1P_AP_MovementTypes mt
                    ON apm.IdMovType = mt.Id
            WHERE @IdAP = apm.IdAP;
        RETURN @IdAP;
    END
	RETURN -50002
END TRY
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO