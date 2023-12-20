Create database ql_vattu;
use ql_vattu;

create table vattu(
mavt int primary key auto_increment,
tenvt varchar(15) not null unique
);
create table nhacc(
mancc char(5) primary key,
tenncc varchar(15) not null unique,
diachi text,
sdt int
);
create table DonDH(
soDH int primary key auto_increment,
ngayDH date
);
create table phieu_nhap(
soPN int primary key auto_increment,
ngay_nhap date
);
create table phieu_xuat(
soPX int primary key auto_increment,
ngay_xuat date
);
create table chitiet_phieuxuat(
soPX int,
mavt int,
sl_xuat int,
dongia_xuat decimal(5,2),
foreign key (soPX) references phieu_xuat(soPX),
foreign key (mavt) references vattu(mavt),
primary key(soPX,mavt)
);
create table chitiet_phieunhap(
soPN int,
mavt int,
sl_nhap int,
dongia_nhap decimal(5,2),
foreign key (soPN) references phieu_nhap(soPN),
foreign key (mavt) references vattu(mavt),
primary key(soPN,mavt)
);
create table chitiet_dondh(
mavt int,
soDH int,
foreign key (mavt) references vattu(mavt),
foreign key (soDH) references DonDH(soDH),
primary key(soDH,mavt)
);
alter table nhacc add constraint unique_sdt unique(sdt);
alter table DonDH modify column mancc char(5) ;
alter table DonDH add foreign key (mancc) references nhacc(mancc);