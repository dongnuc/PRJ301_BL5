IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ECommerceDB')
BEGIN
    ALTER DATABASE ECommerceDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ECommerceDB;
END
GO

CREATE DATABASE ECommerceDB;
GO

USE ECommerceDB;
GO

CREATE TABLE Category (
    cId INT IDENTITY(1,1) PRIMARY KEY,
    [cName] NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE Product (
    pId INT IDENTITY(1,1) PRIMARY KEY,
    [pName] NVARCHAR(100) NOT NULL,
    [Image] NVARCHAR(255),
    [Description] NVARCHAR(MAX),
    Price DECIMAL(18, 2),
    Quantity INT,
    CategoryId INT,
    FOREIGN KEY (CategoryId) REFERENCES Category(cId)
);
GO

CREATE TABLE Account (
    [uID] INT IDENTITY(1,1) PRIMARY KEY,
    [User] NVARCHAR(50) NOT NULL,
    [Pass] NVARCHAR(50) NOT NULL,
    Roll INT NOT NULL
);
GO

CREATE TABLE [Order] (
    oId INT PRIMARY KEY,
    [AccountId] INT NOT NULL,
    OrderDate DATETIME,
    FOREIGN KEY ([AccountId]) REFERENCES Account([uID])
);
GO

CREATE TABLE OrderDetail (
    OrderId INT,
    ProductId INT,
    Quantity INT,
    Price DECIMAL(18, 2),
    PRIMARY KEY (OrderId, ProductId),
    FOREIGN KEY (OrderId) REFERENCES [Order](oId),
    FOREIGN KEY (ProductId) REFERENCES Product(pId)
);
GO

SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (1, N'Adam', N'123456', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (2, N'Anjolie', N'SNZ6HE', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (3, N'Ferris', N'RXH3XJ', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (4, N'Katell', N'HWV8ZN', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (5, N'Zahir', N'NPX7OF', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (6, N'Conan', N'WIZ5VZ', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (7, N'Cade', N'ZSW2LU', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (8, N'Micah', N'RVV5SR', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (9, N'Rowan', N'VAI6XR', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (10, N'Kirby', N'DNX6JK', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (11, N'Tanisha', N'XWU7JP', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (12, N'Howard', N'TSR5MR', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (13, N'Tana', N'EHS8CM', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (14, N'Hadassah', N'YOY7ZW', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (15, N'Echo', N'IGE8TN', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (16, N'Slade', N'OFO6QS', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (17, N'Devin', N'IBM6RZ', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (18, N'Rowan', N'ZYS9VI', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (19, N'Rafael', N'WZA0IH', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (20, N'Madaline', N'QMW4EN', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (21, N'Vera', N'CZB2VM', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (22, N'Declan', N'ZKE7QZ', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (23, N'Katell', N'SFS0IW', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (24, N'Summer', N'PSQ7LC', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (25, N'Robin', N'KIS9AF', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (26, N'Dominique', N'IKV0IX', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (27, N'admin', N'123', 1)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (28, N'mra', N'mra', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (29, N'mrb', N'123', 0)
INSERT [dbo].[Account] ([uID], [User], [Pass],[Roll]) VALUES (30, N'Camden', N'123', 0)

SET IDENTITY_INSERT [dbo].[Account] OFF

SET IDENTITY_INSERT [dbo].[Category] ON

INSERT [dbo].[Category] ([cId], [cName]) VALUES (1, N'Nike Airforce')
INSERT [dbo].[Category] ([cId], [cName]) VALUES (2, N'Nike AirMax')
INSERT [dbo].[Category] ([cId], [cName]) VALUES (3, N'Nike Jordan')

SET IDENTITY_INSERT [dbo].[Category] OFF

SET IDENTITY_INSERT [dbo].[Product] ON 
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(1,N'Giày Nike Air Force One Trắng',N'D:\Image Prj301\Airforce\images (1).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',300,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(2,N'Giày Nike Air Force One 2',N'D:\Image Prj301\Airforce\images (2).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',100,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(3,N'Giày Nike Air Force One 3',N'D:\Image Prj301\Airforce\images (3).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',110,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(4,N'Giày Nike Air Force One 4',N'D:\Image Prj301\Airforce\images (4).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',200,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(5,N'Giày Nike Air Force One 5',N'D:\Image Prj301\Airforce\images (5).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',320,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(6,N'Giày Nike Air Force One 6',N'D:\Image Prj301\Airforce\images (6).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',140,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(7,N'Giày Nike Air Force One 7',N'D:\Image Prj301\Airforce\images (7).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',180,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(8,N'Giày Nike Air Force One 8',N'D:\Image Prj301\Airforce\images (8).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',115,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(9,N'Giày Nike Air Force One 9',N'D:\Image Prj301\Airforce\images (9).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',400,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(10,N'Giày Nike Air Force One 10',N'D:\Image Prj301\Airforce\images (3).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',260,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(11,N'Giày Nike Air Force One 11',N'D:\Image Prj301\Airforce\images (1).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',270,20,1)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(12,N'Giày Nike Air Force One 12',N'D:\Image Prj301\Airforce\images (2).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',300,20,1)

--products category 3

INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(13,N'Giày Nike Jordan Panda',N'D:\Image Prj301\Jordan\images (1).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',350,20,3)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(14,N'Giày Nike Air Jordan 14',N'D:\Image Prj301\Jordan\images (2).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',320,20,3)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(15,N'Giày Nike Air Jordan 15',N'D:\Image Prj301\Jordan\images (3).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',250,20,3)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(16,N'Giày Nike Air Jordan 16',N'D:\Image Prj301\Jordan\images (4).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',260,20,3)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(17,N'Giày Nike Air Jordan 17',N'D:\Image Prj301\Jordan\images (5).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',370,20,3)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(18,N'Giày Nike Air Jordan 18',N'D:\Image Prj301\Jordan\images (6).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',430,20,3)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(19,N'Giày Nike Air Jordan 19',N'D:\Image Prj301\Jordan\images (7).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',410,20,3)

-- product category 2
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(20,N'Giày Nike Air Max 20',N'D:\Image Prj301\AirMAx\images (1).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',100,20,2)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(21,N'Giày Nike Air Max 21',N'D:\Image Prj301\AirMAx\images (2).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',140,20,2)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(22,N'Giày Nike Air Max 22',N'D:\Image Prj301\AirMAx\images (3).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',280,20,2)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(23,N'Giày Nike Air Max 23',N'D:\Image Prj301\AirMAx\images (4).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',99,20,2)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(24,N'Giày Nike Air Max 24',N'D:\Image Prj301\AirMAx\images (5).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',110,20,2)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(25,N'Giày Nike Air Max 25',N'D:\Image Prj301\AirMAx\images (6).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',180,20,2)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(26,N'Giày Nike Air Max 26',N'D:\Image Prj301\AirMAx\images (7).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',130,20,2)
INSERT INTO [dbo].[Product] ([pId], [pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(27,N'Giày Nike Air Max 27',N'D:\Image Prj301\AirMAx\images (8).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',200,20,2)
SET IDENTITY_INSERT [dbo].[Product] OFF 

INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20151108,1,CAST(N'2015-11-08T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20150918,2,CAST(N'2015-09-18T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20150108,3,CAST(N'2015-01-08T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20151128,11,CAST(N'2015-11-28T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20181208,17,CAST(N'2018-12-08T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20160408,22,CAST(N'2016-04-08T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20140808,9,CAST(N'2014-08-08T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20151112,23,CAST(N'2015-11-12T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20150518,19,CAST(N'2015-05-18T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20150608,14,CAST(N'2017-06-08T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Order]([oId],[AccountId],[OrderDate]) VALUES (20150208,29,CAST(N'2015-02-08T00:00:00.000' AS DateTime))

INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20151108,1,1,300)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20151108,20,1,100)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20150608,14,1,320)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20160408,16,3,260)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20150108,25,1,180)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20160408,22,1,280)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20151112,12,1,300)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20140808,12,2,300)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20181208,16,1,260)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20151128,10,1,260)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20150918,9,1,400)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20150918,3,2,110)
INSERT INTO [dbo].[OrderDetail]([OrderId],[ProductId],[Quantity],[Price])VALUES(20160408,13,1,350)



