SELECT customers.Country AS 'Pays'
FROM customers
JOIN orders ON customers.CustomerID=orders.CustomerID 
JOIN `order details` ON orders.OrderID=`order details`.`OrderID` 
JOIN products ON `order details`.`ProductID`=products.ProductID 
JOIN suppliers ON products.SupplierID=suppliers.SupplierID 
WHERE suppliers.CompanyName='Exotic liquids'
GROUP BY customers.Country
