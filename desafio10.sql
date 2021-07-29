SELECT p.ProductName AS Produto, MIN(d.Quantity) AS Mínima, MAX(d.Quantity)AS Máxima, ROUND(AVG(d.Quantity), 2) AS Média FROM w3schools.products p INNER JOIN order_details d ON d.ProductID = p.ProductID GROUP BY p.ProductName HAVING ROUND(AVG(d.Quantity), 2) > 20 ORDER BY ROUND(AVG(d.Quantity), 2), p.ProductName;
