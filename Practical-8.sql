--Practical-8--
create table tr_demo
(
	Roll_no int,
	tr_Name varchar(50)
)
insert into tr_demo(Roll_no,tr_Name)
values (101,'dharmik'),
	   (102,'yug');

update tr_demo
set Roll_no=235
where Roll_no=101

delete tr_demo
where Roll_no=102

select * from tr_demo
--1--
--Create a DML After/For Trigger for INSERT event and display the message of the successful event.
create trigger tr_insert
on tr_demo
for insert
as
begin
	print 'insert successfully'
end

--2--
--Create a DML After/For Trigger for the UPDATE event and display a message 
--of the successful event.

create trigger update_tr
on tr_demo
for update
as
begin
	print 'update column successfully' 
end

--3--
--Create a DML After/For Trigger for the DELETE event and display the message of the
--successful event.
create trigger delete_tr
on tr_demo
for delete
as
begin
	print 'deleteed column successfully' 
end

--4--
--Create a DML After/For Trigger for All three-event using log table.
create table dml_log_table
(
	event_id int identity(1,1) primary key,
	event_name varchar(50) not null,
	event_date datetime not null
)
select * from dml_log_table

create trigger dml_log_tr
on tr_demo
for insert,update,delete
as
begin
	declare @insertid int,@deleteid int;
	select @insertid=Roll_no from inserted
	select @deleteid=Roll_no from deleted

	if(@insertid is not null)and(@deleteid is not null)
	begin
		insert into dml_log_table
		values ('update',GETDATE())
	end
	else if(@insertid is not null)
	begin
		insert into dml_log_table
		values ('insert',GETDATE())
	end
	else
	begin
		insert into dml_log_table
		values ('delete',GETDATE())
	end
end
