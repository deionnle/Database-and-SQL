12.3.1
INSERT INTO Employees (LastName, FirstName, Title, TitleOFCourtesy, City, Region, Country)
VALUES ('Parker', 'Piter', 'Sales Manager', 'Mr.', New York, 'WA', 'USA');

12.3.2
INSERT INTO EmployeeTerritories (EmployeeID, TerritoryID)
VALUES ('11', '10019');

12.3.3
INSERT INTO Orders (CustomerID, EmployeeID, ShipVia, ShipCity, ShipCountry, ShipName, Freight)
VALUES ('HILAA', '11', '3', 'Los Angeles', 'USA', 'Energy', '199');

При добавлении новой записи PK-ключ OrderID генерируется автоматически, а конфликты могут возникнуть только по
FK-ключам CustomerID, EmployeeID, ShipVia. Если указать несуществующее значение, получим ошибку, например
при неправильном CustomerID:
The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Orders_Customers".