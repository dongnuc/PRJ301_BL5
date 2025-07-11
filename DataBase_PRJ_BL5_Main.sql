USE [master]
GO
/****** Object:  Database [PRJ301BL5]    Script Date: 12/6/2025 9:43:06 PM ******/
CREATE DATABASE [PRJ301BL5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301BL5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PRJ301BL5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301BL5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PRJ301BL5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PRJ301BL5] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301BL5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301BL5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301BL5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301BL5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301BL5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301BL5] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301BL5] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ301BL5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301BL5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301BL5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301BL5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301BL5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301BL5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301BL5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301BL5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301BL5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301BL5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301BL5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301BL5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301BL5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301BL5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301BL5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301BL5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301BL5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301BL5] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301BL5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301BL5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301BL5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301BL5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301BL5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301BL5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301BL5] SET QUERY_STORE = ON
GO
ALTER DATABASE [PRJ301BL5] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PRJ301BL5]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/6/2025 9:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[idAcc] [int] NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[roll] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAcc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountDis]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountDis](
	[idAcc] [int] NOT NULL,
	[idDis] [int] NOT NULL,
	[isUsed] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idAcc] ASC,
	[idDis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[nameCate] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[idDis] [int] IDENTITY(1,1) NOT NULL,
	[codeDis] [varchar](255) NULL,
	[disAmount] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[dateStart] [date] NULL,
	[dateEnd] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountPro]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountPro](
	[idDis] [int] NOT NULL,
	[idPro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDis] ASC,
	[idPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InforAccount]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InforAccount](
	[idInfor] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[SĐT] [varchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[idAccount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idInfor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idOrder] [int] NOT NULL,
	[OrderDate] [date] NULL,
	[totalBill] [decimal](10, 2) NULL,
	[idAccount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[idOrder] [int] NOT NULL,
	[idPro] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [decimal](10, 2) NULL,
	[Size] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC,
	[idPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pName] [varchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[image] [varchar](255) NULL,
	[cId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 12/6/2025 9:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[idSize] [int] IDENTITY(1,1) NOT NULL,
	[nameSize] [varchar](255) NULL,
	[price] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[idPro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (1, N'Adam', N'123456', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (2, N'Anjolie', N'SNZ6HE', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (3, N'Ferris', N'RXH3XJ', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (4, N'Katell', N'HWV8ZN', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (5, N'Zahir', N'NPX7OF', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (6, N'Conan', N'WIZ5VZ', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (8, N'Micah', N'RVV5SR', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (9, N'Rowan', N'VAI6XR', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (10, N'Kirby', N'DNX6JK', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (11, N'Tanisha', N'XWU7JP', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (12, N'Howard', N'TSR5MR', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (13, N'Tana', N'EHS8CM', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (14, N'Hadassah', N'YOY7ZW', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (15, N'Echo', N'IGE8TN', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (16, N'Slade', N'OFO6QS', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (17, N'Devin', N'IBM6RZ', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (18, N'Rowan', N'ZYS9VI', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (19, N'Rafael', N'WZA0IH', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (20, N'Madaline', N'QMW4EN', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (21, N'Vera', N'CZB2VM', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (22, N'Declan', N'ZKE7QZ', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (23, N'Katell', N'SFS0IW', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (24, N'Summer', N'PSQ7LC', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (25, N'Robin', N'KIS9AF', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (26, N'Dominique', N'IKV0IX', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (27, N'Adam', N'123456', N'1')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (28, N'mra', N'mra', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (29, N'mrb', N'123', N'0')
INSERT [dbo].[Account] ([idAcc], [user], [pass], [roll]) VALUES (30, N'Camden', N'123', N'0')
GO
INSERT [dbo].[Category] ([cid], [nameCate]) VALUES (1, N'Nike Airforce')
INSERT [dbo].[Category] ([cid], [nameCate]) VALUES (2, N'Nike AirMax')
INSERT [dbo].[Category] ([cid], [nameCate]) VALUES (3, N'Nike Jordan')
INSERT [dbo].[Category] ([cid], [nameCate]) VALUES (11, N'Hot trend 2024')
INSERT [dbo].[Category] ([cid], [nameCate]) VALUES (12, N'Nike moi 2024')
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([idDis], [codeDis], [disAmount], [quantity], [dateStart], [dateEnd]) VALUES (2, N'giamgia11', CAST(10.00 AS Decimal(10, 2)), 5, CAST(N'2024-02-11' AS Date), CAST(N'2024-05-01' AS Date))
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
INSERT [dbo].[DiscountPro] ([idDis], [idPro]) VALUES (2, 6)
INSERT [dbo].[DiscountPro] ([idDis], [idPro]) VALUES (2, 11)
INSERT [dbo].[DiscountPro] ([idDis], [idPro]) VALUES (2, 12)
GO
SET IDENTITY_INSERT [dbo].[InforAccount] ON 

INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (1, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 1)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (2, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 2)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (3, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 3)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (4, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 4)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (5, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 5)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (6, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 6)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (8, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 8)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (9, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 9)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (10, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 10)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (11, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 11)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (12, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 12)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (13, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 13)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (14, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 14)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (15, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 15)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (16, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 16)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (17, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 17)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (18, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 18)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (19, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 19)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (20, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 20)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (21, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 21)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (22, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 22)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (23, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 23)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (24, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 24)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (25, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 25)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (26, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 26)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (27, N'Nguyen Van Anh', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 27)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (28, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 28)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (29, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 29)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (30, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0123456722', N'Ha Noi', 30)
INSERT [dbo].[InforAccount] ([idInfor], [name], [email], [SĐT], [Address], [idAccount]) VALUES (31, N'Nguyen Van A', N'dongnuc2k3@gmail.com', N'0983728284', N'Ha Noi', 1)
SET IDENTITY_INSERT [dbo].[InforAccount] OFF
GO
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (1, CAST(N'2023-07-11' AS Date), CAST(200.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (2, CAST(N'2023-03-01' AS Date), CAST(250.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (3, CAST(N'2023-11-06' AS Date), CAST(300.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (4, CAST(N'2023-09-11' AS Date), CAST(500.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (5, CAST(N'2024-02-11' AS Date), CAST(200.00 AS Decimal(10, 2)), 21)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (6, CAST(N'2023-10-01' AS Date), CAST(350.00 AS Decimal(10, 2)), 16)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (7, CAST(N'2023-07-29' AS Date), CAST(430.00 AS Decimal(10, 2)), 19)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (8, CAST(N'2024-01-11' AS Date), CAST(350.00 AS Decimal(10, 2)), 11)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (9, CAST(N'2023-05-11' AS Date), CAST(340.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (10, CAST(N'2023-06-03' AS Date), CAST(140.00 AS Decimal(10, 2)), 15)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (11, CAST(N'2023-01-04' AS Date), CAST(520.00 AS Decimal(10, 2)), 20)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (12, CAST(N'2024-04-23' AS Date), CAST(100.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (13, CAST(N'2024-04-23' AS Date), CAST(120.00 AS Decimal(10, 2)), 28)
INSERT [dbo].[Order] ([idOrder], [OrderDate], [totalBill], [idAccount]) VALUES (14, CAST(N'2024-04-23' AS Date), CAST(120.00 AS Decimal(10, 2)), 28)
GO
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (1, 1, 1, CAST(120.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (1, 5, 2, CAST(100.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (2, 4, 1, CAST(250.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (3, 5, 1, CAST(200.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (3, 6, 1, CAST(300.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (4, 5, 1, CAST(200.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (4, 9, 2, CAST(250.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (5, 5, 1, CAST(400.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (7, 1, 1, CAST(400.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (8, 9, 1, CAST(300.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (9, 4, 1, CAST(200.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (10, 5, 2, CAST(240.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (11, 5, 2, CAST(300.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (11, 8, 1, CAST(200.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (13, 1, 1, CAST(120.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[OrderDetail] ([idOrder], [idPro], [quantity], [price], [Size]) VALUES (14, 1, 1, CAST(120.00 AS Decimal(10, 2)), N'39')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (1, N'Giày Nike Air Force One Trang 2024', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động..', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (2, N'Giày Nike Air Force One Trang', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động.', N'images\Airforce\images(9).jpg', 2)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (3, N'Giày Nike Air Force One 1', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (4, N'Giày Nike Air Force One 2', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (5, N'Giày Nike Air Force One 3', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (6, N'Giày Nike Air Force One 4', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (7, N'Giày Nike Air Force One 5', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (8, N'Giày Nike Air Force One 6', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (9, N'Giày Nike Air Force One 7', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (10, N'Giày Nike Air Force One 8', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (11, N'Giày Nike Air Force One 9', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (12, N'Giày Nike Air Force One 10', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động', N'images\Airforce\images(9).jpg', 1)
INSERT [dbo].[Product] ([pid], [pName], [description], [image], [cId]) VALUES (28, N'giay the thao', N'thich hop di da bong', N'images\Airforce\images(9).jpg', 11)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (1, N'39', CAST(120.00 AS Decimal(10, 2)), 20, 1)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (2, N'40', CAST(150.00 AS Decimal(10, 2)), 20, 1)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (3, N'41', CAST(130.00 AS Decimal(10, 2)), 20, 1)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (4, N'39', CAST(200.00 AS Decimal(10, 2)), 20, 2)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (5, N'40', CAST(210.00 AS Decimal(10, 2)), 20, 2)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (6, N'41', CAST(220.00 AS Decimal(10, 2)), 20, 2)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (7, N'39', CAST(170.00 AS Decimal(10, 2)), 20, 3)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (8, N'40', CAST(180.00 AS Decimal(10, 2)), 20, 3)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (9, N'41', CAST(190.00 AS Decimal(10, 2)), 20, 3)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (10, N'39', CAST(300.00 AS Decimal(10, 2)), 20, 4)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (11, N'40', CAST(310.00 AS Decimal(10, 2)), 20, 4)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (12, N'41', CAST(320.00 AS Decimal(10, 2)), 20, 4)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (13, N'36', CAST(180.00 AS Decimal(10, 2)), 20, 5)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (14, N'37', CAST(150.00 AS Decimal(10, 2)), 20, 5)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (15, N'38', CAST(160.00 AS Decimal(10, 2)), 20, 5)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (16, N'40', CAST(155.00 AS Decimal(10, 2)), 20, 6)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (17, N'41', CAST(130.00 AS Decimal(10, 2)), 20, 6)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (18, N'42', CAST(120.00 AS Decimal(10, 2)), 20, 6)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (19, N'36', CAST(170.00 AS Decimal(10, 2)), 20, 7)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (20, N'40', CAST(150.00 AS Decimal(10, 2)), 20, 7)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (21, N'43', CAST(130.00 AS Decimal(10, 2)), 20, 7)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (22, N'38', CAST(120.00 AS Decimal(10, 2)), 20, 8)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (23, N'39', CAST(150.00 AS Decimal(10, 2)), 20, 8)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (24, N'41', CAST(200.00 AS Decimal(10, 2)), 20, 8)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (25, N'37', CAST(300.00 AS Decimal(10, 2)), 20, 9)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (26, N'40', CAST(310.00 AS Decimal(10, 2)), 20, 9)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (27, N'43', CAST(350.00 AS Decimal(10, 2)), 20, 9)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (28, N'39', CAST(210.00 AS Decimal(10, 2)), 20, 10)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (29, N'40', CAST(150.00 AS Decimal(10, 2)), 20, 10)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (30, N'41', CAST(190.00 AS Decimal(10, 2)), 20, 10)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (31, N'39', CAST(210.00 AS Decimal(10, 2)), 20, 11)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (32, N'42', CAST(190.00 AS Decimal(10, 2)), 20, 11)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (33, N'43', CAST(160.00 AS Decimal(10, 2)), 20, 11)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (34, N'39', CAST(330.00 AS Decimal(10, 2)), 20, 12)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (35, N'40', CAST(280.00 AS Decimal(10, 2)), 20, 12)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (36, N'41', CAST(290.00 AS Decimal(10, 2)), 20, 12)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (49, N'35', CAST(320.00 AS Decimal(10, 2)), 12, 28)
INSERT [dbo].[Size] ([idSize], [nameSize], [price], [quantity], [idPro]) VALUES (50, N'36', CAST(300.00 AS Decimal(10, 2)), 15, 28)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
ALTER TABLE [dbo].[AccountDis]  WITH CHECK ADD FOREIGN KEY([idAcc])
REFERENCES [dbo].[Account] ([idAcc])
GO
ALTER TABLE [dbo].[AccountDis]  WITH CHECK ADD FOREIGN KEY([idDis])
REFERENCES [dbo].[Discount] ([idDis])
GO
ALTER TABLE [dbo].[DiscountPro]  WITH CHECK ADD FOREIGN KEY([idDis])
REFERENCES [dbo].[Discount] ([idDis])
GO
ALTER TABLE [dbo].[DiscountPro]  WITH CHECK ADD FOREIGN KEY([idPro])
REFERENCES [dbo].[Product] ([pid])
GO
ALTER TABLE [dbo].[InforAccount]  WITH CHECK ADD FOREIGN KEY([idAccount])
REFERENCES [dbo].[Account] ([idAcc])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([idAccount])
REFERENCES [dbo].[Account] ([idAcc])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([idOrder])
REFERENCES [dbo].[Order] ([idOrder])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([idPro])
REFERENCES [dbo].[Product] ([pid])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([cId])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD FOREIGN KEY([idPro])
REFERENCES [dbo].[Product] ([pid])
GO
USE [master]
GO
ALTER DATABASE [PRJ301BL5] SET  READ_WRITE 
GO
