-- James English Homework 6 --


CREATE TABLE propertyTable(propertyID char(10) unique not null, town varchar(30) not null, 
 lot integer not null, value integer not null, taxmap integer not null, propertyOwner varchar(50), 
primary key(propertyID, town));

CREATE TABLE townTable(taxrate integer(10) not null, town varchar(50) not null, primary key(town));

CREATE TABLE taxTable(town varchar(50) not null, propertyID char(10) unique not null, 
tax integer(10) not null, primary key(propertyID, town));