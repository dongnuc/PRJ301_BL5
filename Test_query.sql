select Top 5 od.OrderId, SUM(od.Quantity) As quantity
from OrderDetail od join [Order] o ON od.OrderId = o.oId
group by od.OrderId
order by o.OrderDate DESC, quantity ASC


SELECT TOP 4 p.pId, SUM(od.Quantity) AS TotalQuantitySold
FROM Product p
JOIN OrderDetail od ON p.pId = od.ProductId
JOIN [Order] o ON od.OrderId = o.oId
GROUP BY p.pId
ORDER BY MAX(o.OrderDate) DESC, SUM(od.Quantity) ASC;



select * from [Order] o
where YEAR(o.OrderDate) = 2017 AND MONTH(o.OrderDate) = 6 AND DAY(o.OrderDate) = 8
order by o.OrderDate Desc

select * from OrderDetail


select * from Account where [User] = 'Adam' and Pass = '123456'

ALTER TABLE Account
ADD Email NVARCHAR(255);

ALTER TABLE Product
DROP COLUMN Email;

SELECT 
    COLUMN_NAME,        -- Tên cột
    DATA_TYPE,          -- Kiểu dữ liệu của cột
    CHARACTER_MAXIMUM_LENGTH,  -- Độ dài tối đa của cột (chỉ áp dụng cho các kiểu dữ liệu ký tự)
    NUMERIC_PRECISION,  -- Số chữ số tối đa được lưu (chỉ áp dụng cho các kiểu dữ liệu số)
    NUMERIC_SCALE,      -- Số chữ số phần sau dấu thập phân (chỉ áp dụng cho các kiểu dữ liệu số)
    IS_NULLABLE         -- Cho biết liệu cột có cho phép giá trị null hay không
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'Account' AND
    COLUMN_NAME = 'Pass';


select * from Account
select top 3  * from Product

select * from Product

SET IDENTITY_INSERT [dbo].[Product] ON

INSERT INTO [dbo].[Product] ([pName],[Image],[Description],[Price],[Quantity],[CategoryId]) VALUES
(N'Giày Nike Air Force One Hồng',N'images\Airforce\images(9).jpg',N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động',N'350',21,1)


delete Product where pId = 31

select * from Product ORDER BY Price DESC, pId ASC
OFFSET  ROWS FETCH NEXT 3 ROWS ONLY

select * from Product ORDER BY Price DESC, pId ASC

ALTER TABLE [Order]
ADD TotalBill DECIMAL(18, 2);

select COUNT(ord.oid)
from [Order] ord

select * from Account
delete Account where uID = 36

select * from OrderDetail where OrderId = 17

select * from [Order]
select * from Product
