create database HotelManagementSystem
use HotelManagementSystem



create table Hotel
(
HotelId int not null primary key,/* foreign Key */
HotelName varchar(50),
Description varchar(50),
AvgRatePerNight int,
CityId int,
PhoneNo int,
Addr varchar(50),
Email varchar(50),
Rating int,
Fax varchar(50)
)



create table RoomDetails
(
HotelId int foreign key References Hotel(HotelId),
RoomNo int,
RoomId int primary key,
RoomTypeId int foreign key References RoomType(RoomTypeId),
AvailabilityOfRooms int
)



create table City
(
CityId int primary key,
CityName varchar(50)
)



create table RoomType
(
RoomTypeId int primary key, /* foreign key */
RoomTypeName varchar(50)
)



create table Rates
(
HotelId int foreign key References Hotel(HotelId),
RoomTypeId int foreign key References RoomType(RoomTypeId),
RatePerNight int
)

select * from Hotel
select * from RoomDetails
select * from City
select * from RoomType
select * from Rates