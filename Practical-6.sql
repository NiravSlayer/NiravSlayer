--Practical-6--

--1--
--Write a stored procedure to find the Factorial
create procedure pr_fact
(	@n int	)
as 
begin
	declare @i int=1,@fact int=1
	while(@i<=@n)
	begin
		set @fact=@fact*@i;
		set @i=@i+1;
	end
	print @fact
end

exec pr_fact 5

--2--
--Write a stored procedure to find maximum number out of two numbers.
create procedure maxmin(@a int,@b int)
as
begin
	if(@a>@b)
	begin
		print 'A is max.'
	end
	else
	begin
		print 'B is max.'
	end
end

exec maxmin 10,20

--3--
--Write a stored procedure to find square of number.
create procedure square1(@n int)
as
begin
	declare @result int=0;
	set @result=@n*@n;
	print @result
end

exec square1 10
--4--
--Write a stored procedure to find the sum of first 50 even numbers.
create procedure Pr_Even
as
begin
	declare @i int=0;
	declare @ans int=0;
	while @i <=100
	begin
		if @i%2=0
		begin
			set @ans=@ans+@i;
		end
		set @i=@i+1;
	end
	print @ans
end

execute Pr_Even

--5--
--Write a Stored Procedure that returns Total marks of 3 subjects using output parameter if
--marks of all 3 subject is >35 else return a proper message.

create procedure Pr_sub
(
	@s1 int,
	@s2 int,
	@s3 int,
	@t int 
)
as 
begin
	if @s1>35 and @s2>35 and @s3>35)
	begin 
		set @t=@s1+@s2+@s3
	end
	else
	begin
		print 'fail!!'
	end
end
declare @t int=0
exec pr_sub 60,40,60,@t output
print @t