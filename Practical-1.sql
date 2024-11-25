create database Bank_System_235
--table 1--
create table Bank_Master(Bank_Id int  primary key,
                         Bank_Name varchar(40),
                         Bank_ShortName varchar(10)  );
exec sp_help Bank_Master 
--table 2--
create table Branch_Master(Branch_Id int primary key,
                           Branch_Name varchar(30),
						   Branch_IFSC varchar(11) unique,
						   Bank_Id int,
						   constraint fk_bank_id 
						   foreign key(Bank_Id) references Bank_Master(Bank_Id) 
						   on delete cascade on update cascade);
exec sp_help Branch_Master
--table 3--
create table Employee_Master(Emp_No int primary key,
                             Branch_IFSC varchar(11),
							  Emp_FullName varchar(30),
                              Emp_Designation varchar(25),
                              Emp_Manager_No bigint,
                              Emp_Salary float
							   constraint fk_branch_ifsc 
							 foreign key(Branch_IFSC) references Branch_Master (Branch_IFSC)
							  on delete cascade on update cascade);

--table4--
create table Customer_Master(Cust_Id int primary key,
 Cust_FullName varchar(30),
 Cust_DOB date,
 Cust_Address varchar(80),
 Cust_MobileNo bigint,
 Cust_EmailID varchar(30),
 Cust_City varchar(20));

 --table 5--
 create table Account_Master ( Acc_No bigint primary key,
                               Cust_Id int ,
							   Acc_Type varchar(7),
							   Branch_IFSC varchar(11)
							   constraint fk_Cust_Id foreign key (Cust_Id ) references  Customer_Master(Cust_Id )  on delete cascade on update cascade,
							   constraint fk_Branch_Master_ID foreign key (Branch_IFSC) references Branch_Master(Branch_IFSC) on delete cascade on update cascade,
							   constraint ck_Acc_Type check (Acc_Type in('SB','CR'))
                 );

--table 6--
create table Transaction_Master
(Tran_Id int primary key,
Tran_Acc_No bigint,
Tran_Date datetime,
Tran_Type varchar(7),
Tran_Amount_Debit_Credit varchar(6) ,
Tran_Amount FLOAT,
constraint fk_Account_Master foreign key( Tran_Acc_No) references Account_Master(Acc_No) on delete cascade on update cascade,
constraint ck_Tran_Type check(Tran_Type in('CH','CQ','OL','RG')) 
);    