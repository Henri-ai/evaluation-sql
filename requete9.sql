SELECT MAX(orders.OrderDate) AS 'Date de dernière commande'
FROM orders
JOIN customers ON orders.CustomerID=customers.CustomerID
JOIN `order details` ON orders.OrderID=`order details`.`OrderID`
WHERE customers.CompanyName LIKE 'Du monde entier%'
