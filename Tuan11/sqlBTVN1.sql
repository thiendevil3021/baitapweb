create database sqlBTVN1
use sqlBTVN1

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
	dienthoai char(15),
	gioitinh bit,
	maphong int
	constraint fk_nv_pb foreign key (maphong) references phongban (maphong)
)

drop table nhanvien

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
values('3',N'Nguyễn Văn Ba','2/5/1950',N'32 An Phú Đông','33445566',1,3)
insert into nhanvien
values('7',N'Nguyễn Văn Tuấn','7/6/1950',N'43 Trần Quang Khải','77889900',1,3)
insert into nhanvien
values('9',N'Hà Qúy Mùi','5/5/1950',N'87 Nam Lân','99001122',0,3)