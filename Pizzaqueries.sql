create table pizza
(
record	int,
store int,
week int,
category_volume int,
quarter int,
unit_sales float,
price float,
feature int,
display int,
Revenue float);


-- Answering Business Questions


-- Which of the 19 stores in the dataset has the lowest average (unweighted) price for Tombstone? (report the store number using the store id from the dataset)
select store, avg(price) as avg_price
from pizza
group by store
order by avg_price
limit 1;
-- #Store 4956 has the lowest avg price of 3.5265

-- Count the number of times that there was a Tombstone feature but not a Tombstone display? (report as an integer)

select *
from pizza
where display = 0 and feature = 1;

--194 times

-- What is the most frequently occurring (modal) price in the dataset? (report the modal price rounded to two decimal places, dollar sign not needed)
select price, round(count(price),2) as price_count
from pizza
group by price
order by price_count desc
limit 1;
-- 4.99 gets repeated 34 times and is the modal price


-- Using the category volume variable as the denominator, and the sum total of the data for all the weeks and all the stores, compute and report the unit volume-based market share for Tombstone. (report the market share rounded to three decimal places)
select sum(unit_sales)/sum(category_volume) as market_share
from pizza;
--0.268 is the market share

-- What is the average amount of unit sales in circumstances where the Tombstone pizza price was equal to $2.75? (report the value rounded to three decimal places)
select avg(unit_sales)
from pizza
where price = 2.75;

--589.529 is the avg amount of unit sales


-- When there is both a Tombstone feature and a Tombstone display, what is the average (unweighted) price of Tombstone pizza? (report the value rounded to two decimal places, you do not need to include a dollar sign)
select avg(price) as avg_price
from pizza
where feature = 1 and display = 1;


-- Compute and report the sum total of Tombstone pizza revenue ($), aggregated as the overall sum using all the weeks and all the stores. (report revenue rounded to the nearest whole dollar – dollar sign not needed)

select sum(revenue) as total_revenue
from pizza;

--1018612 is the sum revenue!

-- Across all the stores and all the weeks where the condition is met, what is the average (unweighted) sales revenue for Tombstone under the marketing condition that there is NOT an active Tombstone display? (report the value rounded to two decimal places, you do not need a dollar sign)
select (avg(revenue) as average_revenue
from pizza
where display = 0;

--718.42 is the average revenue when no display

-- Across all the stores and all the weeks where the conditions are met, what is the mean difference between the unweighted average unit sales when there is a Tombstone display, compared to the unweighted average unit sales where there is not a Tombstone display? (report the difference rounded to three decimal places)
select 
(select avg(unit_sales)
from pizza
where display = 1) - (select avg(unit_sales) from pizza where display = 0)
as mean_difference;

#279.126 is the difference in mean


-- How many times is the Tombstone unit sales volume more than 2 standard deviations above the Tombstone unweighted average unit sales volume? (report the number of times it happened as an integer not as a percentage)
select count(*)
from pizza
where unit_sales > 
(select avg(unit_sales) + 2* stddev_pop(unit_sales)
from pizza
) 
--44 times is when Unit sales is more than 2 SDs




--Count of stores earning less average revenue with an active feature compared to no feature
select store, count(*), avg(revenue)
from pizza 
where feature = 1 
group by store
having avg(revenue) <
(select avg(revenue)
from pizza as p2
where 
p2.store = pizza.store and
feature = 0);

--how many stores never had an observed Tombstone display in any of the 
--52 weeks contained in the dataset?

select store,sum(display)
from pizza
group by store
having sum(display) = 0;

--1 store has not observed 