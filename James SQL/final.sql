-- James English -- 

use Chinook;

-- 1 ---

INSERT INTO `Artist` (`ArtistId`, `Name`) VALUES (346, N'Anna Kendrick');
INSERT INTO `Artist` (`ArtistId`, `Name`) VALUES (347, N'Owl City');
select name, ArtistID from Artist where Name = 'Anna Kendrick' or name = 'Owl City';

-- 2 --
-- Find each artist’s sales to Norwegians. If no sales were made to Norwegians by
-- an artist, that artist need not be reported. (Output should have only the
-- ArtistName and Total Sales.) 

describe invoice;
describe artist;
describe album;
describe track;
describe mediatype;

select artist.name, sum(invoice.total) as total from Artist join Album on Artist.ArtistID 
= Album.artistID join track on track.AlbumID = Album.albumID join InvoiceLine on track.trackID =
InvoiceLine.trackID Join invoice on invoice.InvoiceId = InvoiceLine.InvoiceID Join Customer on Customer.CustomerID =
invoice.CustomerID where customer.country = 'Norway' group by artist.name;

-- 3 -- 
-- Generate a report summarizing of the number of tracks in each genre and provide a table with two columns--the number of tracks and genre name.

describe genre;
select genre.name, count(track.genreid) as count from track join genre on track.genreid = genre.genreid group by genre.name;

-- 4 --
-- Which audio track has the longest length?

select track.name, album.title, milliseconds from track join album on track.albumId = album.albumId join artist On 
album.artistId = artist.artistId where track.milliseconds = (select max(milliseconds) from track
join mediatype on Track.mediaTypeId = mediatype.mediatypeId where mediatype.name like '%audio%');

-- 5 -- 
-- What is the space, in bytes, occupied by the playlist ìClassical,î and how much would it 
-- cost?  (Assume that the cost of a playlist is the sum of the price of its constituent tracks.)

select sum(bytes) as SpaceInBytes, sum(unitprice) as cost from track join playlisttrack on track.trackid = playlisttrack.trackid where playlistid = 12;


-- Find the first and last names of the employees who are older than their corresponding supervisor.  
-- (Output should have only the FirstName and LastName in the table.)

select A.FirstName, A.LastName from Employee A join Employee B on A.ReportsTo = B.EmployeeId where A.BirthDate < B.BirthDate;

-- 6 Bonus's table-- 

create table `Bonuses`
(
    `EmployeeId` int not null,
    `invoiceID` int not null,
    `BonusAmt` numeric(10,2) not null,
constraint `PK_Bonuses` primary key (`EmployeeId`)
);

-- 7 --
-- How many tracks exist where at least one of the composers has the name “John”? 
-- (Note that “Johnson” is not a valid result—“John” must be the first, middle or last name 
-- of the composer.)

select count(composer) AS Johns from Track where Composer like '% John %';

-- ---i) Create a view named Sales to obtain the album names along with the sales amounts.  (
-- Output should have two columns—AlbumName and TotalSales.)

Create View sales(albumName, totalsales) as select album.title,
sum(invoiceline.unitprice*invoiceline.quantity) from Album join track on 
album.albumid = track.albumid join invoiceline on invoiceline.trackid = 
track.trackID group by album.title;

select * from sales;

-- Report the media type that is most favored by customers through their purchases.  
-- (Output should be MediaType.Name.)

SELECT count(*) AS counter, mediatype.name as MediaType from mediatype join track on mediatype.mediatypeid = 
track.mediatypeid group by mediatype.name order by counter;
