--1--
--Create a simple view Bank_View which contains only Bank_ID and Bank_Name:-

Create view Bank_View
as select Bank_Id,Bank_Name
from Bank_Master;

select *from Bank_View;

--2--
-- Create a simple view Customer_View which contains Cust_FullName, Cust_MobileNo,Cust_EmailID:-

Create View Customer_View
As select Cust_FullName,Cust_MobileNo,Cust_EmailID
from Customer_Master;

select *from Customer_View;

--3.--
--Create a complex view that contains Acc_No, Cust_ID, Branch_Name, Bank_Name:-

Create View ACB_Detail
As select Acc_No,Cust_Id,Branch_Name,bank_Name
from Branch_Master Inner Join Bank_Master on Branch_Master.Bank_Id=Bank_Master.Bank_Id
                   Inner Join Account_Master on Branch_Master.Branch_IFSC=Account_Master.Branch_IFSC;

Select *from ACB_Detail;

--4.--
--Create a simple view with Check Option Cust_View which contains Cust_FullName,Cust_City:-

Create View Cum_Detail
As select Cust_FullName,Cust_City
from Customer_Master
With check option

--5.--
--Create a sequence on the following table’s listed columns Bank_Master → Bank_ID, Branch_Master → Branch_ID, Employee_Master → Emp_No

Create sequence Ban_id
Start with 106
increment by 1
select next value for Ban_id As Bank_ID;

Create sequence Bar_id
Start with 211
increment by 1
select next value for Bar_id As Branch_ID;

Create sequence Emp_No
Start with 311
increment by 1
select next value for Emp_id As Emp_No;
--6.--
-- Create Synonym T_Master for Transaction_Master:-

Create Synonym  T_Master for Transaction_Master

--7.--
-- Create a simple view Tr_View which contains Tran_ID, Tras_Acc_No those whose Tran_Type is Online:-

Create View Tr_View 
As select Tran_ID, Tran_Acc_No
From Transaction_Master
Where Tran_Type ='OL'

--8.--
-- Create whole view of the Custome_Master table with check option for customer city =‘Rajkot’ and insert data using view:-

Create View Cut_Detail
As select *
from Customer_Master
where Cust_City='Rajkot'
With Check Option

insert into Cut_Detail(Cust_Id, Cust_FullName, Cust_DOB, Cust_Address, Cust_MobileNo ,Cust_EmailID ,Cust_City)
values(411,'xyz','9111-11-01','ABC',1234567890,'XYZ@gmail.com','Rajkot')

select *from Customer_Master

--9.--
--Create a one Table and create sequence for which contain start from 101 increment by 5 and maximum value is 120, minimum value is 100 and restart cycle after reach on maximum value:-

Create table Temp
(
S_Name varchar(10),
S_Roll int
);

Create sequence temp_s
Start with 101
increment by 5
Minvalue 100
Maxvalue 120
Cycle

insert into Temp(S_Name,S_Roll)
values(next value for temp_s,101)

select next value for temp_s

--10.--
--Insert one value into the Employee_Master table fetch next id from using sequence:-

insert into Employee_Master(Emp_No, Branch_IFSC, Emp_FullName, Emp_Designation, Emp_Manager_No, Emp_Salary)
values (next value for Emp_No, 'SBI101MB201', 'Shashikant Das',  'Bank Manager', 9876543210, 250000 )

--11.--
--Alter Tr_View that also contains Tran_Amount column.

alter View Tr_View 
As select Tran_ID, Tran_Acc_No,Tran_Amount
From Transaction_Master
Where Tran_Type ='OL'
select * from Tr_View

--12.--
--Drop the Customer_View.
drop view Customer_View

--13.--
--Drop the Employee_Master table sequence and try to insert data using sequence. 
drop sequence Emp_No


insert into Employee_Master(Emp_No, Branch_IFSC, Emp_FullName, Emp_Designation, Emp_Manager_No, Emp_Salary)
values (next value for Emp_No, 'SBI101MB201', 'Shashikant Das',  'Bank Manager', 9876543210, 250000 )