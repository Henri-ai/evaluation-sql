SELECT customers.CompanyName AS 'Client',SUM(`order details`.`UnitPrice`*`order details`.`Quantity`)AS 'CA',customers.Country AS 'Pays'
FROM customers 
JOIN orders ON customers.CustomerID=orders.CustomerID 
JOIN `order details`ON orders.OrderID=`order details`.`OrderID` 
GROUP BY customers.CompanyName 
HAVING SUM(`order details`.`UnitPrice`*`order details`.`Quantity`)>30000
ORDER BY SUM(`order details`.`UnitPrice`*`order details`.`Quantity`)DESC
