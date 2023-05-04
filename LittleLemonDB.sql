-- create procedure getMaxQuantity()
-- select  max(Quantity) from Orders

-- call getMaxQuantity()


-- prepare GetOrderDetails from "Select OrderID, Quantity, Cost from Orders where BookingID = ? ";

-- set @id =1;
-- execute GetOrderDetails using @id

DELIMITER $$
create procedure CancelOrder(in id INT, out stment varchar(255))
BEGIN
select * from Orders where OrderID = id;
set stment = concat("Order with id", id ,"deleted");
select stment;
END $$

DELIMITER ;