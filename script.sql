create database [db_cats]
use [db_cats]
go
create table [Cat]
(
[Id] int primary key not null,
[Name] nvarchar(50) not null,
[Age] int not null,
[Color] nvarchar(50) not null,
[TypeName] nvarchar(50) not null,
constraint CHK_Name check([Name] <> ''),
constraint CHK_Age check([Age] > 0),
constraint CHK_Color check([Color] <> ''),
constraint CHK_TypeName check([TypeName] <> '')
);
go
create table [Adress]
(
[Id] int primary key not null,
[Apt] nvarchar(max) not null,
[Street] nvarchar(max) not null,
[City] nvarchar(max) not null,
[Region] nvarchar(max) not null,
[Country] nvarchar(max) not null,
constraint CHK_Apt check([Apt] <> ''),
constraint CHK_Street check([Street] <> ''),
constraint CHK_City check([City] <> ''),
constraint CHK_Region check([Region] <> ''),
constraint CHK_Country check([Country] <> '')
);
go
create table [Owner]
(
Id int primary key identity(1,1) not null,
[Name] nvarchar(max) not null,
[Surname] nvarchar(max) not null,
[PhoneNumber] nvarchar(max) not null,
[AdressId] int,
[CatId] int,
constraint CHK_Name_Owner check([Name] <> ''),
constraint CHK_Surname_Owner check([Surname] <> ''),
constraint CHK_Phone check([PhoneNumber] <> '' and LEN([PhoneNumber]) > 0 and LEN([PhoneNumber]) < 15),
constraint FK_Adress foreign key ([AdressId]) references [Adress]([Id]),
constraint FK_Cats foreign key ([CatId]) references [Cat]([Id]),
);

drop table [Cat]
drop table [Adress]
drop table [Owner]
drop database [db_cats]