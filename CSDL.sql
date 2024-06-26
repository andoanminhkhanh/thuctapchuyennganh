USE [master]
GO
/****** Object:  Database [TTCN]    Script Date: 22/05/2024 11:51:25 ******/
CREATE DATABASE [TTCN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TTCN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\TTCN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TTCN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\TTCN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TTCN] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TTCN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TTCN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TTCN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TTCN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TTCN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TTCN] SET ARITHABORT OFF 
GO
ALTER DATABASE [TTCN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TTCN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TTCN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TTCN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TTCN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TTCN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TTCN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TTCN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TTCN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TTCN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TTCN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TTCN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TTCN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TTCN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TTCN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TTCN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TTCN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TTCN] SET RECOVERY FULL 
GO
ALTER DATABASE [TTCN] SET  MULTI_USER 
GO
ALTER DATABASE [TTCN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TTCN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TTCN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TTCN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TTCN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TTCN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TTCN', N'ON'
GO
ALTER DATABASE [TTCN] SET QUERY_STORE = OFF
GO
USE [TTCN]
GO
/****** Object:  Table [dbo].[tblbangchamcong]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblbangchamcong](
	[MaNV] [nvarchar](10) NOT NULL,
	[NgayLAm] [date] NOT NULL,
	[GioVaoLam] [datetime] NULL,
	[GioTanLam] [datetime] NULL,
 CONSTRAINT [PK_tblbangchamcong] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[NgayLAm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblbangluong]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblbangluong](
	[MaNV] [nvarchar](10) NOT NULL,
	[TongGioLam] [float] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_tblbangluong] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblchamcong]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblchamcong](
	[MaNV] [nvarchar](10) NOT NULL,
	[NgayLam] [date] NOT NULL,
	[GioVaoLam] [time](7) NULL,
	[GioTanLam] [time](7) NULL,
 CONSTRAINT [PK_tblchamcong] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[NgayLam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblchitiethoadonban]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblchitiethoadonban](
	[MaHDB] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGiaBan] [float] NOT NULL,
	[GiamGia] [float] NULL,
 CONSTRAINT [PK_tblchitiethoadonban] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblchitiethoadonnhap]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblchitiethoadonnhap](
	[MaHDN] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGiaNhap] [float] NOT NULL,
	[GiamGia] [float] NULL,
 CONSTRAINT [PK_tblchitiethoadonnhap] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblcongviec]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcongviec](
	[MaCV] [nvarchar](10) NOT NULL,
	[TenCV] [nvarchar](50) NOT NULL,
	[HeSoLuong] [float] NOT NULL,
 CONSTRAINT [PK_tblcongviec] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblhoadonban]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblhoadonban](
	[MaHDB] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[NgayBan] [date] NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[TongTien] [float] NOT NULL,
 CONSTRAINT [PK_tblhoadonban] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblhoadonnhap]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblhoadonnhap](
	[MaHDN] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaNCC] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[TongTien] [float] NOT NULL,
 CONSTRAINT [PK_tblhoadonnhap] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblkhachhang]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkhachhang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_tblkhachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblmau]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblmau](
	[MaMau] [nvarchar](10) NOT NULL,
	[TenMau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblmau] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblnhacungcap]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnhacungcap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_tblnhacungcap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblnhanvien]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnhanvien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DienThoai] [nvarchar](15) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[MaCV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblnhanvien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblsanpham]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblsanpham](
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[MaLoai] [nvarchar](10) NOT NULL,
	[Size] [nvarchar](5) NOT NULL,
	[MaMau] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Anh] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblsanpham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbltheloai]    Script Date: 22/05/2024 11:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltheloai](
	[MaLoai] [nvarchar](10) NOT NULL,
	[TenLoai] [varchar](50) NULL,
 CONSTRAINT [PK_tbltheloai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblbangchamcong]  WITH CHECK ADD  CONSTRAINT [FK_tblbangchamcong_tblnhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblnhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[tblbangchamcong] CHECK CONSTRAINT [FK_tblbangchamcong_tblnhanvien]
GO
ALTER TABLE [dbo].[tblbangluong]  WITH CHECK ADD  CONSTRAINT [FK_tblbangluong_tblnhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblnhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[tblbangluong] CHECK CONSTRAINT [FK_tblbangluong_tblnhanvien]
GO
ALTER TABLE [dbo].[tblchitiethoadonban]  WITH CHECK ADD  CONSTRAINT [FK_tblchitiethoadonban_tblhoadonban] FOREIGN KEY([MaHDB])
REFERENCES [dbo].[tblhoadonban] ([MaHDB])
GO
ALTER TABLE [dbo].[tblchitiethoadonban] CHECK CONSTRAINT [FK_tblchitiethoadonban_tblhoadonban]
GO
ALTER TABLE [dbo].[tblchitiethoadonban]  WITH CHECK ADD  CONSTRAINT [FK_tblchitiethoadonban_tblsanpham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tblsanpham] ([MaSP])
GO
ALTER TABLE [dbo].[tblchitiethoadonban] CHECK CONSTRAINT [FK_tblchitiethoadonban_tblsanpham]
GO
ALTER TABLE [dbo].[tblchitiethoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_tblchitiethoadonnhap_tblhoadonnhap] FOREIGN KEY([MaHDN])
REFERENCES [dbo].[tblhoadonnhap] ([MaHDN])
GO
ALTER TABLE [dbo].[tblchitiethoadonnhap] CHECK CONSTRAINT [FK_tblchitiethoadonnhap_tblhoadonnhap]
GO
ALTER TABLE [dbo].[tblchitiethoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_tblchitiethoadonnhap_tblsanpham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tblsanpham] ([MaSP])
GO
ALTER TABLE [dbo].[tblchitiethoadonnhap] CHECK CONSTRAINT [FK_tblchitiethoadonnhap_tblsanpham]
GO
ALTER TABLE [dbo].[tblhoadonban]  WITH CHECK ADD  CONSTRAINT [FK_tblhoadonban_tblkhachhang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tblkhachhang] ([MaKH])
GO
ALTER TABLE [dbo].[tblhoadonban] CHECK CONSTRAINT [FK_tblhoadonban_tblkhachhang]
GO
ALTER TABLE [dbo].[tblhoadonban]  WITH CHECK ADD  CONSTRAINT [FK_tblhoadonban_tblnhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblnhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[tblhoadonban] CHECK CONSTRAINT [FK_tblhoadonban_tblnhanvien]
GO
ALTER TABLE [dbo].[tblhoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_tblhoadonnhap_tblnhacungcap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tblnhacungcap] ([MaNCC])
GO
ALTER TABLE [dbo].[tblhoadonnhap] CHECK CONSTRAINT [FK_tblhoadonnhap_tblnhacungcap]
GO
ALTER TABLE [dbo].[tblhoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_tblhoadonnhap_tblnhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblnhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[tblhoadonnhap] CHECK CONSTRAINT [FK_tblhoadonnhap_tblnhanvien]
GO
ALTER TABLE [dbo].[tblnhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tblnhanvien_tblcongviec] FOREIGN KEY([MaCV])
REFERENCES [dbo].[tblcongviec] ([MaCV])
GO
ALTER TABLE [dbo].[tblnhanvien] CHECK CONSTRAINT [FK_tblnhanvien_tblcongviec]
GO
ALTER TABLE [dbo].[tblsanpham]  WITH CHECK ADD  CONSTRAINT [FK_tblsanpham_tblmau] FOREIGN KEY([MaMau])
REFERENCES [dbo].[tblmau] ([MaMau])
GO
ALTER TABLE [dbo].[tblsanpham] CHECK CONSTRAINT [FK_tblsanpham_tblmau]
GO
ALTER TABLE [dbo].[tblsanpham]  WITH CHECK ADD  CONSTRAINT [FK_tblsanpham_tbltheloai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tbltheloai] ([MaLoai])
GO
ALTER TABLE [dbo].[tblsanpham] CHECK CONSTRAINT [FK_tblsanpham_tbltheloai]
GO
USE [master]
GO
ALTER DATABASE [TTCN] SET  READ_WRITE 
GO
