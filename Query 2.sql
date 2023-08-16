select *
from sales as s 
 left join products as p on s.PID = p.PID;
 
 select s.SPID, p.SPID,s.PID,pr.PID 
 from sales as s
 join people as p on s.SPID = p.SPID
 join products as pr on s.PID = pr.PID;
 
 select * from people where team = '' and location in ('paris' , 'seattle');
 
 select s.GeoID, s.Amount,p.Location,s.Boxes
 from sales as s
 join people as p on s.SPID = p.SPID
 group by s.GeoID;
 
 
 select s.Boxes,s.Amount,pr.Category,s.PID
 from sales as s 
 join products as pr on s.PID = pr.PID
 group by Category