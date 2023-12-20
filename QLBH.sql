create database QLBH;
use QLBH;
create table customer(
	cID char(5) primary key,
    cName varchar(50) not null,
    cAge int
);
create table oder(
	oID char(5) primary key,
    cID char(5),
    foreign key (cID) references customer(cID),
    oDate date,
    oTotalPrice float
);
create table product(
	pID char(5) primary key,
    pName varchar(50) not null,
    pPrice float
);
create table orderdetail(
	odQTY varchar(20) not null,
    oID char(5),
    pID char(5),
    foreign key (oID) references oder(oID),
    foreign key (pID) references product(pID),
    primary key (oID, pID)
);