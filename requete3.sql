SELECT suppliers.CompanyName AS 'Fournisseur',COUNT(products.SupplierID) AS 'Nbre produits'
FROM products
JOIN suppliers ON products.SupplierID=suppliers.SupplierID
WHERE suppliers.Country='France'
GROUP BY products.SupplierID
ORDER BY COUNT(products.SupplierID) DESC
