10.4.1
SELECT Products.ProductName, [Order Details].UnitPrice
FROM Products INNER JOIN [Order Details]
ON Products.ProductID = [Order Details].ProductID AND [Order Details].UnitPrice < 20;

10.4.2
FULL JOIN запрос выдает некоторым покупателям NULL в столбце Freight т.к. они ничего не заказывали.

10.4.3
SELECT Orders.Freight, Customers.CompanyName
FROM Orders CROSS JOIN Customers
WHERE Orders.CustomerID = Customers.CustomerID
ORDER BY Freight;

10.4.4
SELECT Products.ProductName, [Order Details].UnitPrice
FROM Products INNER JOIN [Order Details]
ON Products.ProductID = [Order Details].ProductID