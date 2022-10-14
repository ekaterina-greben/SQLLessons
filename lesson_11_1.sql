USE WideWorldImporters;

SELECT * FROM Sales.OrderLines
WHERE UnitPrice > 100;

SELECT TOP (100) OrderID, StockItemID, [Description], Quantity, UnitPrice FROM Sales.OrderLines;

SELECT TOP (100) OrderID, StockItemID, [Description], Quantity, UnitPrice, 
            (UnitPrice * Quantity) AS summ FROM Sales.OrderLines;

SELECT TOP (100)
    ol.OrderID, ol.[Description], ol.Quantity, ol.UnitPrice, si.StockItemName,
    (ol.UnitPrice * ol.Quantity) AS summ
FROM Sales.OrderLines ol, Warehouse.StockItems si
WHERE ol.StockItemID = si.StockItemID

SELECT COUNT (*)
FROM Sales.OrderLines ol, Warehouse.StockItems si
WHERE ol.StockItemID = si.StockItemID



