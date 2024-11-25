--Practical-9--
--1--
--Write T - SQL block to perform Static cursor.
declare @b_n varchar(50),@b_sn varchar(50)
declare cursor_print cursor
static
for
select Bank_Name,Bank_ShortName from Bank_Master
open cursor_print
	if @@CURSOR_ROWS >0
	begin
		fetch next from cursor_print into @b_n,@b_sn
		while(@@FETCH_STATUS=0)
		begin
			print concat(@b_n,'is ',@b_sn)
			fetch next from cursor_print into @b_n,@b_sn
		end
	end
close cursor_print
deallocate cursor_print

--2--
--Write T – SQL block to perform static cursor that fetches first and 
--last value from the result set.

declare cursor_second cursor
static
for
select Bank_Name,Bank_ShortName from Bank_Master
open cursor_second
	if @@CURSOR_ROWS >0
	begin
		fetch next from cursor_second
		fetch last from cursor_second
	end
close cursor_second
deallocate cursor_second

--3--
--Write T -SQL block to perform static cursor and try to insert/update/delete 
--a record on the table.

declare @b_name varchar(50),@b_sname varchar(50),@b_id int
declare cursor_third cursor
static
for
select Bank_Name,Bank_ShortName,Bank_Id from Bank_Master
open cursor_third
	if @@CURSOR_ROWS >0
	begin
		fetch next from cursor_third into @b_name,@b_sname,@b_id
		while(@@FETCH_STATUS=0)
		begin
			update Bank_Master set Bank_ShortName='abcd'
			where current of cursor_third
			print concat(@b_name,'is ',@b_sname)
			fetch next from cursor_third into @b_name,@b_sname,@b_id
		end
	end
close cursor_third
deallocate cursor_third
