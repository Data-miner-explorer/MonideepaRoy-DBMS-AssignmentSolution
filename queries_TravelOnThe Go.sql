-- 3.How many females and how many male passengers travelled for a minimum distance of 600 KM
Select `Gender`,count(*) from `PASSENGER` where `Distance` >=600 group by `Gender`;
-- 3. Ans. M:4, F:2

-- 4.Find the minimum ticket price for Sleeper Bus
Select min(`Price`)from `PRICE` where `Bus_Type`='Sleeper';
-- 4. Ans 434

-- 5.Select passenger names whose names start with character 'S'
Select `Passenger_name` from `PASSENGER` where `Passenger_name` like 'S%';
-- 5. Ans Sejal

-- 6. Calculate price charged for each passenger displaying Passenger name, Boarding City,
-- Destination City, Bus_Type, Price in the output
Select p.`Passenger_name`,p.`Boarding_City`,p.`Destination_City`,p.`Bus_Type`,pr.`Price`
from `PASSENGER` p 
inner join 
`PRICE` pr 
on p.`Bus_Type`=pr.`Bus_Type`
and p.`Distance`=pr.`Distance`;

-- 7. What is the passenger name and his/her ticket price who travelled in Sitting bus for a
-- distance of 1000 KM s 

Select p.`Passenger_name`,pr.`Price`
 from `PASSENGER` p
 inner join 
 `PRICE` pr
 on p.`Bus_Type`=pr.`Bus_Type`
and p.`Distance`=pr.`Distance` where p.`Distance`=1000;

-- 8) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to
-- Panaji?
Select pr.`Bus_Type`,pr.`Price`
 from  `PRICE` pr
 where pr.`Distance`=(Select p.`Distance` from `PASSENGER` p
 where p.`Passenger_name`='Pallavi');
 -- Ans Sleeper 1320, Sitting 744
 
 -- 9) List the distances from the "Passenger" table which are unique (non-repeated
-- distances) in descending order.
Select distinct `Distance` from PASSENGER order by `Distance` desc;

-- 10) Display the passenger name and percentage of distance travelled by that passenger
-- from the total distance travelled by all passengers without using user variables 
Select p.`Passenger_name`, p.`Distance`*100/(Select sum(`Distance`) from `PASSENGER` ) "Percentage Distance" from `PASSENGER` p;

-- 11) Display the distance, price in three categories in table Price
-- a) Expensive if the cost is more than 1000
-- b) Average Cost if the cost is less than 1000 and greater than 500
-- c) Cheap otherwise
Select `Distance`,`Price`, if(Price>1000,'Expensive',if(Price>500,'Average Cost','Cheap')) "Category" from `PRICE`;