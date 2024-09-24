
Create Table CrimeStats (
Year int not null unique, 
Population bigint, 
ViolentCrime Int, 
ViolentCrimeRate Float, 
Murder Int, 
MurderRate float,
Rape Int, 
RapeRate float,
RapeOldDef Int,
RapeOldDefRate float,
Robbery Int, 
Robbert float,
AggAssault Int, 
AggAssaultRate float,
PropertyCrime Int,
PropertyCrimeRate float, 
Burgulary Int,
BurgularyRate float,
Theft Int, 
TheftRate Float, 
VehicleTheft Int,
VehicleTheftRate Float,
Primary Key (Year)
);

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Crime_in_the_United_States_by_Volume_and_Rate_per_100000_Inhabitants_2004-2023_1.csv'
into table CrimeStats
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

alter table CrimeStats
modify column Population int;

Select * from CrimeStats;

