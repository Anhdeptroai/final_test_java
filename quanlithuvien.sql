USE [master]
GO
CREATE DATABASE quanlithuvien
GO
CREATE DATABASE quanlithuvien
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quanlithuvien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA|\quanlithuvien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'quanlithuvien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\quanlithuvien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HRMSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC quanlithuvien.[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
USE quanlithuvien
GO
ALTER DATABASE quanlithuvien SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE quanlithuvien SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE quanlithuvien SET ANSI_NULLS OFF 
GO
ALTER DATABASE quanlithuvien SET ANSI_PADDING OFF 
GO
ALTER DATABASE quanlithuvien SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE quanlithuvien SET ARITHABORT OFF 
GO
ALTER DATABASE quanlithuvien SET AUTO_CLOSE ON 
GO
ALTER DATABASE quanlithuvien SET AUTO_SHRINK OFF 
GO
ALTER DATABASE quanlithuvien SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE quanlithuvien SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE quanlithuvien SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE quanlithuvien SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE quanlithuvien SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE quanlithuvien SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE quanlithuvien SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE quanlithuvien SET  ENABLE_BROKER 
GO
ALTER DATABASE quanlithuvien SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE quanlithuvien SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE quanlithuvien SET TRUSTWORTHY OFF 
GO
ALTER DATABASE quanlithuvien SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE quanlithuvien SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE quanlithuvien SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE quanlithuvien SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE quanlithuvien SET RECOVERY SIMPLE 
GO
ALTER DATABASE quanlithuvien SET  MULTI_USER 
GO
ALTER DATABASE quanlithuvien SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE quanlithuvien SET DB_CHAINING OFF 
GO
ALTER DATABASE quanlithuvien SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE quanlithuvien SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE quanlithuvien SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE quanlithuvien SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE quanlithuvien SET QUERY_STORE = OFF
GO
USE quanlithuvien
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*thông tin tài khoản*/
create table taikhoan
(
	username nvarchar(30),
	passworduser nvarchar(30),
	primary key (username)
)
insert into taikhoan (username, passworduser)
values
('trunganh','123456'),
('ducviet','123456'),
('khanhdoan','123456'),
('myuyen','123456'),
('thanhthao','123456');

