create database ql_banhang;
use ql_banhang;

create table customer(
cID char(5) primary key not null,
cName varchar(15) not null unique,
cAge int 
);
create table or_der(
oID int primary key auto_increment ,
cID char(5),
oDate date,
oToalPrice decimal (5,2),
foreign key (cID) references customer(cID)
);
create table product(
pID int primary key auto_increment,
pName varchar(20) not null,
pPrice decimal(5,2)
);
create table order_detail(
oID int,
pID int,
odQTY text,
foreign key (oID) references or_der(oID),
foreign key (pID) references product(pID)
)