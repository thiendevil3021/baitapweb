create database sqlBTVN2
use sqlBTVN2

create table theloaitin
(	idloai int primary key,
	tentheloai nvarchar(max)
)

create table tintuc
(	idtin char(10) primary key,
	idloai int,
	tieude nvarchar(max),
	noidungtomtat nvarchar(max),
	noidung nvarchar(max),
	ngaydangtin date,
	hinhanh nvarchar(max),
	chuthichhinh nvarchar(max)
	constraint fk_tt_tlt foreign key (idloai) references theloaitin (idloai)
)


insert into theloaitin
values(1,N'Thể thao')
insert into theloaitin
values(2,N'Kinh tế')
insert into theloaitin
values(3,N'Thế giới')

insert into tintuc
values('KT1',2,N'Thứ tự ưu tiên cấp giấy chứng nhận xuất khẩu gạo',
N'Bộ công thương vừa ban hành tài liệu về triển khai quy hoạch thương nhân kinh doanh xuất khẩu gạo. Theo đó, công bố thứ tự ưu tiên, các quan điểm và hướng dẫn cụ thể việc triển khai.',
N'Có 3 tiêu chí để được cấp giấy chứng nhận, theo đó, kho chứa, cơ sở xay, xát thóc, gạo để đáp ứng điều kiện kinh doanh xuất khẩu gạo phải nằm trên địa bàn các địa phương trong quy hoạch và ưu tiên thương nhân có vùng nguyên liệu hoặc thực hiện hợp tác, đặt hàng, liên kết với bộ nông dân trồng lúa',
'1/1/2007','~\upload\kt1.jpg',N'Thu hoạch lúa tại xã Thiện Mỹ, huyện Trà Ôn, Vĩnh Long')
insert into tintuc
values('KT2',2,N'Kéo hàng không quốc tế đến sân bay',
N'Sáng 10-9, tại "Hội nghị xúc tiến quốc tế khai thác bay đến các cảng hàng không Phú Bài, Cam Ranh, Liên Khương, Cần Thơ và Phú Quốc",nhiều đại biểu cho rằng đay là những...',
N'Phát biểu tại hội nghị, ông Võ Huy Cường, phó cục trưởng cục Hàng không VN, cho biết cả năm cảng hàng không này đều đạt tiêu chuẩn đón các máy bay...',
N'2/1/2007','~\upload\kt2.jpg',N'Khách du lịch tại sân bay Phú Quốc...')