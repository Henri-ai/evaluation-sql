SELECT customers.CompanyName AS 'Société',customers.ContactName AS 'Contact',customers.ContactTitle AS 'Fonction',customers.Phone AS 'Téléphone' 
FROM customers
WHERE customers.Country='France'
