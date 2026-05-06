WITH MonthlySales AS (
  SELECT
    TRUNC(`Order Date`, 'MM') AS SalesMonth,
    Category,
    SUM(Sales) AS TotalSales
  FROM workspace.default.superstore_sales
    GROUP BY 1, 2
)
SELECT
  SalesMonth,
  Category,
  TotalSales,
  LAG(TotalSales) OVER (PARTITION BY Category ORDER BY SalesMonth) AS PreviousMonthSales,
  ((TotalSales - LAG(TotalSales) OVER (PARTITION BY Category ORDER BY SalesMonth))/ LAG(TotalSales) OVER (PARTITION BY Category ORDER BY SalesMonth))* 100 AS MoM_Growth_Percentage
  FROM MonthlySales
  ORDER BY SalesMonth, Category;
