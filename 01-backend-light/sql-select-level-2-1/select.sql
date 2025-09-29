SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE "A%";

SELECT
  *
FROM
  Customers
ORDER BY
  PostalCode DESC;

SELECT
  *
FROM
  Customers
WHERE
  Country = "Mexico"
ORDER BY
  City ASC,
  CustomerName ASC;

SELECT
  *
FROM
  Customers
WHERE
  Country = "Germany"
  OR Country = "UK"
  OR Country = "France";

SELECT
  *
FROM
  Products
WHERE
  Unit LIKE "%bottle%";

SELECT
  *
FROM
  Products
WHERE
  Price BETWEEN 20 AND 30;

SELECT
  CategoryID,
  COUNT(*) AS "Product Amount"
FROM
  Products
GROUP BY
  CategoryID;