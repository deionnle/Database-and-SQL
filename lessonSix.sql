6.3.1
SELECT ContactType,
    COUNT(ContactType) as Quantity
FROM Contacts
GROUP BY ContactType

6.3.2
SELECT CategoryID,
    AVG(UnitPrice) as AveragePrice
FROM Products
GROUP BY CategoryID
ORDER BY AveragePrice;