USE WideWorldImporters;

-- select * from Sales.Customers 
-- where CustomerName like 'Wingtip Toys %'

-- select so.OrderID, so.OrderDate, sc.CustomerName, /* sol.UnitPrice, sol.Quantity, */ 
-- sum(sol.Quantity * sol.UnitPrice)Total
-- from Sales.OrderLines sol, Sales.Orders so, Sales.Customers sc
-- where so.OrderID = sol.OrderID and so.CustomerID = sc.CustomerID
-- group by so.OrderID, so.OrderDate, sc.CustomerName 
-- order by so.OrderID
 
-- select so.OrderID, so.OrderDate, sc.CustomerName, /* sol.UnitPrice, sol.Quantity, */ 
-- sum(sol.Quantity * sol.UnitPrice)Total
-- from Sales.OrderLines sol, Sales.Orders so, Sales.Customers sc
-- where 
--       so.OrderID = sol.OrderID 
--       and so.CustomerID = sc.CustomerID
--       and (so.OrderDate between '2014-12-01' and '2014-12-31')
-- group by so.OrderID, so.OrderDate, sc.CustomerName 
-- order by OrderDate;  

-- select sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total
-- from Sales.OrderLines sol, Sales.Orders so, Sales.Customers sc
-- where 
--       so.OrderID = sol.OrderID 
--       and so.CustomerID = sc.CustomerID
-- group by sc.CustomerName 
-- order by total desc;

-- select TOP 20 sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total
-- from Sales.OrderLines sol, Sales.Orders so, Sales.Customers sc
-- where 
--       so.OrderID = sol.OrderID 
--       and so.CustomerID = sc.CustomerID
-- group by sc.CustomerName 
-- order by total desc;

select AVG(total) from (
    select so.OrderID, so.OrderDate, sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total
from Sales.OrderLines sol, Sales.Orders so, Sales.Customers sc
where 
      so.OrderID = sol.OrderID 
      and so.CustomerID = sc.CustomerID
group by so.OrderID, so.OrderDate, sc.CustomerName ) res 