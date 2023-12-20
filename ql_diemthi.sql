create database ql_diemthi;
use ql_diemthi;

create table Hoc_Sinh(
MaHS char(5) primary key not null,
TenHS varchar(15) unique not null,
NS date,
Lop varchar(10),
GT varchar(10)
);
create table Giao_Vien(
MaGV char(5) primary key not null,
TenGV varchar(20) not null,
SDT int
);
create table Mon_Hoc(
MaMH int auto_increment primary key not null,
TenMH varchar(20) not null unique,
MaGV char(5),
foreign key (MaGV) references Giao_Vien(MaGV)
);
create table Bang_Diem(
MaHS char(5),
MaMH int,
Diem_Thi decimal(5,2),
Ngay_KT date,
foreign key (MaHS) references Hoc_Sinh(MaHS),
foreign key (MaMH) references Mon_Hoc(MaMH)
);