/*thông tin của bảng sách*/ 
create table tacgia
(	
	matacgia int not null,
	tentacgia nvarchar(30),
	primary key (matacgia)
)
INSERT INTO tacgia (tentacgia, matacgia)
VALUES 
(N'Nguyễn Du', 1),
(N'Tố Hữu', 2),
(N'Hồ Chí Minh', 3),
(N'Nam Cao', 4),
(N'Nguyễn Ngọc Tư', 5),
(N'Nguyễn Nhật Ánh', 6),
(N'Paulo Coelho', 7),
(N'J.K. Rowling', 8),
(N'Stephen King', 9),
(N'Harper Lee', 10),
(N'Oscar Wilde', 11),
(N'Mark Twain', 12),
(N'Charles Dickens', 13),
(N'Leo Tolstoy', 14),
(N'Fyodor Dostoevsky', 15),
(N'Albert Camus', 16),
(N'Gabriel García Márquez', 17),
(N'Ernest Hemingway', 18),
(N'Jack Kerouac', 19),
(N'Haruki Murakami', 20);
create table theloai
(
	matheloai int not null,
	tentheloai nvarchar(50),
	primary key (matheloai)
)
INSERT INTO theloai (tentheloai, matheloai)
VALUES
(N'Văn học Việt Nam', 1),
(N'Văn học nước ngoài', 2),
(N'Sách thiếu nhi', 3),
(N'Sách giáo dục', 4),
(N'Sách kinh tế', 5),
(N'Sách kỹ năng', 6),
(N'Sách khoa học', 7),
(N'Sách lịch sử', 8),
(N'Sách địa lý', 9),
(N'Sách nghệ thuật', 10),
(N'Sách y học', 11),
(N'Sách công nghệ', 12),
(N'Sách tâm lý', 13),
(N'Sách tôn giáo', 14),
(N'Sách chính trị', 15),
(N'Sách ngoại ngữ', 16);
create table nhaxuatban 
(
	manxb int not null,
	tennxb nvarchar(50),
	primary key (manxb)
)
INSERT INTO nhaxuatban (tennxb, manxb)
VALUES
(N'Nhà xuất bản Giáo dục', 1),
(N'Nhà xuất bản Trẻ', 2),
(N'Nhà xuất bản Kim Đồng', 3),
(N'Nhà xuất bản Văn học', 4),
(N'Nhà xuất bản Hội Nhà văn Việt Nam', 5),
(N'Nhà xuất bản Tổng hợp TP. Hồ Chí Minh', 6),
(N'Nhà xuất bản Tổng hợp Hà Nội', 7),
(N'Nhà xuất bản Đại học Quốc gia Hà Nội', 8),
(N'Nhà xuất bản Đại học Quốc gia TP. Hồ Chí Minh', 9),
(N'Nhà xuất bản Công thương', 10),
(N'Nhà xuất bản Nông nghiệp', 11),
(N'Nhà xuất bản Xây dựng', 12),
(N'Nhà xuất bản Giao thông', 13),
(N'Nhà xuất bản Y học', 14),
(N'Nhà xuất bản Thống kê', 15),
(N'Nhà xuất bản Lao động', 16),
(N'Nhà xuất bản Văn hóa - Dân tộc', 17),
(N'Nhà xuất bản Mỹ thuật', 18),
(N'Nhà xuất bản Âm nhạc', 19),
(N'Nhà xuất bản Chính trị Quốc gia', 20);
go 
create table sach 
(
	masach int not null,
	tensach nvarchar(50) not null,
	gia int not null,
	namxuatban date null,
	soluong int null,
	manxb int not null,
	matheloai int not null,
	matacgia int not null,
	manhanvien int not null,
	primary key (masach)
)
INSERT INTO sach (masach, tensach, gia, namxuatban, soluong, manxb, matheloai, matacgia, manhanvien)
VALUES
(1, N'To Kill a Mockingbird', 100000, '1960-07-11', 100, 1, 2, 5, 4),
(2, N'The Great Gatsby', 200000, '1925-04-10', 50, 2, 4, 2, 5),
(3, N'1984', 300000, '1949-06-08', 25, 1, 7, 3, 7),
(4, N'The Lord of the Rings', 400000, '1954-07-29', 75,14, 5, 6, 7),
(5, N'Harry Potter and the Sorcerer''s Stone', 500000, '1997-06-26', 100, 5, 2, 16, 7),
(6, N'The Hunger Games', 600000, '2008-09-21', 50, 6, 7, 2, 9),
(7, N'The Fault in Our Stars', 700000, '2012-01-10', 25, 17, 8, 9, 4),
(8, N'The Martian', 800000, '2011-04-10', 75, 8, 9, 5, 1),
(9, N'The Girl with the Dragon Tattoo', 900000, '2005-09-02', 100, 9, 1, 1, 9),
(10, N'Gone Girl', 1000000, '2012-06-02', 50, 13, 8, 7, 1),
(11, N'The Da Vinci Code', 1100000, '2003-03-18', 25, 11, 5, 8, 2),
(12, N'The Hitchhiker s Guide to the Galaxy', 1200000, '1979-04-12', 75, 1, 13, 3, 10),
(13, N'The Catcher in the Rye', 1300000, '1951-07-16', 100, 2, 1, 9, 4),
(14, N'Pride and Prejudice', 1400000, '1813-01-28', 50, 14, 15, 10, 6),
(15, N'The Adventures of Sherlock Holmes', 1500000, '1892-05-25', 14, 3, 12, 11, 3);
go
/* thông tin nhân viên */
create table nhanvien
(	
	manhanvien int not null,
	cmnd int null,
	sdt int null,
	email nvarchar(30) null,
	ten nvarchar(30) not null,
	ngaysinh date not null,
	primary key (manhanvien)
)
INSERT INTO nhanvien (manhanvien, ten, ngaysinh)
VALUES
(1, N'Nguyễn Văn A', '1990-01-01'),
(2, N'Trần Thị B', '1991-02-02'),
(3, N'Lê Văn C', '1992-03-03'),
(4, N'Đinh Thị D', '1993-04-04'),
(5, N'Phạm Văn E', '1994-05-05'),
(6, N'Trương Thị F', '1995-06-06'),
(7, N'Vũ Văn G', '1996-07-07'),
(8, N'Đỗ Thị H', '1997-08-08'),
(9, N'Nguyễn Văn I', '1998-09-09'),
(10, N'Trần Thị J', '1999-10-10');
go
/*thông tin độc giả*/
create table docgia
(
	madocgia int not null,
	tendocgia nvarchar(40),
	email nvarchar(30),
	sdt bigint,
	gioitinh char(1),
	cccd bigint ,
	mathe int not null,
	primary key (madocgia)
)
INSERT INTO docgia (madocgia, tendocgia, email, sdt, gioitinh, cccd, mathe)
VALUES
(1, N'Nguyễn Văn A ', N'nguyenvana@gmail.com', 0123456789, 'M', 1234567890, 1),
(2, N'Trần Thị B', N'tranthib@gmail.com', 0987654321, 'F', 9876543210, 3),
(3, N'Lê Văn C', N'levanc@gmail.com', 01234567890, 'M', 1234567891, 5),
(4, N'Đinh Thị D', N'dinhthid@gmail.com', 09876543210, 'F', 9876543211, 8),
(5, N'Phạm Văn E', N'phamvane@gmail.com', 01234567891, 'M', 1234567892, 2),
(6, N'Trương Thị F', N'truongthif@gmail.com', 09876543211, 'F', 9876543212, 4),
(7, N'Vũ Văn G', N'vuvang@gmail.com', 01234567892, 'M', 1234567893, 8),
(8, N'Đỗ Thị H', N'dothih@gmail.com', 09876543212, 'F', 9876543213, 2),
(9, N'Nguyễn Văn I', N'nguyenvani@gmail.com', 01234567893, 'M', 1234567894, 3),
(10, N'Trần Thị J', N'tranthij@gmail.com', 09876543213, 'F', 9876543214, 4),
(11, N'Lê Văn K', N'levanc@gmail.com', 01234567894, 'M', 1234567895, 7),
(12, N'Đinh Thị L', N'dinhthid@gmail.com', 09876543214, 'F', 9876543215, 10),
(13, N'Phạm Văn M', N'phamvane@gmail.com', 01234567895, 'M', 1234567896, 11),
(14, N'Trương Thị N', N'truongthif@gmail.com', 09876543215, 'F', 9876543216, 13),
(15, N'Vũ Văn O', N'vuvang@gmail.com', 01234567896, 'M', 1234567897, 14),
(16, N'Đỗ Thị P', N'dothih@gmail.com', 09876543216, 'F', 9876543217, 2);
go
/* thông tin phiếu mượn */
create table phieumuon
(
	maphieumuon int not null,
	ngaymuon date not null,
	ngaytra date not null,
	mathe int not null,
	manhanvien int not null,
	primary key (maphieumuon)
)
INSERT INTO phieumuon (maphieumuon,ngaymuon, ngaytra, mathe, manhanvien)
VALUES
    (1,'2023-10-23', '2023-10-30', 1, 1),
    (2,'2023-10-23', '2023-10-30', 3, 2),
    (3,'2023-10-24', '2023-11-01', 8, 6),
    (4,'2023-10-24', '2023-11-01', 12, 2),
    (5,'2023-10-25', '2023-11-02', 9, 3),
    (6,'2023-10-25', '2023-11-02', 4, 6),
    (7,'2023-10-26', '2023-11-03', 3, 2),
    (8,'2023-10-26', '2023-11-03', 2, 10),
    (9,'2023-10-27', '2023-11-04', 11, 4),
    (10,'2023-10-27', '2023-11-04', 10, 2),
    (11,'2023-10-28', '2023-11-05', 6, 1),
    (12,'2023-10-28', '2023-11-05', 5, 6),
    (13,'2023-10-29', '2023-11-06', 7, 7),
    (14,'2023-10-29', '2023-11-06', 5, 8),
    (15,'2023-10-30', '2023-11-07', 4, 2),
    (16,'2023-10-30', '2023-11-07', 1, 9);
