-- James English Homework 2--
use jpj68;
show tables;
describe author;
describe book; 
describe sales;
describe award; 

-- question 1 --
select state from sales union select state from author;

-- question 2 --
select title, author.city, author.state, award.prize  from book join author on author.isbn = book.isbn  
join award on book.isbn=award.isbn where author.city = 'palo alto' and author.state = 'ca' or  
award.prize is not null;

-- question 3 --
select category, count(category) from book group by category;

-- quesiton 4 --
select prize, count(isbn) from award group by prize;

-- question 5 --
select state, gender, count(gender) from sales where age >= 30 and age <= 50 group by state, gender;