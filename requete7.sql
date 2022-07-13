SELECT SUM(`order details`.`UnitPrice`*`order details`.`Quantity`) AS 'Montant Ventes 97'
FROM `order details`
JOIN orders ON `order details`.`OrderID`=orders.OrderID
WHERE orders.OrderDate LIKE '1997%'
