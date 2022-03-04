create database HotelManagementSystemDb
use HotelManagementSystemDb



create table Hotel (
HotelId int not null primary key,
HotelName varchar(50) not null ,
[Description] varchar(50) not null,
AvgRatePerNight int not null,
CityId int not null foreign key references City(CityId),
PhoneNo bigint not null,
Addr varchar(50) not null,
Email varchar(50) not null,
Rating int not null,
Fax varchar(50) not null
)



--RoomDetails Table Creation
create table RoomDetails(
HotelId int not null foreign key references Hotel(HotelId),
RoomNo int not null,
RoomId int primary key not null,
RoomTypeId int not null foreign key references RoomType(RoomTypeId),
AvailibilityOfRooms int not null
)



--City Table Creartion
create table City(
CityId int Primary key not null,
CityName varchar(50) not null,
)



--RoomType Table Creation
create table RoomType(
RoomTypeId int primary key not null ,
RoomTypeName varchar(50)
)



--Rates Table Creation



create table Rates(
HotelId int foreign key references Hotel(HotelId) not null,
RoomTypeId int foreign key references RoomType(RoomTypeId) not null,
RatePerNight int
)


--into hotels
insert into Hotel values (1,'Grand Hyatt','Grand Hyatt Mumbai is a luxury 5 star hotel', 5600,1,9239393949, 'Mumbai','hotels@hyatt.com', 4, '120110')
insert into Hotel values(2,'Taj','Taj Bangalore is a luxury 7 star hotel',7600,2,9239344773, 'Bangalore','hotels@taj.com', 5, '220300')
insert into Hotel values(3,'Raddison Blue','Raddison Blue Pune is a luxury 5 star hotel',5000, 3 ,9239393949, 'Pune','hotels@raddisobblue.com', 5, '978324')
insert into Hotel values(4,'Taj','Taj Bangalore is a luxury 7 star hotel',8600,3,9444555653, 'Pune','hotels@taj.com', 5, '223311')
insert into Hotel values(5,'Raddison Blue','Raddison Blue Pune is a luxury 5 star hotel',5900,2, 7773332452, 'Bangalore','hotels@raddisobblue.com', 5, '100007')



--into city
insert into City values (1,'Mumbai')
insert into City values (2,'Bangalore')
insert into City values (3,'Pune')



--into Room Deatils
insert into RoomDetails values (1,501,1001,1,12)
insert into RoomDetails values (1,202,0981,2,2)
insert into RoomDetails values (1,321,881,3,12)
insert into RoomDetails values (1,651,4301,4,12)



insert into RoomDetails values (2,444,4393,1,2)
insert into RoomDetails values (2,343,3884,2,24)
insert into RoomDetails values (2,555,5055,3,7)
insert into RoomDetails values (2,678,6076,4,0)



insert into RoomDetails values (3,433,4201,1,5)
insert into RoomDetails values (3,599,5101,2,32)
insert into RoomDetails values (3,677,6551,3,26)
insert into RoomDetails values (3,201,2301,4,11)



insert into RoomDetails values (4,231,2132,1,3)
insert into RoomDetails values (4,131,1111,2,4)
insert into RoomDetails values (4,451,4839,3,15)
insert into RoomDetails values (4,651,6049,4,121)



insert into RoomDetails values (5,31,3251,2,12)
insert into RoomDetails values (5,651,6656,2,12)
insert into RoomDetails values (5,54,5859,2,12)
insert into RoomDetails values (5,575,5484,2,12)



--into RoomType
insert into RoomType values (1,'President Suite')
insert into RoomType values (2,'Suite')
insert into RoomType values (3,'Deluxe')
insert into RoomType values (4,'Non-Ac')



--into Rates
insert into Rates values (1,1,10000)
insert into Rates values (1,2,8000)
insert into Rates values (1,3,4000)
insert into Rates values (1,4,1500)



insert into Rates values (2,1,9000)
insert into Rates values (2,2,7959)
insert into Rates values (2,3,4930)
insert into Rates values (2,4,2039)



insert into Rates values (3,1,10392)
insert into Rates values (3,2,8003)
insert into Rates values (3,3,6050)
insert into Rates values (3,4,2030)



insert into Rates values (4,1,11093)
insert into Rates values (4,2,7404)
insert into Rates values (4,3,5060)
insert into Rates values (4,4,2294)



insert into Rates values (5,1,9033)
insert into Rates values (5,2,7055)
insert into Rates values (5,3,4893)
insert into Rates values (5,4,2458)



Select * from Hotel
Select * from RoomDetails
Select * from City
Select * from RoomType
Select * from Rates