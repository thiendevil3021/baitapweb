CREATE DATABASE QL_TINTUC
USE QL_TINTUC

CREATE TABLE THELOAITIN(
	IDLOAI INT PRIMARY KEY,
	TENTHELOAI NVARCHAR(100)
	
)
CREATE TABLE TINTUC(
IDTIN INT PRIMARY KEY, 
IDLOAI INT,
TIEUDETIN NVARCHAR(100),
NOIDUNGTIN NTEXT,
FOREIGN KEY(IDLOAI) REFERENCES THELOAITIN(IDLOAI)
)


INSERT INTO THELOAITIN
VALUES('1',N'Thể thao'),
('2',N'Kinh tế'),
('3',N'Thế giới')

INSERT INTO TINTUC
VALUES('1','2',N'Khủng hoảng kinh tế trong năm 2012',N'Tình hình khủng hoảng kinh tế năm 2012 được các nhà chuyên gia kinh tế đánh giá'),
('2','1',N'Tranh chấp trên biển Đông',N'Trên các diễn đàn quân sự đang nóng dần về tình hình biển Đông'),
('3','3',N'Tranh chấp đắc cử Tổng thống',N'Trên các diễn đàn quân sự đang nóng dần về tình hình thế giới')