GO
create table chitietphieumuon
(
	maphieumuon int not null,
	masach int not null,
	soluong int 
)
INSERT INTO chitietphieumuon (maphieumuon, masach, soluong)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 6, 3),
    (4, 5, 1),
    (5, 11, 1),
    (6, 15, 2),
    (7, 12, 3),
    (8, 11, 4),
    (9, 12, 4),
    (10, 13, 3),
    (11, 2, 2),
    (12, 5, 2),
    (13, 8, 1),
    (14, 3, 1),
    (15, 4, 2);
go
/* thông tin phiếu trả */
create table phieutra
(
	maphieutra int not null,
	manhanvien int not null,
	ngaytra date  not null,
	mathe int not null,
	primary key (maphieutra)
)
INSERT INTO phieutra (maphieutra,manhanvien, ngaytra, mathe)
VALUES
    (1,1, '2023-10-23', 1),
    (2,2, '2023-10-23', 3),
    (3,5, '2023-10-24', 5),
    (4,8, '2023-10-24', 2),
    (5,7, '2023-10-25', 7),
    (6,2, '2023-10-25', 12),
    (7,4,  '2023-10-26', 15),
    (8,1, '2023-10-26', 12),
    (9,7, '2023-10-27', 10),
    (10,8, '2023-10-27', 10),
    (11,10, '2023-10-28', 2),
    (12,10, '2023-10-28', 5),
    (13,9, '2023-10-29', 6),
    (14,10, '2023-10-29', 6),
    (15,3, '2023-10-30', 9);
