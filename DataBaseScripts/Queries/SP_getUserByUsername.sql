create or alter proc SP_getUserByUsername 

	@pUsername varchar(50)

as
begin
	begin try
		select u.Username, u.UserType
		from dbo.activeUsers as u
		where u.Username = @pUsername
		return 1
	end try
	begin catch
		return @@Error * -1
	end catch
end 
