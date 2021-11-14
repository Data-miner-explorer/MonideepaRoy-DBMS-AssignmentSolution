-- A travel company TravelOnTheGo maintains the record of passengers and price to travel
-- between two cities, for bus type (Sitting and Sleeper).

create database if not exists `passenger-bus-directory` ;

use `passenger-bus-directory`;

-- following table stores the passengers' data
create table if not exists `PASSENGER`(
 `Passenger_name` varchar(50),
 `Category` varchar(15),
 `Gender` varchar(2),
 `Boarding_City` varchar(30),
 `Destination_City` varchar(30),
 `Distance` int,
 `Bus_Type` varchar(30)
);
-- following table stores the price data 
create table if not exists `PRICE`
(
 `Bus_Type` varchar(30),
 `Distance` int,
 `Price` int
 );
