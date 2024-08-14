-- DDL (Data Definition Language) file containing the definition of the BA_Reviews and Countries tables

use british_airways_reviews;

-- Creating the BA_Reviews table
create table BA_Reviews(
	reviewID int not null auto_increment,
	header varchar(180),
	author varchar(180),
	date_posted date,
	departed varchar(180) ,
	traveller_type varchar(180),
	seat_type varchar(180),
	date_flown date,
	recommended varchar(180),
	trip_verified varchar(180),
	rating int,
	seat_comfort int, 
	cabin_staff_service int,
	food_beverages int,
	ground_service int,
	value_for_money int,
	entertainment int,
	primary key(reviewID),
	foreign key (departed) 
		references Countries(country)
);


-- Creating the Countries table
create table Countries(
	country varchar(180) not null,
	code varchar(180),
	continent varchar(180),
	region varchar(180),
	primary key(country)
);