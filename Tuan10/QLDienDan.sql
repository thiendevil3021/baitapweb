CREATE DATABASE QlDienDan
USE QlDienDan

CREATE TABLE tbl_ThanhVien(
	MaTV char(10) primary key,
	TenThanhVien nvarchar(50),
	MatKhau varchar(50),
	Email char(50)
)

CREATE TABLE tblTinTuc(
	MaTin char(10) primary key,
	MaCD char(10),
	NgayTao date,
	NguoiTao char(10),
)

CREATE TABLE tbl_ChiTiet(
	MaTin char(10),
	NgayTao date,
	ChiTiet nvarchar(max),
	FileDinhKem varchar(max),
	NguoiTao char(10),
	primary key(Matin, NgayTao)
)

CREATE TABLE tblChuDe(
	MaChuDe char(10) primary key,
	TenChuDe nvarchar(50)
)

insert into tblChuDe
values('CD01','Web')
insert into tblChuDe
values('CD02','Java')
insert into tblChuDe
values('CD03','C++')