SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Checks is receipt selected is the older one or in case of reconnection every water receipt is selected or payed
-- =============================================
CREATE OR ALTER PROCEDURE SP_validateReceiptSelection
	-- Add the parameters for the stored procedure here
    @inReceiptNumber INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DECLARE @IdCC INT;
	DECLARE @CorrectReceiptToSelect INT;
    DECLARE @IdProperty INT;
    DECLARE @IdReconnectionCC INT;
    DECLARE @IdWaterCC INT;

	BEGIN TRY

        SET @IdReconnectionCC = 10;
        SET @IdWaterCC = 1;
		SELECT @IdCC = Id_ChargeConcept, @IdProperty = Id_Property
			FROM activeReceipts
			WHERE ReceiptNumber = @inReceiptNumber;
		IF(@IdCC IS NOT NULL)
			BEGIN
				SELECT @CorrectReceiptToSelect = ReceiptNumber 
					FROM 
						(
							SELECT TOP 1 ReceiptNumber
								FROM activeReceipts
								WHERE 
                                    Id_Property = @IdProperty
                                    AND   
                                    Id_ChargeConcept = 
                                        CASE 
                                            WHEN @IdCC = @IdReconnectionCC THEN @IdWaterCC -- If its reconnection it has to check for water CC instead
                                            ELSE @IdCC 
                                        END
                            ORDER BY [Date]
							EXCEPT
							SELECT ReceiptNumber 
								FROM DB1P_SelectedReceipts
						) AS NotSelected;
				IF
				(
					@CorrectReceiptToSelect = @inReceiptNumber
					OR
					@CorrectReceiptToSelect IS NULL -- If no water receipts are unpaid
				)
					BEGIN 
						RETURN @inReceiptNumber;
					END 
				RETURN -50003;	
			END
		RETURN -50002;

	END TRY
    
BEGIN CATCH
	RETURN @@Error * -1
END CATCH
END
GO