13.3.1
UPDATE [Order Details]
SET Discount = 0.20
WHERE ProductID IN
(SELECT ProductID IN Products WHERE UnitsInStock > 50)

13.3.2
UPDATE Contacts
SET City = 'Piter', Country = 'Russia'
WHERE City = 'Berlin' AND Country = 'Germany';

13.3.3
INSERT INTO Shippers (CompanyName, Phone)
VALUES ('YandexDelivery', '+7123456789')

INSERT INTO Shippers (CompanyName, Phone)
VALUES ('DeliveryClub', '+777777777777')

DELETE FROM Shippers
WHERE Phone LIKE '+7%';

Записи удалены по критерию телефонного кода страны.
