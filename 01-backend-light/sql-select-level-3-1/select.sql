SELECT
  Country,
  COUNT(*) AS "Customer Amount"
FROM
  Customers
GROUP BY
  Country
HAVING
  COUNT(*) > 5;

SELECT
  *
FROM
  Orders
WHERE
  OrderDate BETWEEN "1996-08-01" AND "1996-09-01";

-- % Achtung: Datumsformat je nach SQL-Dialekt unterschiedlich!
-- % In W3Schools z.B. #MM/DD/YYYY# statt "YYYY-MM-DD"
SELECT
  CustomerID,
  COUNT(*) AS OrderCount
FROM
  Orders
GROUP BY
  CustomerID
HAVING
  COUNT(*) > 1;

SELECT
  TOP 1 CustomerID,
  COUNT(OrderID) AS Orders
FROM
  Orders
GROUP BY
  CustomerID
ORDER BY
  COUNT(OrderID) DESC;

SELECT
  TOP 1 Customers.CustomerID,
  Customers.CustomerName,
  COUNT(Orders.OrderID) AS OrderCount
FROM
  Customers
  INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY
  Customers.CustomerID,
  Customers.CustomerName
ORDER BY
  COUNT(Orders.OrderID) DESC;

SELECT
  Products.ProductName
FROM
  Products
  INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
  Suppliers.SupplierName = "Heli Süßwaren GmbH & Co. KG";

SELECT
  ROUND(AVG(Price), 2) AS "Average Product Price"
FROM
  Products;

SELECT
  ROUND(MAX(Price), 2) AS "Max Product Price"
FROM
  Products;

SELECT
  *
FROM
  Suppliers
WHERE
  Phone NOT LIKE "%(%)%";

SELECT
  Country,
  COUNT(SupplierID) AS SupplierCount
FROM
  Suppliers
GROUP BY
  Country
ORDER BY
  COUNT(SupplierID) DESC,
  Country ASC;