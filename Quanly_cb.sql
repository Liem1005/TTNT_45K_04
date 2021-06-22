create database Quanly_cb
use Quanly_cb
create table CHUYENBAY(MaCB char(5) not null primary key, GaDi varchar(50) not null,
GaDen varchar(50) not null, DoDai int not null, GioDi time not null, GioDen time not null, ChiPhi int not null)
--
select * from CHUYENBAY
create table MAYBAY(MaMB int not null , LoaiMB varchar(50) not null, TamBay int not null,
primary key(MaMB,LoaiMB))
--
select * from MAYBAY
create table NHANVIEN(MaNV char(9) not null primary key, Ten varchar(50) not null, LoaiNV varchar(50) not null, Luong int not null)
--
select * from MAYBAY
create table LICHBAY(NgayDi date not null primary key, MaCB char(5) not null, LoaiMB varchar(50) not null, MaMB int not null, MaNV char(9) not null,
constraint FK_CHUYENBAY foreign key(MaCB) references CHUYENBAY(MaCB),
constraint FK_MAYBAY foreign key(MaMB,LoaiMB) references MAYBAY(MaMB,LoaiMB),
constraint FK_NHANVIEN foreign key(MaNV) references NHANVIEN(MaNV))
--
--
select * from NHANVIEN

Insert into CHUYENBAY(MaCB,GaDi,GaDen,DoDai,GioDi,GioDen,ChiPhi)
Values ('VN431','SGN','DAD',3693,'5:55','6:55',236),
('VN320','HAN','DAD',2798,'6:00','7:10',221),
('VN464','HPH','DAD',2001,'7:20','8:05',225),
('VN547','SGN','HAN',4170,'10:30','14:20',262)
--
Insert into MAYBAY(MaMB,LoaiMB,TamBay)
Values (747,'Boeing 747-400',13488),
(737,'Boeing 737-800',5413),(340,'Airbus A340-300',11392),(757,'Boeing 757-300',6416)
--
Insert into NHANVIEN(MaNV,Ten,LoaiNV,Luong)
Values ('15684','Nguyen Vu An Nhien','Tiep Vien',120433),
('15123','Nguyen Thi Minh Uyen','Phi Cong',205187),
('35649','Huynh Thi Ha','Tiep Vien',212456), ('75664','Tran Ngoc Son','Phi Cong',26548)
--
Insert into LICHBAY(NgayDi,MaCB,LoaiMB,MaMB,MaNV)
Values ('01-25-2019','VN431','Boeing 747-400',747,'15684'),
('10-28-2019','VN320','Boeing 737-800',737,'15123'),
('10-29-2019','VN464','Airbus A340-300',340,'35649'),('2019-4-5','VN547','Boeing 757-300',757,'75664')
--
