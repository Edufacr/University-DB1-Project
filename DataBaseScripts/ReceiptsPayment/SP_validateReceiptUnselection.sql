SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marín
-- Create date: 
-- Description:	Checks is receipt unselected is the newest one or in case of water receipt every reconnection is unselected
-- =============================================
CREATE OR ALTER PROCEDURE SP_validateReceiptUnselection
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
    DECLARE @ReconnectionExists INT;
    DECLARE @IdWaterCC INT;

	BEGIN TRY
        SET @IdReconnectionCC = 10;
        SET @IdWaterCC = 1;

		SELECT @IdCC = Id_ChargeConcept, @IdProperty = Id_Property
			FROM activeReceipts ar
                INNER JOIN DB1P_SelectedReceipts sr
                    ON sr.ReceiptNumber = ar.ReceiptNumber
			WHERE sr.ReceiptNumber = @inReceiptNumber;
		IF(@IdCC IS NOT NULL)
			BEGIN
                IF(@IdCC = @IdWaterCC)
                    BEGIN
                        SELECT TOP 1 @ReconnectionExists = sr.ReceiptNumber 
                            FROM activeReceipts ar
                                INNER JOIN DB1P_SelectedReceipts sr
                                    ON sr.ReceiptNumber = ar.ReceiptNumber 
                                WHERE
                                    Id_Property = @IdProperty
                                    AND   
                                    Id_ChargeConcept = @IdReconnectionCC 
                    END

				SELECT TOP 1 @CorrectReceiptToSelect = sr.ReceiptNumber 
                    FROM activeReceipts ar
                        INNER JOIN DB1P_SelectedReceipts sr
                            ON sr.ReceiptNumber = ar.ReceiptNumber 
                        WHERE
                            Id_Property = @IdProperty
                            AND   
                            Id_ChargeConcept =                                    
                                CASE 
                                    WHEN @ReconnectionExists > 0 THEN @IdReconnectionCC
                                    ELSE @IdCC 
                                END
                    ORDER BY [Date] DESC;

				IF(@CorrectReceiptToSelect = @inReceiptNumber)
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