8.3.1
SELECT Products.ProductName, Categories.CategoryName
FROM Products, Categories
WHERE Categories.CategoryID = Products.CategoryID;

8.3.2
SELECT Products.ProductName, Products.UnitPrice
FROM Products, [Order Details]
WHERE Products.ProductID = [Order Details].ProductID AND [Order Details].UnitPrice < 20;

8.3.3
SELECT Products.ProductName, Products.UnitPrice, Categories.CategoryName
FROM Products, [Order Details], Categories
WHERE Products.ProductID = [Order Details].ProductID AND [Order Details].UnitPrice < 20
AND Categories.CategoryID = Products.CategoryID;
