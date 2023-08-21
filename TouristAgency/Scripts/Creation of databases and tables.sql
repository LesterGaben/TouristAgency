--------------DATABASE CREATING----------------------
CREATE DATABASE TouristAgency;
GO
--------------TABLES CREATING----------------------
USE TouristAgency;
Create Table Client 
(  Id int Primary Key Identity not null,
  FullName nvarchar(100) not null,
  Email nvarchar(100) Unique null,
  PhoneNumber nvarchar(100) Unique not null,
  Address nvarchar(100) null
)

Create Table Invoice
(  Id int Primary Key Identity not null,
  ClientId int not null,
  EmployeeId int not null,
  IsPaid bit not null,
  Amount money not null,
  Date date not null
)

Create Table Employee
(  Id int Primary Key Identity not null,
  PositionId int not null,
  FullName nvarchar(100) not null,
  PhoneNumber nvarchar(100) Unique not null,
  Address nvarchar(100) not null
)

Create Table Position
(  Id int Primary Key Identity not null,
  Name nvarchar(100) not null,
  Salary money not null
)

Create Table [Invoice/Tour] 
(  InvoiceId int not null,
  TourId int not null,
  PRIMARY KEY (InvoiceId, TourId)
)

Create Table Tour
(  Id int Primary Key Identity not null,
  HotelId int not null,
  TransportationId int not null,
  DurationInDays int not null
)

Create Table Transportation
(  Id int Primary Key Identity not null,
  TransportationCompanyName nvarchar(100) not null,
  TransportationType nvarchar(100) not null,
  Amount money not null,
  Class nvarchar(100) not null
)

Create Table Hotel
(  Id int Primary Key Identity not null,
  CityId int not null,
  NumOfStars int not null,
  Name nvarchar(100) not null,
  Address nvarchar(100) not null
)

Create Table [Hotel/RoomType]
(  HotelId int not null,
  RoomTypeId int not null,
  DayPrice money not null,
  PRIMARY KEY (HotelId, RoomTypeId)
)

Create Table RoomType
(  Id int Primary Key Identity not null,
  Name nvarchar(100) not null,
  NumOfRooms int not null
)

Create Table City
(  Id int Primary Key Identity not null,
  ClimateId int not null,
  Name nvarchar(100) not null,
  Country nvarchar(100) not null
)

Create Table Climate
(  Id int Primary Key Identity not null,
  Name nvarchar(100) not null,
  AvgTemperature nvarchar(10) not null
)

GO
---------------------------------------FOREIGN KEYS ADDING ----------------------------------------------------------------
Alter Table Invoice Add Constraint FK_Invoice_City FOREIGN KEY (ClientId) REFERENCES Client(Id)
Alter Table Invoice Add Constraint FK_Incoice_Employee FOREIGN KEY (EmployeeId) REFERENCES Employee(Id)
Alter Table Employee Add Constraint FK_Employee_Position FOREIGN KEY (PositionId) REFERENCES Position(Id)
Alter Table [Invoice/Tour] Add Constraint FK_InvoiceTour_Invoice FOREIGN KEY (InvoiceId) REFERENCES Invoice(Id)
Alter Table [Invoice/Tour] Add Constraint FK_InvoiceTour_Tour FOREIGN KEY (TourId) REFERENCES Tour(Id)
Alter Table Tour Add Constraint FK_Tour_Transportation FOREIGN KEY (TransportationId) REFERENCES Transportation(Id)
Alter Table Tour Add Constraint FK_Tour_Hotel FOREIGN KEY (HotelId) REFERENCES Hotel(Id)
Alter Table Hotel Add Constraint FK_Hotel_City FOREIGN KEY (CityId) REFERENCES City(Id)
Alter Table [Hotel/RoomType] Add Constraint FK_HotelRoomType_Hotel FOREIGN KEY (HotelId) REFERENCES Hotel(Id)
Alter Table [Hotel/RoomType] Add Constraint FK_HotelRoomType_RoomType FOREIGN KEY (RoomTypeId) REFERENCES RoomType(Id)
Alter Table City Add Constraint FK_City_Climate FOREIGN KEY (ClimateId) REFERENCES Climate(Id)
---------------------------------------CHECK KEYS ADDING ----------------------------------------------------------------
Alter Table Position Add Constraint CK_Position_Salary CHECK (Salary >= 0)
Alter Table Tour Add Constraint CK_Tour_DurationInDays CHECK (DurationInDays >= 1)
Alter Table Hotel Add Constraint CK_Hotel_NumOfStars CHECK (NumOfStars BETWEEN 1 and 5)
Alter Table RoomType Add Constraint CK_RoomType_NumOfRooms CHECK (NumOfRooms >= 1)