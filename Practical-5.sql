--Practical-5--
--extera--
create function printN(@name varchar(50))
returns varchar(50)

as
begin
	return @name
end

select dbo.printN('abc')

--1--
--Create a function to calculate simple interest (SI=P*R*N/100).
create function calculate (@p float ,@r float ,@n float)
returns decimal(10,2)
as
begin
	return (@p*@r*@n/100)
end

select dbo.calculate(10,10,10)

--2--
--Create a function to find the feet to inch.
create function feet(@f float)
returns decimal(10,2)
as
begin
	return @f*12;
end

select dbo.feet(10)

--3--
--Create a function to convert Celsius to Fahrenheit.

create function Celsius(@c float)
returns decimal (10,2)
as
begin
	return (@c*9/5)+32;
end

select dbo.Celsius(77)

--4--
--Create a function to find factorial of a number.

create function fact(@l float)
returns decimal(10,2)
as
begin
	declare @i int=1,@sum int=1;
	while(@i <= @l)
	begin
	set @sum=@sum*@i;
	set @i=@i+1;
	end
	return @sum;
end

select dbo.fact(5)

--5--
--Write a function to find the sum of odd numbers between two range.

alter function odd_even(@e int, @j int)
returns int
as
begin
	declare @i int=@e , @sum int=0;
	while(@i<=@j)
	begin
		if(@i%2!=0)
		begin
			set @sum=@sum+@i;
		end
		set @i=@i+1;
	end
	return @sum;
end

select dbo.odd_even(10,20)