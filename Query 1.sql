
select saledate,amount,customers from sales;

select saledate,amount,Boxes,Amount/Boxes as amountperboxes from sales;

select * from sales where GeoID = 'g1' order by PID,Amount desc;

select * from sales where Amount > 10000 and SaleDate >= '2022-01-01';

select * from sales where boxes between 0 and 50;

select * from sales where SaleDate ;

select * from sales where year(saledate) = '2021';

select saledate, amount , boxes , weekday(saledate)  as 'day of week'
from sales
where weekday(saledate)= 4;

select * from people 
where team = 'Delish'  or team = 'Jucies';

select * from people where team in ('Delish','Jucies');

select * from people where salesperson like 'B%';

select SaleDate,Amount,
	case when amount <1000 then 'under 1K'
		 when amount < 5000 then 'under 5 K'
         when amount <10000 then 'under 10K'
         else '20K or more '
         end 
         as 'amount category'
         
from sales;

----------



