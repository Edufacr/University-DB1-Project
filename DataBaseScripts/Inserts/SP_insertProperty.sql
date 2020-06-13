SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/27
-- Description:	
-- =============================================

--TODO Input validations

create or ALTER procedure [dbo].[SP_insertProperty] 
	@pValue money, 
	@pAddress varchar(100),
	@pPropertyNumber int 
as
begin
	set nocount on;
	begin try
		insert into dbo.DB1P_Properties ( Value, Address, Active, PropertyNumber)
		values ( @pValue, @pAddress, 1, @pPropertyNumber);
		return 1
	end try
	begin catch
		return @@Error * -1
	end catch		
end