use learnbayday1;
 select min(age) as min_age,max(age) as max_age,country,sports from olympic group by country,sports;
 
 select min(age) as min_age,avg(age) as avg_age,country,sports from olympic 
group by Country,Sports
having min(age)>20 -- any condition on the aggregated value must be specified using the having clause
order by min(age) desc;



select concat(country,sports) as country_sports from olympic;
select concat(country,'_',sports) as country_sports from olympic;