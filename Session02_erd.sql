create database session02_erd;
use session02_erd;
create table VATTU(
	MaVTu char(5) primary key,
	TenVTu varchar(50) not null
);
create table PHIEUXUAT(
	SoPX char(5) primary key,
    NgayXuat int
);
create table VATTU_PHIEUXUAT(
	DGXuat float,
    SLXuat int,
	MaVTu char(5),
    SoPX char(5),
    foreign key (MaVTu) references VATTU(MaVTu),
    foreign key (SoPX) references PHIEUXUAT(SoPX),
    primary key(MaVTu, SoPX)
);
create table PHIEUNHAP(
	SoPN char(5) primary key,
    NgayNhap int
);
create table VATTU_PHIEUNHAP(
	DGNhap float,
    SLNhap int,
    MaVTu char(5),
    SoPN char(5),
    foreign key (MaVTu) references VATTU(MaVTu),
    foreign key (SoPN) references PHIEUNHAP(SoPN),
	primary key (MaVTu, SoPN)
);
create table NHACC(
	MaNCC char(5) primary key,
    TenNCC varchar(50) not null,
    DiaChi varchar(50) not null,
    SDT varchar(11) check(SDT=11)
);
create table DONDH(
	SoDH char(5) primary key,
    NgayDH int,
    MaNCC char(5),
    foreign key (MaNCC) references NHACC(MaNCC)
);
create table CHITIETDATDON(
	MaVTu char(5),
    SoDH char(5),
    foreign key (MaVTu) references VATTU(MaVTu),
    foreign key (SoDH) references DONDH(SoDH),
    primary key (MaVTu, SoDH)
);