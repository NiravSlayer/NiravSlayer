-- Lab-3 --

--1--
--. Write a T - SQL block to check whether the given number is a positive number or a
--negative number using a simple if statement.

Declare @n int = -10;

if( @n>0 )
begin
	print concat(@n,' is Positive');
end

else if(@n < 0)
begin
    print concat (@n,' is Negative');
end

else
begin
    print concat (@n,' is Zero');
end

--2--
--Write a T - SQL block to find the maximum number from the given two numbers.

declare @a int= 10,@b int= 10;

if( @a > @b)
begin
    print concat (@a,' is greater then ',@b);
end

else if( @a = @b)
begin
    print concat (@a,' and ',@b,' Are Same');
end

else
begin
    print concat (@b,' is greater then ',@a);
end

--3--
--. Write a T-SQL block to find the maximum number from the given three numbers.

declare @n1 int= 10,@n2 int= 10,@n3 int= 10;

if( @n1 > @n2 and @n1 > @n2)
begin
    print concat (@n1,' is greater then ',@n2,' And ',@n3);
end

else if( @n2 > @n1 and @n2 > @n3)
begin
    print concat (@n2,' is greater then ',@n1,' And ',@n3);
end

else if( @n3 > @n1 and @n3 > @n2)
begin
    print concat (@n3,' is greater then ',@n1,' And ',@n2);
end

else
begin
    print concat (@n3,' And ',@n1,' And ',@n2,' Are Same ');
end

--4--
--Write a T - SQL block to print the first 25 natural numbers using a loop.

declare @i int =1;

while(@i<=25)
begin
   print @i;
   set @i=@i+1;
end

--5--
--Write a T - SQL Program to Print Odd Numbers From 1 to 100.

declare @odd int=0,@tem int=0;

while(@odd <=100)
begin
   set @tem=@odd%2;
   if(@tem <> 0)
   begin
      print @odd;
   end
   set @odd=@odd+1;
end

--6--
--Write a T - SQL block to find the sum of the first 100 natural nos.

declare @sum int=0,@d int=1;

while( @d <=100 )
begin
   set @sum=@sum+@d;
   set @d =@d+1;
end
print Concat ('Sum of 1 to 100 is ',@sum);

--7--
--Write a T-SQL block to find whether the number is even or odd.

declare @num int=0;

   if(@num = 0)
   begin
     print concat (@num,' is zero');
   end
   else
   begin

     if (@num%2=0)
     begin
      print concat (@num,' is even');
     end

    else if (@num%2<>0)
     begin
      print concat (@num,' is odd');
     end

	end

--8--
--Write a T - SQL block to print the first 25 Odd numbers using a loop in Reverse order.

declare @h int =50;

while(@h >=1)
begin
   if(@h%2 <> 0)
   begin
      print @h;
   end
   set @h=@h-1;
end

--9--
--Write a T-SQL block for given conditions: marks > 70 then Print '1st Class', marks>50
--and marks<=70 then print '2nd Class', marks>=35 and marks<=50 then print '3rd
--Class', marks<35 then print 'Fail !!'. 

declare @marks int =26;

if(@marks > 70)
begin
  print ('1st Class');
end

else if(@marks <= 70 and @marks >50)
begin
  print ('2nd Class');
end

else if(@marks>=35 and @marks<=50)
begin
  print('3rd Class');
end

else
begin
  print('Fail !!');
end
