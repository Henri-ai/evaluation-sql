SELECT customers.CompanyName AS 'Client',COUNT(orders.ShipVia) AS 'Nbre commandes' 
FROM customers JOIN orders ON customers.CustomerID=orders.CustomerID 
WHERE customers.Country='France' 
GROUP BY customers.CompanyName
HAVING COUNT(orders.ShipVia)>10
