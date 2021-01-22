create database sqlBTTL2
use sqlBTTL2

create table phongban
(	maphong int primary key,
	tenphong nvarchar(max),
	chucnang nvarchar(max)
)

create table nhanvien
(	manhanvien char(10) primary key,
	tennhanvien nvarchar(max),
	ngaysinh date,
	diachi nvarchar(max),
	dienthoai text,
	hinhanh nvarchar(max),
	gioitinh bit,
	maphong int
	constraint fk_nv_pb foreign key (maphong) references phongban(maphong)
)
insert into phongban
values(1,N'Ban GĐ','1')
insert into phongban
values(2,N'Phòng kinh doanh','2')
insert into phongban
values(3,N'Phòng kế toán','2')
insert into phongban
values(4,N'Phòng sản xuất','4')
insert into phongban
values(5,N'Phòng nhân sự','1')
insert into nhanvien
values('NV10',N'Hứa Thị Mai','07/21/1998',N'234 Lê Trọng Tấn','1238973646','Images\obama.jpg',0,4)
insert into nhanvien
values('NV4',N'Hà Thị Dung','05/28/1983',N'21/78 Bùi Xuân Phái','918376153','Images\ketoan.png',0,4)
insert into nhanvien
values('NV7',N'Nguyễn Văn Tuấn','03/23/1985',N'25 Núi Thành','903781462','Images\fpt.jpg',1,4)
insert into nhanvien
values('NV8',N'Trần Thanh Thảo','03/19/1996',N'857/48 Ba Vân','1226784045','Images\giamdoc.jpg',0,4)


delete from nhanvien
delete from phongban

insert into nhanvien
values('NV20',N'Trần Thanh Thảo','03/19/1996',N'857/48 Ba Vân','1226784045','F:\Web\Tuan11\Images\giamdoc.jpg',0,1)
insert into nhanvien
values('NV21',N'Trần Thanh Thảo','03/19/1996',N'857/48 Ba Vân','1226784045','F:\Web\Tuan11\Images\giamdoc.jpg',0,2)
insert into nhanvien
values('NV22',N'Trần Thanh Thảo','03/19/1996',N'857/48 Ba Vân','1226784045','F:\Web\Tuan11\Images\giamdoc.jpg',0,2)
insert into nhanvien
values('NV23',N'Trần Thanh Thảo','03/19/1996',N'857/48 Ba Vân','1226784045','F:\Web\Tuan11\Images\giamdoc.jpg',0,3)
insert into nhanvien
values('NV24',N'Trần Thanh Thảo','03/19/1996',N'857/48 Ba Vân','1226784045','F:\Web\Tuan11\Images\giamdoc.jpg',0,3)
insert into nhanvien
values('NV25',N'Trần Thanh Thảo','03/19/1996',N'857/48 Ba Vân','1226784045','F:\Web\Tuan11\Images\giamdoc.jpg',0,5)