go 
create table chitietphieutra
(	maphieutra int not null,
	masach int not null,
	trangthaisach nvarchar(20),
	soluong int
)
INSERT INTO chitietphieutra (maphieutra, masach, trangthaisach, soluong)
VALUES
(1, 1, N'T', 1),
(2, 6, N'F', 2),
(3, 8, N'F', 3),
(4, 13, N'T', 2),
(5, 10, N'F', 6),
(6, 15, N'F', 3),
(7, 12, N'T', 4),
(8, 3, N'T', 2),
(9, 6, N'F', 5),
(10, 8, N'T', 3),
(11, 14, N'F', 2),
(12, 10, N'T', 1),
(13, 2, N'T', 2);
	
/*thông tin thẻ thư viện */
go
create table thethuvien 
(
	mathe int not null,
	ngaylamthe date,
	trangthai nvarchar(20),
	madocgia int not null,
	primary key (mathe)
)
INSERT INTO thethuvien (mathe, ngaylamthe, trangthai, madocgia)
VALUES
	(1,'2023-10-23', N'hoạt động', 1),
    (2,'2023-10-24', N'chờ xử lý', 3),
    (3,'2023-10-25', N'chờ xử lý', 2),
    (4,'2023-10-26', N'hoạt động', 10),
    (5,'2023-10-27', N'chờ xử lý', 5),
    (6,'2023-10-28', N'chờ xử lý', 6),
    (7,'2023-10-29', N'hoạt động', 8),
    (8,'2023-10-30', N'chờ xử lý', 2),
    (9,'2023-10-31', N'chờ xử lý', 4),
    (10,'2023-11-01', N'hoạt động', 10),
    (11,'2023-11-02', N'chờ xử lý', 13),
    (12,'2023-11-03', N'chờ xử lý', 12),
    (13,'2023-11-04', N'hoạt động', 9),
    (14,'2023-11-05', N'chờ xử lý', 14),
    (15,'2023-11-06', N'chờ xử lý', 15);
