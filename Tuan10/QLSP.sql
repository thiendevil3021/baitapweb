create database QLSP
use QLSP

create table Loai
(	MaLoai char(10) primary key,
	TenLoai nvarchar(100)
)

create table tbl_SanPham
(	MaSanPham char(10),
	TenSP nvarchar(100),
	DonGia money,
	HinhAnh nvarchar(max),
	MoTa nvarchar(100),
	SoLuongTon int,
	ML char(10)
	constraint pk_tblSanPham primary key (MaSanPham),
	constraint fk_sp_l foreign key (ML) references Loai(MaLoai)
)

insert into Loai
values('1',N'Tình yêu')
insert into Loai
values('2',N'Cuộc sống')
insert into Loai
values('3',N'Truyền thuyết')