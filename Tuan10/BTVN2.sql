CREATE DATABASE BTVN2
USE BTVN2

CREATE TABLE tbl_ThanhVien(
	MaTV char(10) primary key,
	TenThanhVien nvarchar(50),
	MatKhau varchar(50),
	Email char(50),
	HinhAnh nvarchar(max),
)

CREATE TABLE tblChuDe(
	MaChuDe char(10) primary key,
	TenChuDe nvarchar(50)
)

CREATE TABLE tblTinTuc(
	MaTin char(10) primary key,
	MaCD char(10),
	NgayTao date,
	NguoiTao char(10),
	foreign key(NguoiTao) references tbl_ThanhVien(MaTV),
	foreign key(MaCD) references tblChuDe(MaChuDe)
)

CREATE TABLE tbl_ChiTiet(
	MaTin char(10),
	NgayTao date,
	ChiTiet nvarchar(max),
	FileDinhKem varchar(max),
	NguoiTao char(10),
	primary key(Matin, NgayTao),
	foreign key(MaTin) references tblTinTuc(MaTin)
)



