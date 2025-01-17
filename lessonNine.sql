В заданиях 8.3.2 и 8.3.3 вместо [Order Details].UnitPrice формировал колонку Products.UnitPrice

9.4.1
SELECT t1.ContactName, t2.ContactName, t2.Region
FROM Customers t1, Customers t2
WHERE t1.CustomerID <> t2.CustomerID AND t1.Region IS NULL AND t2.Region IS NULL;

9.4.2
SELECT t1.OrderID, t1.ShipRegion
FROM Orders t1
WHERE t1.CustomerID = ANY
(SELECT CustomerID FROM Customers
WHERE Region IS NOT NULL);

9.4.3
SELECT OrderID, Freight
FROM Orders
WHERE Freight > ALL
(SELECT UnitPrice FROM Products);