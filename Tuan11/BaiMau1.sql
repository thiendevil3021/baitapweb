create database BAIMAU1
use BAIMAU1

create table DSKH
(	makh char(10),
	hotenkh nvarchar(50),
	diachikh nvarchar(max),
	dienthoaikh char(11),
	ngaysinh date,
	gioitinh bit
	constraint pk_dskh primary key (makh)
)

insert into DSKH
values('1',N'Phạm Văn Khoa',N'Trần Huy Lệnh','0918062755','7/8/1962',1)
insert into DSKH
values('2',N'Nguyễn Tiến Luân',N'Quận 6','Chua co','7/15/1974',1)
insert into DSKH
values('3',N'Đặng Quốc Hòa',N'Sư Vạn Hạnh','Chua co','7/24/1965',1)
insert into DSKH
values('4',N'Ngô Ngọc Ngân',N'Khu chung cư','0918544699','8/15/1946',1)
insert into DSKH
values('5',N'Đỗ Quỳnh Hương',N'Cống Quỳnh','0908123456','3/24/1982',0)
insert into DSKH
values('6',N'Trần Thị Thu Trang',N'Nơ Trang Long','Chua co','8/5/1962',0)