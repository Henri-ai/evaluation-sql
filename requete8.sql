SELECT MONTH(orders.OrderDate) AS 'Mois 97',SUM(`order details`.`UnitPrice`*`order details`.`Quantity`) AS 'Montant Ventes 97'
FROM `order details` 
JOIN orders ON `order details`.`OrderID`=orders.OrderID 
WHERE YEAR(orders.OrderDate)='1997'
GROUP BY MONTH(orders.OrderDate) 

