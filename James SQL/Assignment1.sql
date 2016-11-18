use jpj68;
show tables;
-- question 1 --
select title, price from book where category = 'mystery' order by price;
-- quesiton 2 -- 
select title, price, units, units*price as TotalIncome from book where category = 'technical' order by TotalIncome desc;
-- question 3 -- 
select title, publisher from book where title like '%database%' or title like '%sql%'; 
-- question 4 -- 
select name, city, state from author where city = 'Exeter' or city = 'Palo Alto' or city = 'Arlington';
-- question 5 --
select distinct isbn, name from author where name = 'drphil' or name = 'chopra';
-- question 6 -- 
select isbn, age, income from sales where  gender = 'f' and state = 'nh' and age between 35 and 50 and income between 60000 and 100000;  