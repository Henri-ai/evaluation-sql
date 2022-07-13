SELECT products.ProductName AS 'Produit',products.UnitPrice AS 'Prix'
FROM products
JOIN suppliers ON products.SupplierID=suppliers.SupplierID
WHERE suppliers.CompanyName='Exotic Liquids'
