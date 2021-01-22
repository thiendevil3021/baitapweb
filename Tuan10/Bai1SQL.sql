create database Bai1
use Bai1

create table tblThanhVien
(	MaTV char(10) primary key,
	TenThanhVien nvarchar(30),
	MatKhau char(30),
	Email nvarchar(50)
)

create table tblChuDe
(	MaChuDe char(10) primary key,
	TenChuDe nvarchar(50)
)

create table tblTinTuc
(	MaTin char(10) primary key,
	MaCD char(10),
	NgayTao nvarchar,
	NguoiTao char(10)
	constraint fk_tt_cd foreign key (MaCD) references tblChuDe(MaChuDe)
)

create table tblChiTiet
(	MaTin char(10),
	NgayTao date,
	ChiTiet nvarchar(50),
	FileDinhKem nvarchar(50),
	NguoiTao char(10)
	constraint pk_ct primary key (MaTin,NgayTao),
	constraint fk_ct_tt foreign key (MaTin) references tblTinTuc(MaTin)
)

--nhớ là Insert CD03

insert into tblChuDe
values('CD01',N'Lập trình')
insert into tblChuDe
values('CD02',N'Thiết kế')
insert into tblChuDe
values('CD04',N'C++')