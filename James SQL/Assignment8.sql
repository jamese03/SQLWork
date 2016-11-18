-- James English Assignment 8 --

use jpj68; 
show tables;

describe book;
describe author;
describe sales;

-- 1 --
Create View awardsview as select book.title, name, award.prize, state, book.price*book.units as earnings 
from author join book on author.isbn = book.isbn join award on award.isbn = author.isbn;

select * from awardsview;

-- 2 -- 
Create view awardsview2 as select book.title, author.name, author.state, book.price*book.units
as earnings, prize from award join book on book.isbn = award.isbn join author on award.isbn = author.isbn
where prize is not null; 

select * from awardsview2;

-- 3 -- 
Create view addisonwesley as select title, author.name, price*units as earnings from book join
author on book.isbn = author.isbn where publisher = "addison wesley";

select * from addisonwesley;


-- 4 --

create view addisonwesley2 as select name, award.prize, sum(book.price*book.units),
count(award.prize) from book join author on author.isbn=book.isbn join award on 
award.isbn=book.isbn where book.title in (select book.title from addisonwesley) 
group by author.name;



select * from addisonwesley2;

