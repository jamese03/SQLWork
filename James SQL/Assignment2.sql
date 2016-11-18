-- James English --
use jpj68;
show tables;
describe author;
describe book; 
describe sales;
describe award; 

select name, author.city, author.state, book.title from author join book on book.isbn=author.isbn where 
author.city = 'exeter' and author.state = 'nh' or author.city = 'palo alto' and author.state = 'ca' 
or author.city = 'arlington' and author.state = 'tx'; 

-- question 2 --
select author.name, book.title from author join book on 
book.isbn=author.isbn where author.name = 'Chopra' or author.name = 'drphil';

-- quesiton 3 -- 
select gender, age, income, title, state from book join sales on 
book.isbn=sales.isbn where sales.gender = 'f' and state = 'nh' and income >= 60000 and 
income <= 100000 and age >=35 and age <= 50;

-- question 4 --
select  book.title, category, name, sales.state, age, income from author join book on 
book.isbn = author.isbn join sales on sales.isbn=book.isbn where author.state=sales.state; 


-- question 5 --
select title, category, author.name, author.state, sales.state, sales.age from book inner join author on 
book.isbn=author.isbn left join sales on book.isbn=sales.isbn;


-- question 6 --
select book.title, book.category, award.prize, author.name from book join author on author.isbn = book.isbn
left join award on award.isbn = book.isbn;



