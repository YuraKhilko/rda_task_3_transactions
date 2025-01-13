-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)

-- Start the transaction 
START TRANSACTION; 

-- And some data should be created inside the transaction 
INSERT INTO Orders ( CustomerID, Date)
VALUES ( 1, '2025-01-13');
update Products p
set p.WarehouseAmount = 41
where p.id = '1';

INSERT INTO OrderItems ( OrderID, ProductID,Count)
VALUES ( 1, 1,1);

COMMIT; 