GO
ALTER TABLE sach WITH CHECK ADD  CONSTRAINT [fk_matacgia] foreign key (matacgia)  references tacgia (matacgia)
ALTER TABLE sach CHECK CONSTRAINT [fk_matacgia]
GO
ALTER TABLE sach WITH CHECK ADD  CONSTRAINT [fk_matheloai] foreign key (matheloai)  references theloai (matheloai)
ALTER TABLE sach CHECK CONSTRAINT [fk_matheloai]
GO
ALTER TABLE sach WITH CHECK ADD  CONSTRAINT [fk_manhaxuatban] foreign key (manxb)  references nhaxuatban (manxb)
ALTER TABLE sach CHECK CONSTRAINT [fk_manhaxuatban]
GO
ALTER TABLE sach WITH CHECK ADD  CONSTRAINT [fk_manhanvien] foreign key (manhanvien)  references nhanvien (manhanvien)
ALTER TABLE sach CHECK CONSTRAINT [fk_manhanvien]
GO
ALTER TABLE docgia WITH CHECK ADD  CONSTRAINT [fk_mathe] foreign key (mathe)  references thethuvien (mathe)
ALTER TABLE docgia CHECK CONSTRAINT [fk_mathe]
GO
ALTER TABLE thethuvien WITH CHECK ADD  CONSTRAINT [fk_madocgia] foreign key (madocgia)  references docgia (madocgia)
ALTER TABLE thethuvien CHECK CONSTRAINT [fk_madocgia]
GO
ALTER TABLE phieumuon WITH CHECK ADD  CONSTRAINT [fk_muon_mathe] foreign key (mathe)  references thethuvien (mathe)
ALTER TABLE phieumuon CHECK CONSTRAINT [fk_muon_mathe]
GO
ALTER TABLE phieumuon WITH CHECK ADD  CONSTRAINT [fk_muon_manhanvien] foreign key (manhanvien)  references nhanvien (manhanvien)
ALTER TABLE phieumuon CHECK CONSTRAINT [fk_muon_manhanvien]
GO
ALTER TABLE chitietphieumuon WITH CHECK ADD  CONSTRAINT [fk_chitietmuon_maphieumuon] foreign key (maphieumuon)  references phieumuon (maphieumuon)
ALTER TABLE chitietphieumuon CHECK CONSTRAINT [fk_chitietmuon_maphieumuon]
GO
ALTER TABLE chitietphieumuon WITH CHECK ADD  CONSTRAINT [fk_chitietmuon_masach] foreign key (masach)  references sach (masach)
ALTER TABLE chitietphieumuon CHECK CONSTRAINT [fk_chitietmuon_masach]
GO
ALTER TABLE phieutra WITH CHECK ADD  CONSTRAINT [fk_tra_manhanvien] foreign key (manhanvien)  references nhanvien (manhanvien)
ALTER TABLE phieutra CHECK CONSTRAINT [fk_tra_manhanvien]
GO
ALTER TABLE phieutra WITH CHECK ADD  CONSTRAINT [fk_tra_mathe] foreign key (mathe)  references thethuvien (mathe)
ALTER TABLE phieutra CHECK CONSTRAINT [fk_tra_mathe]
GO
ALTER TABLE chitietphieutra WITH CHECK ADD  CONSTRAINT [fk_chitiettra_maphieutra] foreign key (maphieutra)  references phieutra (maphieutra)
ALTER TABLE chitietphieutra CHECK CONSTRAINT [fk_chitiettra_maphieutra]
GO
ALTER TABLE chitietphieutra WITH CHECK ADD  CONSTRAINT [fk_chitiettra_masach] foreign key (masach)  references sach (masach)
ALTER TABLE chitietphieutra CHECK CONSTRAINT [fk_chitiettra_masach]
GO
ALTER DATABASE quanlithuvien SET  READ_WRITE 