SELECT * FROM FactInternetSales
SELECT * FROM DimProductSubcategory
SELECT * FROM DimProduct
SELECT * FROM DimProductCategory
SELECT * FROM DimCustomer
SELECT * FROM DimGeography


-- COLUNAS
 
-- SalesOrderNumber                    (FactInternetSales)
-- OrderDate                           (FactInternetSales)
-- EnglishProductCategoryName          (DimProductCategory) ****
-- CustomerKey                         (DimCustomer)
-- FirstName + ' ' + LastName          (DimCustomer)
-- Gender                              (DimCustomer)
-- EnglishCountryRegionName            (DimGeography)
-- OrderQuantity                       (FactInternetSales)
-- SalesAmount                         (FactInternetSales)
-- TotalProductCost                    (FactInternetSales)
-- SalesAmount - TotalProductCost      (FactInternetSales)

CREATE OR ALTER VIEW RESULTADOS_ADW AS
SELECT
	FIS.SalesOrderNumber AS 'Nº PEDIDO',
	FIS.OrderDate AS 'DATA PEDIDO',
	PC.EnglishProductCategoryName AS 'CATEGORIA PRODUTO',
	C.CustomerKey AS 'ID CLIENTE',
	C.FirstName + ' ' + LastName AS 'NOME CLIENTE',
	REPLACE(REPLACE(C.Gender, 'M', 'Masculino'), 'F', 'Feminino') AS 'GENERO',
	G.EnglishCountryRegionName AS 'PAIS',
	FIS.OrderQuantity AS 'QTD. VENDIDA',
	FIS.SalesAmount AS 'RECEITA VENDIDA',
	FIS.TotalProductCost AS 'CUSTO VENDA',
	FIS.SalesAmount - TotalProductCost AS 'LUCRO VENDA'
FROM FactInternetSales FIS
INNER JOIN DimProduct P On FIS.ProductKey=P.ProductKey
	INNER JOIN DimProductSubcategory PS On P.ProductSubcategoryKey=PS.ProductSubcategoryKey
		INNER JOIN DimProductCategory PC On PS.ProductCategoryKey=PC.ProductCategoryKey
INNER JOIN DimCustomer C On FIS.CustomerKey=C.CustomerKey
	INNER JOIN DimGeography G On C.GeographyKey=G.GeographyKey



-- Alterando o banco de dados e atualizando no Power BI

BEGIN TRANSACTION T1
	
	UPDATE FactInternetSales
	SET OrderQuantity = 1

COMMIT TRANSACTION T1

