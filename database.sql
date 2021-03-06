USE [master]
GO
/****** Object:  Database [QL_BANPHIM]    Script Date: 26-Aug-21 8:33:22 PM ******/
CREATE DATABASE [QL_BANPHIM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_BANPHIM', FILENAME = N'F:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QL_BANPHIM.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_BANPHIM_log', FILENAME = N'F:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QL_BANPHIM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QL_BANPHIM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_BANPHIM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_BANPHIM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_BANPHIM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_BANPHIM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_BANPHIM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_BANPHIM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_BANPHIM] SET  MULTI_USER 
GO
ALTER DATABASE [QL_BANPHIM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_BANPHIM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_BANPHIM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_BANPHIM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_BANPHIM] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_BANPHIM', N'ON'
GO
ALTER DATABASE [QL_BANPHIM] SET QUERY_STORE = OFF
GO
USE [QL_BANPHIM]
GO
/****** Object:  Table [dbo].[ABOUT]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABOUT](
	[MAST] [char](10) NOT NULL,
	[TENCT] [nvarchar](50) NULL,
	[TONGDAI] [int] NULL,
	[DIACHI] [nvarchar](50) NULL,
 CONSTRAINT [PK_ABOUT] PRIMARY KEY CLUSTERED 
(
	[MAST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ANHSP]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANHSP](
	[MASP] [char](10) NOT NULL,
	[IMG1] [nvarchar](max) NULL,
	[IMG2] [nvarchar](max) NULL,
	[IMG3] [nvarchar](max) NULL,
	[IMG4] [nvarchar](max) NULL,
	[ANHSLIDE1] [nvarchar](max) NULL,
	[ANHSLIDE2] [nvarchar](max) NULL,
	[ANHSLIDE3] [nvarchar](max) NULL,
 CONSTRAINT [PK_ANHSP] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MADH] [int] IDENTITY(1,1) NOT NULL,
	[MASP] [char](10) NULL,
	[SOLUONG] [int] NULL,
	[THANHTIEN] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MADH] [int] NOT NULL,
	[TINHTRANHTT] [bit] NULL,
	[TINHTRANGGH] [bit] NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[MAKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANG]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANG](
	[MAHA] [char](10) NOT NULL,
	[TENHA] [nvarchar](50) NULL,
 CONSTRAINT [PK_HANG] PRIMARY KEY CLUSTERED 
(
	[MAHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[NAMSINH] [date] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[TK] [nvarchar](20) NULL,
	[MK] [nvarchar](20) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOTA]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOTA](
	[MASP] [char](10) NOT NULL,
	[MOTA1] [nvarchar](max) NULL,
	[MOTA2] [nvarchar](max) NULL,
	[MOTA3] [nvarchar](max) NULL,
	[MOTA4] [nvarchar](max) NULL,
	[MOTA5] [nvarchar](max) NULL,
	[MOTA6] [nvarchar](max) NULL,
	[MOTA7] [nvarchar](max) NULL,
	[MOTA8] [nvarchar](max) NULL,
	[MOTA9] [nvarchar](max) NULL,
	[MOTA10] [nvarchar](max) NULL,
 CONSTRAINT [PK_MOTA] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAPP]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAPP](
	[MANPP] [char](10) NOT NULL,
	[TENNPP] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHAPP] PRIMARY KEY CLUSTERED 
(
	[MANPP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [char](10) NOT NULL,
	[SOPHIM] [int] NULL,
	[MATL] [char](10) NULL,
	[NAMSX] [int] NULL,
	[MAHA] [char](10) NULL,
	[MANPP] [char](10) NULL,
	[BAOHANH] [nvarchar](50) NULL,
	[PHUKIEN] [nvarchar](50) NULL,
	[MANC] [char](10) NULL,
	[ANHBIA] [nvarchar](max) NULL,
	[TENPHIM] [nvarchar](50) NULL,
	[NGAYCAPNHAT] [date] NULL,
	[IDSP] [int] NULL,
	[GIA] [decimal](18, 0) NULL,
	[SWITCH] [nvarchar](50) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MATL] [char](10) NOT NULL,
	[TENTL] [nvarchar](50) NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[MATL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XUATXU]    Script Date: 26-Aug-21 8:33:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUATXU](
	[MANC] [char](10) NOT NULL,
	[TENNC] [nvarchar](50) NULL,
 CONSTRAINT [PK_XUATXU] PRIMARY KEY CLUSTERED 
(
	[MANC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ABOUT] ([MAST], [TENCT], [TONGDAI], [DIACHI]) VALUES (N'123       ', N'ABC', 19001009, N'A/E, Q.7, HCM')
INSERT [dbo].[ADMIN] ([username], [password]) VALUES (N'Doubleshit', N'123456')
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'DMP       ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'DO2       ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'DO2H      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'DO2M      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'DO2MN     ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'DO2T      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'DP        ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'DS7       ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', N'DSC_4129.jpg', N'DSC_4218.jpg', N'DSC_4129.jpg')
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FC660M    ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FC750R    ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FC980MB   ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FC980MW   ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FK403     ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FM2       ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FM2T      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FMM       ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'FMM2      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'KBV80     ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'MBB       ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'MD650L    ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'NULLV60   ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'POK3R     ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'V20B      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'V20D      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'V20O      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'VA21      ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'VA21M     ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'VA87M     ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'VCD       ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[ANHSP] ([MASP], [IMG1], [IMG2], [IMG3], [IMG4], [ANHSLIDE1], [ANHSLIDE2], [ANHSLIDE3]) VALUES (N'VDS       ', N'duckyshine7.jpg', N'duckyshine72.jpg', N'duckyshine73.jpg', N'duckyshine74.jpg', NULL, NULL, NULL)
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'ACER      ', N'ACER')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'ASUS      ', N'ASUS')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'DELL      ', N'DELL')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'DUCK      ', N'DUCKY')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'FIL       ', N'FILCO')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'KB        ', N'KBPARADISE')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'LEOP      ', N'LEOPOLD')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'MAT       ', N'MATIAS')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'MIS       ', N'MISTEL')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'MSI       ', N'MSI')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'VAR       ', N'VARMILO')
INSERT [dbo].[HANG] ([MAHA], [TENHA]) VALUES (N'VOR       ', N'VORTEX')
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NAMSINH], [DIACHI], [SDT], [TK], [MK]) VALUES (1, N'Nguyễn Văn A', CAST(N'1999-09-01' AS Date), N'Số 7, Bình Hưng Hòa', 939198921, N'cuteboy99', N'0299')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NAMSINH], [DIACHI], [SDT], [TK], [MK]) VALUES (3, N'Nguyễn Văn B', CAST(N'2019-11-08' AS Date), N'số 7 đường Tân Qúy', 943655763, N'DKM', N'0299')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NAMSINH], [DIACHI], [SDT], [TK], [MK]) VALUES (4, N'Nguyễn Văn C', CAST(N'2019-11-08' AS Date), N'số 11, ấp Tân Thanh', 928719281, N'Doubleshit', N'0299')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
INSERT [dbo].[MOTA] ([MASP], [MOTA1], [MOTA2], [MOTA3], [MOTA4], [MOTA5], [MOTA6], [MOTA7], [MOTA8], [MOTA9], [MOTA10]) VALUES (N'DS7       ', N'Ducky là thương hiệu bàn phím cơ nổi tiếng và có mặt khá lâu tại thị trường Việt Nam của Đài Loan', N'Dòng sản phẩm Ducky Shine đã được giới game thủ cũng như người dùng biết tới qua sản phẩm Ducky Shine 3', N'Và Ducky Shine 7 là sản phẩm mới nhất của Series này với những kế thừa và cải tiến mới nhất của hãng', N'Phần vỏ bề mặt làm từ hợp kim kẽm cho độ bền gấp 3 lần so với nhôm thông thường và tạo cảm giác chắc chắn khó tin', N'Keycaps sử dụng chất liệu PBT Double nhưng với công nghệ in ký tự mới của Ducky ( Seamless) - Nếu nhìn kỹ với công nghệ in thông thường với các ký tự tròn sẽ thường tạo 1 rãnh cắt dọc ký tự nhưng đối với mã phím Ducky Shine 7 này sẽ cho ra ký tự tròn và đẹp hơn )', N'Với phiên bản mới lần này , Ducky và Razer đã cùng hợp tác để phát triển phần mềm cho nên khi bạn sử dụng sản phẩm của Ducky vẫn sử dụng được phần mềm Razer Synapse và ngược lại . Điều này sẽ rất dễ dàng cho đa số người sử dụng thích trộn lẫn các món GEARS với nhau

', NULL, NULL, NULL, NULL)
INSERT [dbo].[NHAPP] ([MANPP], [TENNPP]) VALUES (N'GVN       ', N'GEARVN')
INSERT [dbo].[NHAPP] ([MANPP], [TENNPP]) VALUES (N'NO        ', N'NONAME')
INSERT [dbo].[NHAPP] ([MANPP], [TENNPP]) VALUES (N'VS        ', N'VIENSON')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'DMP       ', 68, N'CP        ', 2019, N'DUCK      ', N'VS        ', N'12', N'FULL', N'TAI       ', N'compactkb3.jpg', N'Ducky MIYA Pro', CAST(N'2019-11-19' AS Date), 1, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc...')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'DO2       ', 107, N'FL        ', 2019, N'DUCK      ', N'GVN       ', N'12', N'FULL', N'TAI       ', N'fskb1.jpg', N'Ducky One 2', CAST(N'2019-11-19' AS Date), 2, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'DO2H      ', 107, N'FL        ', 2019, N'DUCK      ', N'GVN       ', N'12', N'FULL', N'TAI       ', N'fskb3.png', N'Ducky One 2 Horizone', CAST(N'2019-11-19' AS Date), 3, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'DO2M      ', 87, N'TKL       ', 2019, N'DUCK      ', N'GVN       ', N'12', N'FULL', N'TAI       ', N'tklkb5.jpg', N'Ducky One 2 Midnight', CAST(N'2019-11-19' AS Date), 4, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'DO2MN     ', 68, N'CP        ', 2019, N'DUCK      ', N'GVN       ', N'12', N'FULL', N'TAI       ', N'compactkb1.png', N'Ducky One 2 Mini', CAST(N'2019-11-19' AS Date), 5, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'DO2T      ', 87, N'TKL       ', 2019, N'DUCK      ', N'GVN       ', N'12', N'FULL', N'TAI       ', N'tklkb1.jpg', N'Ducky One 2 RGB', CAST(N'2019-11-19' AS Date), 6, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'DP        ', 18, N'NUM       ', 2019, N'DUCK      ', N'GVN       ', N'12', N'FULL', N'TAI       ', N'numpad11.jpg', N'Ducky Pocket RGB', CAST(N'2019-11-19' AS Date), 7, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'DS7       ', 107, N'FL        ', 2019, N'DUCK      ', N'GVN       ', N'12', N'FULL', N'TAI       ', N'fskb2.png', N'Ducky Shine 7', CAST(N'2019-11-19' AS Date), 8, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FC660M    ', 68, N'CP        ', 2019, N'LEOP      ', N'VS        ', N'12', N'FULL', N'TAI       ', N'compactkb4.jpg', N'Leopold FC660M', CAST(N'2019-11-19' AS Date), 9, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FC750R    ', 87, N'TKL       ', 2019, N'LEOP      ', N'GVN       ', N'12', N'FULL', N'TAI       ', N'tklkb4.jpg', N'Leopold FC750R', CAST(N'2019-11-19' AS Date), 10, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FC980MB   ', 107, N'FL        ', 2019, N'LEOP      ', N'VS        ', N'12', N'FULL', N'TAI       ', N'fskb6.jpg', N'Leopold FC980M Black', CAST(N'2019-11-19' AS Date), 11, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FC980MW   ', 107, N'FL        ', 2019, N'LEOP      ', N'VS        ', N'12', N'FULL', N'TAI       ', N'fskb4.jpg', N'Leopold FC98M White', CAST(N'2019-11-19' AS Date), 12, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FK403     ', 50, N'CUS       ', 2019, N'MAT       ', N'GVN       ', N'12', N'FULL', N'GER       ', N'custom4.jpg', N'Matias FK403 Ergo', CAST(N'2019-11-19' AS Date), 13, CAST(3000000 AS Decimal(18, 0)), N'(Cherry) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FM2       ', 107, N'FL        ', 2019, N'FIL       ', N'GVN       ', N'12', N'FULL', N'JAP       ', N'fskb5.jpg', N'Filco Majestouch 2', CAST(N'2019-11-19' AS Date), 14, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FM2T      ', 87, N'TKL       ', 2019, N'FIL       ', N'VS        ', N'12', N'FULL', N'JAP       ', N'tklkb3.jpg', N'Filco Majestouch 2', CAST(N'2019-11-19' AS Date), 15, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FMM       ', 50, N'CUS       ', 2019, N'FIL       ', N'VS        ', N'12', N'FULL', N'JAP       ', N'custom3.jpg', N'Filco Majestouch Minila', CAST(N'2019-11-19' AS Date), 16, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'FMM2      ', 50, N'CUS       ', 2019, N'FIL       ', N'VS        ', N'12', N'FULL', N'JAP       ', N'custom5.jpg', N'Filco Majestouch Minila', CAST(N'2019-11-19' AS Date), 17, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'KBV80     ', 87, N'TKL       ', 2019, N'KB        ', N'VS        ', N'12', N'FULL', N'US        ', N'tklkb2.jpg', N'KBParadise V80 Vintage', CAST(N'2019-11-19' AS Date), 18, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'MA01      ', 12, N'CP        ', 2019, N'ACER      ', N'GVN       ', N'12', N'full', N'CHI       ', NULL, N'abg', CAST(N'2018-01-12' AS Date), NULL, CAST(200 AS Decimal(18, 0)), N'cherry')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'MA02      ', 15, N'NUM       ', 2018, N'DUCK      ', N'NO        ', N'20', N'full', N'ENG       ', NULL, N'abc', CAST(N'2012-11-21' AS Date), NULL, CAST(200 AS Decimal(18, 0)), N'cherry')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'MBB       ', 68, N'CP        ', 2019, N'MIS       ', N'VS        ', N'12', N'FULL', N'JAP       ', N'compactkb6.jpg', N'Mistel Barocco Black 60%', CAST(N'2019-11-19' AS Date), 19, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'MD650L    ', 50, N'CUS       ', 2019, N'MIS       ', N'VS        ', N'12', N'FULL', N'US        ', N'custom6.jpg', N'Mistel MD650L White', CAST(N'2019-11-19' AS Date), 20, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'POK3R     ', 68, N'CP        ', 2019, N'VOR       ', N'VS        ', N'12', N'FULL', N'GER       ', N'compactkb2.jpg', N'Vortex POK3R Black', CAST(N'2019-11-19' AS Date), 21, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'TS        ', 50, N'CUS       ', 2018, N'VOR       ', N'VS        ', N'12', N'FULL', N'GER       ', NULL, N'TEST', CAST(N'2019-01-01' AS Date), 31, CAST(31 AS Decimal(18, 0)), N'CHERRY')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'V20B      ', 18, N'NUM       ', 2019, N'KB        ', N'VS        ', N'12', N'FULL', N'US        ', N'numpad5.jpg', N'KBParadise V20 Black', CAST(N'2019-11-19' AS Date), 22, CAST(3000000 AS Decimal(18, 0)), N'(Gateron) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'V20D      ', 18, N'NUM       ', 2019, N'KB        ', N'VS        ', N'12', N'FULL', N'US        ', N'numpad3.jpg', N'KBParadise V20 Dolch', CAST(N'2019-11-19' AS Date), 23, CAST(3000000 AS Decimal(18, 0)), N'(Kailh) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'V20O      ', 18, N'NUM       ', 2019, N'KB        ', N'VS        ', N'12', N'FULL', N'US        ', N'numpad6.jpg', N'KBParadise V20 Olivette', CAST(N'2019-11-19' AS Date), 24, CAST(3000000 AS Decimal(18, 0)), N'(Kailh) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'V60       ', 68, N'CP        ', 2019, N'KB        ', N'GVN       ', N'12', N'FULL', N'US        ', N'compactkb5.jpg', N'KBParadise V60 Vintage', CAST(N'2019-11-19' AS Date), 25, CAST(3000000 AS Decimal(18, 0)), N'(Kailh) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'VA21      ', 18, N'NUM       ', 2019, N'VAR       ', N'GVN       ', N'12', N'FULL', N'JAP       ', N'numpad4.jpg', N'Varmilo VA21M Greenery', CAST(N'2019-11-19' AS Date), 26, CAST(3000000 AS Decimal(18, 0)), N'(Kailh) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'VA21M     ', 18, N'NUM       ', 2019, N'VAR       ', N'GVN       ', N'12', N'FULL', N'JAP       ', N'numpad2.jpg', N'Varmilo VA21M Panda', CAST(N'2019-11-19' AS Date), 27, CAST(3000000 AS Decimal(18, 0)), N'(Kailh) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'VA87M     ', 87, N'TKL       ', 2019, N'VAR       ', N'VS        ', N'12', N'FULL', N'JAP       ', N'tklkb6.png', N'Varmilo VA87M CMPYO White', CAST(N'2019-11-19' AS Date), 28, CAST(3000000 AS Decimal(18, 0)), N'(Kailh) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'VCD       ', 50, N'CUS       ', 2019, N'VOR       ', N'VS        ', N'12', N'FULL', N'GER       ', N'custom1.png', N'Vortex Core Dye Sub', CAST(N'2019-11-19' AS Date), 29, CAST(3000000 AS Decimal(18, 0)), N'(Kailh) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[SANPHAM] ([MASP], [SOPHIM], [MATL], [NAMSX], [MAHA], [MANPP], [BAOHANH], [PHUKIEN], [MANC], [ANHBIA], [TENPHIM], [NGAYCAPNHAT], [IDSP], [GIA], [SWITCH]) VALUES (N'VDS       ', 50, N'CUS       ', 2019, N'VOR       ', N'GVN       ', N'12', N'FULL', N'GER       ', N'custom2.jpg', N'Vortex ViBE Dye Sub', CAST(N'2019-11-19' AS Date), 30, CAST(3000000 AS Decimal(18, 0)), N'(Kailh) Black,Brown,Red,Blue,etc..')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'CP        ', N'Compact Keyboard')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'CUS       ', N'Custom Keyboard')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'FL        ', N'Fullsize Keyboard')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'NUM       ', N'NUMPAD')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TKL       ', N'TKL Keyboard')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'CHI       ', N'CHINA')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'ENG       ', N'ENGLAND')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'FR        ', N'FRANCE')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'GER       ', N'GERMANY')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'JAP       ', N'JAPAN')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'KR        ', N'KOREA')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'TAI       ', N'TAIWAN')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'US        ', N'USA')
INSERT [dbo].[XUATXU] ([MANC], [TENNC]) VALUES (N'VIE       ', N'VIETNAM')
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_SANPHAM]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_CHITIETDONHANG] FOREIGN KEY([MADH])
REFERENCES [dbo].[CHITIETDONHANG] ([MADH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_CHITIETDONHANG]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[MOTA]  WITH CHECK ADD  CONSTRAINT [FK_MOTA_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[MOTA] CHECK CONSTRAINT [FK_MOTA_SANPHAM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_HANG] FOREIGN KEY([MAHA])
REFERENCES [dbo].[HANG] ([MAHA])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_HANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_NHAPP] FOREIGN KEY([MANPP])
REFERENCES [dbo].[NHAPP] ([MANPP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_NHAPP]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_THELOAI] FOREIGN KEY([MATL])
REFERENCES [dbo].[THELOAI] ([MATL])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_THELOAI]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_XUATXU] FOREIGN KEY([MANC])
REFERENCES [dbo].[XUATXU] ([MANC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_XUATXU]
GO
USE [master]
GO
ALTER DATABASE [QL_BANPHIM] SET  READ_WRITE 
GO
