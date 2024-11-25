--practical-7--
--1--
--Create a DDL Trigger for CREATE event and display message of successful event.
create trigger create_inr
on database 
for create_table
as
begin
	print 'table created successfully'
end
create table demo_tr
(
	xyz varchar(20)
)

--2--
--Create a DDL Trigger for ALTER event and display message of successful event.
create trigger create_tr
on database 
for alter_table
as
begin
	print 'table alter successfully'
end
alter table demo_tr
alter column xyz varchar(50)

--3--
--Create a DDL Trigger for DROP event and display message of successful event.
create trigger drop_tr
on 
database
for drop_table
as
begin
	print 'table droped'
end

drop table demo_tr

--4--
--Create a DDL Trigger for All three events using log table.
create table log_ddl_table
(
	log_id int identity(1,1)primary key,
	event_name xml not null,
	event_date date not null,
	event_by varchar(20) not null
)
create trigger log_ddl_table_tr
on database
for create_table,alter_table,drop_table
as
begin
	insert into log_ddl_table(event_name,event_date,event_by)
	values(EVENTDATA(),GETDATE(),user)
end
create table demo_tr
(
	xyz varchar(20)
)
select * from log_ddl_table

