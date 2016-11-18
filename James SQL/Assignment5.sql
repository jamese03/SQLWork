-- James English Homework 4--
use jpj68;
show tables;
describe author;
describe book; 
describe sales;
describe award; 

-- quesiton 1 --
select title, price*units as earnings from book where price*units > 
(select avg(price*units) from book);

-- question 2 --
select author.name, title, price*units as earnings from book join author on author.isbn=book.isbn 
where price*units > (select avg(price*units) from book) group by name;

-- question 3 --
select title from book join sales on sales.isbn=book.isbn
join award on award.isbn=book.isbn having count(sales.state) =1;


-- question 4 --
select distinct title from book join sales on sales.isbn = book.isbn group by title
having count(distinct sales.state)=(select count(distinct state) from sales);

-- question 5 --

select distinct name from author join sales on sales.isbn=author.isbn group by name having
count(distinct sales.state)=(select count(distinct state) from sales);

-- question 6 -- 
select distinct name from author join award on author.isbn=award.isbn join sales on 
sales.isbn=author.isbn where award.prize is not null and author.state !=sales.state; 
 

-- testing case because anytime you join the  award table you will not see results-- 
select distinct name, sales.state as salesstate, author.state as authorstate
 from author join sales on sales.isbn=author.isbn where author.state !=sales.state;

