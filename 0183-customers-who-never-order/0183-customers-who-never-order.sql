# Write your MySQL query statement below

select name as Customers from customers cus
left join
orders ord
on cus.id = ord.customerId
where customerId is null

