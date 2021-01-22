CREATE DATABASE QLKH
USE QLKH
GO

CREATE TABLE KHACHHANG
(
	TENKH nvarchar(30),
	Email char(30),
	MatKhau nvarchar(30),
	GioiTinh nvarchar(30),
	CongViec nvarchar(30),
	constraint pk_kh primary key (TENKH)
)

CREATE TABLE THONGTIN
(
	TenKH nvarchar(30) not null,
	NgheNghiep nvarchar(30),
	KinhNghiem nvarchar(30),
	constraint pk_tt primary key (TenKH)
)

insert into KHACHHANG
values
(N'Trần Văn A', 'a@gmail.com', 'TP.HCM', N'Nam', N'Giáo Viên' ),
(N'Trần Văn B', 'b@gmail.com', 'Hà Nội', N'Nam', N'Ca Sĩ' ),
(N'Trần Thị C', 'c@gmail.com', 'Vũng Tàu', N'Nữ', N'Diễn viên' ),
(N'Trần Văn D', 'd@gmail.com', 'Bến Tre', N'Nam', N'Nhạc sĩ' )

insert into THONGTIN
values
(N'Trần Văn A', 'System', '7 năm'),
(N'Trần Văn B', 'IT', '3 năm'),
(N'Nguyễn Thị C', 'Internet', '4 năm'),
(N'Trần Văn D', 'System', '1 năm')