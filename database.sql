USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 6/18/2021 10:48:19 PM ******/
CREATE DATABASE [QLSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'D:\Data\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLSV.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'D:\Data\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLSV_log.ldf' , SIZE = 2560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLSV] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLSV] SET  MULTI_USER 
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSV', N'ON'
GO
ALTER DATABASE [QLSV] SET QUERY_STORE = OFF
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[tblDiem]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiem](
	[malophocphan] [varchar](50) NOT NULL,
	[masv] [varchar](50) NOT NULL,
	[lanhoc] [int] NOT NULL,
	[thuongxuyen1] [float] NULL,
	[thuongxuyen2] [float] NULL,
	[tbthuongky] [float] NULL,
	[duocduthi] [tinyint] NULL,
	[diemthilan1] [float] NULL,
	[diemthilan2] [float] NULL,
	[diemtongket] [float] NULL,
	[xeploai] [varchar](2) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDiem] PRIMARY KEY CLUSTERED 
(
	[malophocphan] ASC,
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGiangVien]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiangVien](
	[magv] [int] IDENTITY(1,1) NOT NULL,
	[makhoa] [varchar](20) NOT NULL,
	[bangcap] [nvarchar](60) NOT NULL,
	[chucvu] [nvarchar](250) NOT NULL,
	[tengiangvien] [nvarchar](250) NOT NULL,
	[gioitinh] [tinyint] NULL,
	[ngaysinh] [date] NULL,
	[dienthoai] [varchar](13) NULL,
	[email] [varchar](150) NULL,
	[diachi] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblGiangVien] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhoa]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhoa](
	[makhoa] [varchar](20) NOT NULL,
	[tenkhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKhoa] PRIMARY KEY CLUSTERED 
(
	[makhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLopHoc]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLopHoc](
	[malop] [varchar](50) NOT NULL,
	[magv] [int] NOT NULL,
	[tenlop] [nvarchar](50) NOT NULL,
	[manganh] [varchar](50) NOT NULL,
	[namvaotruong] [bigint] NOT NULL,
 CONSTRAINT [PK_tblLopHoc] PRIMARY KEY CLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLopHocPhan]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLopHocPhan](
	[malophocphan] [varchar](50) NOT NULL,
	[mamonhoc] [varchar](50) NOT NULL,
	[malop] [varchar](50) NOT NULL,
	[magv] [int] NOT NULL,
	[hocky] [int] NOT NULL,
	[namhoc] [varchar](9) NOT NULL,
	[trangthai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblLopHocPhan] PRIMARY KEY CLUSTERED 
(
	[malophocphan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[mamonhoc] [varchar](50) NOT NULL,
	[tenmonhoc] [nvarchar](250) NOT NULL,
	[sotinchi] [int] NULL,
	[makhoa] [varchar](20) NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNganh]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNganh](
	[manganh] [varchar](50) NOT NULL,
	[makhoa] [varchar](20) NOT NULL,
	[tennganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblNganh] PRIMARY KEY CLUSTERED 
(
	[manganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNguoiDung]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiDung](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](250) NOT NULL,
	[phanquyen] [int] NOT NULL,
 CONSTRAINT [PK_tblNguoiDung] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 6/18/2021 10:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[masv] [varchar](50) NOT NULL,
	[tensv] [nvarchar](250) NOT NULL,
	[malop] [varchar](50) NULL,
	[dienthoai] [varchar](13) NULL,
	[email] [varchar](100) NULL,
	[quequan] [nvarchar](250) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [tinyint] NULL,
	[trangthai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblSinhVien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101000247', N'18810320651

', 1, 6, 6.5, 6.3, 0, 7.5, NULL, 7.1, N'B', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101000247', N'18810320702', 1, 9, 9, 9, 0, 8, NULL, 8.3, N'B+', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101000247', N'18810320721', 1, 0, 9, 9, 0, 0, 0, 8.5, N'', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101000247', N'18810320722', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'đang học')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101000325', N'18810320651

', 1, 6.5, NULL, NULL, 0, NULL, NULL, NULL, NULL, N'đang học')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101000325', N'18810320702', 1, 8.5, NULL, NULL, 0, NULL, NULL, NULL, NULL, N'đang học')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101000325', N'18810320721', 1, 7, NULL, NULL, 0, NULL, NULL, NULL, NULL, N'đang học')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001178', N'18810320651

', 1, 10, NULL, 7, 0, 3.5, NULL, 4.8, N'D', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001178', N'18810320702', 1, 7, NULL, 6.7, 0, 4.5, NULL, 5.2, N'D', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001178', N'18810320721
', 1, 3, NULL, 5.3, 0, NULL, NULL, 1.6, NULL, N'học lại')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001422', N'18810320651

', 1, 3, NULL, 3, 0, 5, NULL, 4.4, N'D', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001422', N'18810320702', 1, 7.5, NULL, 7.5, 0, 5, NULL, 5.8, N'C-', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001422', N'18810320721
', 1, 10, NULL, 10, 0, 10, NULL, 10, N'A', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001465', N'18810320651

', 1, 7, 7, 7, 0, 4, NULL, 4.9, N'D-', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001465', N'18810320702', 1, 8, 8, 8, 0, 6, NULL, 6.6, N'C+', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001465', N'18810320721
', 1, 8, 9, 8.5, 0, 8, NULL, 8.2, N'B', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001640', N'18810320651

', 1, 9, NULL, 8.3, 0, 0, 8, 8.1, N'B', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001640', N'18810320702', 1, 8, NULL, 8, 0, 5, NULL, 5.9, N'C-', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001640', N'18810320721
', 1, 7, NULL, 6.3, 0, 9.5, NULL, 8.5, N'A', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001877', N'18810320651

', 1, 8, NULL, 8, 0, 8, 9, 8.7, N'A+', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001877', N'18810320702', 1, 8, NULL, 8, 0, 8, NULL, 8, N'B', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001877', N'18810320721
', 1, 8, NULL, 8, 0, 10, NULL, 9.4, N'A', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001880', N'18810320651

', 1, 8.5, 8.5, 8.5, 0, 8.5, NULL, 8.5, N'A', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001880', N'18810320702', 1, 9.5, 9.5, 9.5, 0, 9.5, NULL, 9.5, N'A', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001880', N'18810320721', 1, 9.5, 9.5, 9.5, 0, 9.5, NULL, 9.5, N'A', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001893', N'18810320651

', 1, 5, 5, 5, 0, 3, 1, 3.6, NULL, N'học lại')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001893', N'18810320702', 1, 8, NULL, 8, 0, 8, NULL, 8, N'B', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001893', N'18810320721
', 1, 4.5, NULL, 4.5, 0, 10, NULL, 8.4, N'B+', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001990', N'18810320651

', 1, 9, NULL, 9, 0, 8, NULL, 8.3, N'B', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001990', N'18810320702', 1, 6, NULL, 6, 0, 9, NULL, 8.1, N'B+', N'đạt')
INSERT [dbo].[tblDiem] ([malophocphan], [masv], [lanhoc], [thuongxuyen1], [thuongxuyen2], [tbthuongky], [duocduthi], [diemthilan1], [diemthilan2], [diemtongket], [xeploai], [ghichu]) VALUES (N'0101001990', N'18810320721
', 1, 4, NULL, 4, 0, 9, NULL, 7.5, N'B', N'đạt')
GO
SET IDENTITY_INSERT [dbo].[tblGiangVien] ON 

INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (1, N'CNTT', N'Tiến sĩ', N'Phó trưởng khoa', N'Ngô Hoàng Huy', 1, CAST(N'1977-10-20' AS Date), N'0904140022', N'huynh@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (2, N'CNTT', N'Tiến sĩ', N'Phó trưởng khoa', N'Nguyễn Thị Thu Hà', 0, CAST(N'1976-10-20' AS Date), N'0906113373', N'hantt@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (4, N'CNTT', N'Tiến sĩ', N'Trưởng bộ môn', N'Nguyễn Thị Thanh Tân', 0, CAST(N'1976-10-20' AS Date), N'03217749', N'tanntt@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (5, N'CNTT', N'Thạc sĩ', N'Giảng viên', N'Phương Văn Cảnh', 1, CAST(N'1976-10-20' AS Date), N'0356092385', N'canhpv@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (6, N'CNT', N'Thạc sĩ', N'Giảng viên', N'Phạm Quang Huy', 1, CAST(N'1976-10-20' AS Date), N'0982048668', N'huypq@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (7, N'CNTT', N'Thạc sĩ', N'Giảng viên', N'Nguyễn Thị Ngọc Tú', 0, CAST(N'1976-10-20' AS Date), N'', N'tunn@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (8, N'CNTT', N'Thạc sĩ', N'Giảng viên', N'Bùi Khánh Linh', 0, CAST(N'1976-10-20' AS Date), N'0914566818', N'linhbk@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (9, N'CNTT', N'Tiến sĩ', N'Giảng viên', N'Nguyễn Thị Hồng Khánh', 0, CAST(N'1977-10-20' AS Date), N'', N'khanhnth@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (10, N'CNTT', N'Tiến sĩ', N'Giảng viên', N'Lê Thị Trang Linh', 0, CAST(N'1976-10-20' AS Date), N'', N'linhltt@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (11, N'CNTT', N'Thạc sĩ', N'Giảng viên', N'Trần Thị Minh Thu', 0, CAST(N'1976-10-20' AS Date), N'', N'thuttm@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (12, N'CNTT', N'Thạc sĩ', N'Giảng viên', N'Nguyễn Quỳnh Anh', 0, CAST(N'1976-10-20' AS Date), N'0915343861', N'anhnq@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (13, N'CNTT', N'Tiến sĩ', N'Giảng viên', N'Phạm Đức Hồng', 1, CAST(N'1976-10-20' AS Date), N'0987403915', N'hongpd@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (15, N'CNTT', N'Thạc sĩ', N'Giảng viên', N'Nguyễn Khánh Tùng', 1, CAST(N'1976-10-20' AS Date), N'', N'tungnk@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (16, N'CNTT', N'Tiến sĩ', N'Giảng viên', N'Đào Nam Anh', 1, CAST(N'1976-10-20' AS Date), N'', N'anhdn@epu.edu.vn', N'Hà Nội')
INSERT [dbo].[tblGiangVien] ([magv], [makhoa], [bangcap], [chucvu], [tengiangvien], [gioitinh], [ngaysinh], [dienthoai], [email], [diachi]) VALUES (17, N'CNTT', N'Tiến sĩ', N'Giảng viên', N'Nguyễn Văn Đoàn', 1, CAST(N'1976-10-20' AS Date), N'02422185713', N'doannv@epu.edu.vn', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[tblGiangVien] OFF
GO
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'CKDL', N'Cơ khí và động lực')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'CNNL', N'Công nghệ năng lượng')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'CNTT', N'Công nghệ thông tin')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'DKTTH', N'Điều khiển và tự động hoá')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'DTVT', N'Điện tử viễn thông')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'KTD', N'Kỹ thuật điện')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'KTQL', N'Kinh tế quản lý')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'KHCT', N'Bộ môn khoa học chính trị')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'KHTN', N'Khoa học tự nhiên')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'NN', N'Ngoại ngữ')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'QLCNNL', N'Quản lý công nghiệp và năng lượng')
INSERT [dbo].[tblKhoa] ([makhoa], [tenkhoa]) VALUES (N'XD', N'Xây dựng')
GO
INSERT [dbo].[tblLopHoc] ([malop], [magv], [tenlop], [manganh], [namvaotruong]) VALUES (N'D13CNPM4', 9, N'D13 Công nghệ phần mềm 4', N'CNPM', 2018)
INSERT [dbo].[tblLopHoc] ([malop], [magv], [tenlop], [manganh], [namvaotruong]) VALUES (N'D13HTTMDT', 8, N'D13 Hệ thống thương mại điện tử 1', N'HTTMDT', 2018)
INSERT [dbo].[tblLopHoc] ([malop], [magv], [tenlop], [manganh], [namvaotruong]) VALUES (N'D13QTANM', 10, N'D13 Quản trị an ninh mạng', N'QTANM', 2018)
GO
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101000247', N'000247', N'D13QTANM', 5, 4, N'2020', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101000325', N'000325', N'D13QTANM', 10, 5, N'2020', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101001178', N'001178', N'D13QTANM', 6, 1, N'2018', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101001422', N'001422', N'D13QTANM', 3, 2, N'2019', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101001465', N'001465', N'D13QTANM', 5, 4, N'2020', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101001640', N'001640', N'D13QTANM', 6, 2, N'2019', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101001877', N'	001877', N'D13QTANM', 1, 3, N'2019', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101001880', N'001880', N'D13QTANM', 16, 5, N'2020', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101001893', N'001893', N'D13QTAMN', 11, 1, N'2018', N'mở')
INSERT [dbo].[tblLopHocPhan] ([malophocphan], [mamonhoc], [malop], [magv], [hocky], [namhoc], [trangthai]) VALUES (N'0101001990', N'001990', N'D13QTANM', 13, 2, N'2019', N'mở')
GO
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'000146', N'Cấu trúc dữ liệu và giải thuật nâng cao', 3, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'000235', N'Cơ sở dữ liệu', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'000247', N'Cơ sở lập trình Web	', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'000325', N'Công nghệ phần mềm', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'000591', N'Đồ án lập trình .NET', 1, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'000765', N'Đường lối cách mạng của Đảng CS Việt nam', 3, N'KHCT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'000860', N'Hệ điều hành mạng', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'000869', N'Hệ quản trị cơ sở dữ liệu', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001178', N'Kiến trúc máy tính', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001422', N'Lập trình C nâng cao', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001465', N'Lập trình .NET', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001630', N'Mạng không dây và di động', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001640', N'Mạng máy tính', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001684', N'Mật mã ứng dụng', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001830', N'Nguyên lý hệ điều hành', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001841', N'Nguyên lý lập trình hướng đối tượng', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001877', N'Nhập môn An toàn và bảo mật thông tin', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001878', N'Nhập môn cấu trúc dữ liệu và giải thuật	', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001880', N'Nhập môn học máy', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001893', N'Nhập môn tin học', 3, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001899', N'Nhập môn trí tuệ nhân tạo', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001957', N'Phần mềm mã nguồn mở', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001990', N'Phân tích thiết kế hệ thống thông tin', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'001996', N'Phân tích thiết kế hướng đối tượng', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'002563', N'Thiết bị mạng', 2, N'CNTT')
INSERT [dbo].[tblMonHoc] ([mamonhoc], [tenmonhoc], [sotinchi], [makhoa]) VALUES (N'004293', N'Lập trình web nâng cao', 3, N'CNTT')
GO
INSERT [dbo].[tblNganh] ([manganh], [makhoa], [tennganh]) VALUES (N'CNPM', N'CNTT', N'Công nghệ phần mềm')
INSERT [dbo].[tblNganh] ([manganh], [makhoa], [tennganh]) VALUES (N'HTTMDT', N'CNTT', N'Hệ thống thương mại điện tử')
INSERT [dbo].[tblNganh] ([manganh], [makhoa], [tennganh]) VALUES (N'QTANM', N'CNTT', N'Quản trị an ninh mạng')
INSERT [dbo].[tblNganh] ([manganh], [makhoa], [tennganh]) VALUES (N'TTNTTGMT', N'CNTT', N'Trí tuệ nhân tạo và thị giác máy tính')
GO
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'18810320651', N'123456', 1)
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'18810320702', N'123456', 1)
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'18810320721', N'123456', 1)
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'18810320722', N'123456', 1)
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'huyentran', N'1234', 0)
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'khaipham', N'1234', 0)
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'lisasa', N'1234', 0)
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'quangno1', N'1234', 0)
INSERT [dbo].[tblNguoiDung] ([username], [password], [phanquyen]) VALUES (N'quangtran', N'1234', 0)
GO
INSERT [dbo].[tblSinhVien] ([masv], [tensv], [malop], [dienthoai], [email], [quequan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'18810320651', N'Phạm Quang Khải', N'D13QTANM', NULL, NULL, NULL, NULL, 1, N'đang học')
INSERT [dbo].[tblSinhVien] ([masv], [tensv], [malop], [dienthoai], [email], [quequan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'18810320702', N'Phạm Lê Khánh Huyền', N'D13QTANM', N'0836194606', N'kaytee5424@gmail.com', N'Hà Châu, Phú Bình, Thái Nguyên', CAST(N'2000-04-05' AS Date), 0, N'đang học')
INSERT [dbo].[tblSinhVien] ([masv], [tensv], [malop], [dienthoai], [email], [quequan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'18810320721', N'Trần Đăng Quang', N'D13QTANM', N'0861273606', N'dangquangepu1701@gmail.com', N'Chân Lý, Lý Nhân, Hà Nam', CAST(N'2000-01-17' AS Date), 1, N'đang học')
INSERT [dbo].[tblSinhVien] ([masv], [tensv], [malop], [dienthoai], [email], [quequan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'18810320722', N'Trần Đăng Quang', N'D13QTANM', N'0861273606', N'dangquangepu1701@gmail.com', N'Chân Lý, Lý Nhân, Hà Nam', CAST(N'2000-01-17' AS Date), 1, N'đang học')
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_trangthai]  DEFAULT ('dang h?c') FOR [trangthai]
GO
USE [master]
GO
ALTER DATABASE [QLSV] SET  READ_WRITE 
GO
