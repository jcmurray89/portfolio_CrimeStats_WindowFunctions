Select * from CrimeStats;

-- Goal: change in rate from year to year using "Over" window functions

Select 
year, ViolentCrimeRate,
round(
ViolentCrimeRate - LAG(ViolentCrimeRate, 1, ViolentCrimeRate) Over 
(order by year), 2)  as 'ViolentCrimeRateChange',
MurderRate,
round(
MurderRate - LAG(MurderRate, 1, MurderRate) Over 
(order by year), 2)  as 'MurderRateChange',
RapeRate, 
round(
RapeRate - LAG(RapeRate, 1, RapeRate) Over 
(order by year), 2)  as 'RapeRateChange',
RapeOldDefRate,
round(
RapeOldDefRate - LAG(RapeOldDefRate, 1, RapeOldDefRate) Over 
(order by year), 2)  as 'RapeOldDefRateChange',
Robbert as 'RobberyRate',
round(
Robbert - LAG(Robbert, 1, Robbert) Over 
(order by year), 2)  as 'RobberyChange',
AggAssaultRate,
round(
AggAssaultRate - LAG(AggAssaultRate, 1, AggAssaultRate) Over 
(order by year), 2)  as 'AggAssaultChange',
PropertyCrimeRate,
round(
PropertyCrimeRate - LAG(PropertyCrimeRate, 1, PropertyCrimeRate) Over 
(order by year), 2)  as 'PropertyCrimeRateChange',
BurgularyRate,
round(
BurgularyRate - LAG(BurgularyRate, 1, BurgularyRate) Over 
(order by year), 2)  as 'BurgularyRateChange',
TheftRate,
round(
TheftRate - LAG(TheftRate, 1, TheftRate) Over 
(order by year), 2)  as 'TheftRateChange',
VehicleTheftRate,
round(
VehicleTheftRate - LAG(VehicleTheftRate, 1, VehicleTheftRate) Over 
(order by year), 2)  as 'VehicleTheftRateChange'
from
CrimeStats;