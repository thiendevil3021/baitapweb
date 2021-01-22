create database sqlBTTL1
use sqlBTTL1

create table theloaitin
(	idloai int primary key,
	tentheloai nvarchar(100)
)

create table tintuc
(	idtin int,
	idloai int,
	tieudetin nvarchar(100),
	noidungtin nText,
	constraint pk_tt primary key (idtin),
	constraint fk_tt_tlt foreign key (idloai) references theloaitin(idloai)
)

insert into theloaitin
values(1,N'Thể thao')
insert into theloaitin
values(2,N'Kinh tế')
insert into theloaitin
values(3,N'Thế giới')

insert into tintuc
values(1,2,N'Khủng hoảng kinh tế trong năm 2012',N'Tình hình khủng hoảng kinh tế năm 2012 được các chuyên gia kinh tế đánh giá..')
insert into tintuc
values(2,1,N'Tranh chấp trên biển đông',N'Trên các diễn đàn quân sự đang nóng dần về tình hình biển đông...')