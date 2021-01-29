use Mohanzensar
--Q1)Create Table 
CREATE TABLE Products(ProductId int not null primary key identity (1,1),
Descriptions varchar(30) not null UNIQUE,SetQty int not null check(SetQty=1 or SetQty=5 or SetQty=10)
default 1, Rate decimal(10,2) check(Rate>=51 and Rate<=5000))



--Q2)Insert 20 records in the above Product table 
insert into Products values('Oneplus',10,360)
insert into Products values('Samsung',10,420)
insert into Products values('Huawei',5,234)
insert into Products values('LG',1,480)
insert into Products values('Nokia',5,123.32)
insert into Products values('Apple',5,456)
insert into Products values('Mi',1,322)
insert into Products values('MOto',5,432)
insert into Products values('Vivo',5,377)
insert into Products values('Honor',10,412)
insert into Products values('Coolpad',5,423.23)
insert into Products values('Lenovo',5,332)
insert into Products values('Micromax',1,122.32)
insert into Products values('Oppo',10,229)
insert into Products values('Realme',1,234.22)
insert into Products values('Pixel',5,398)
insert into Products values('Redmi',1,112.65)
insert into Products values('Lava',1,127.43)
insert into Products values('Poco',10,432)
insert into Products values('Sony',1,298.23)
insert into Products values('Infinix',5,164.97)




--Q3)Update all the rates with 10% rate hike
update Products set Rate=Rate*1.1 from Products

--Q4)insert into Products values('Infinix',5,164.97)
delete from Products where ProductId=21


--Q5)Alter the above table and add the following column. 
alter table Products add MarginCode char(1) 
check(MarginCode='A' or MarginCode='B'or MarginCode=null)

--Q6)Update few records to set MarginCode to A and some records MarginCode to B 

update Products set margincode='A' where ProductId=1
update Products set margincode='A' where ProductId<=4
update Products set margincode='B' where ProductId>5
update Products set margincode='B' where ProductId>=6 and ProductId<=11

--Q7)update Products set margincode='A' where ProductId=1

update Products set SetQty=10 where margincode='A' and SetQty=1




--Test Area
select * from Products
delete from Products where 
truncate table Products
