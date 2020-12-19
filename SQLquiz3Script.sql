CREATE database if not exists quiz3DB;
USE quiz3DB;
DROP table if exists customer_cars;
DROP table if exists customers;
DROP table if exists cars;

CREATE table cars (
	id INT(10) auto-increment not null,
	model VARCHAR(20) not null,
	make VARCHAR(20) not null,
	year INT(4) not null,
	price INT(8) not null,
	primary key(id)
);

CREATE table customers;
	id INT(10) auto-increment not null,
	first_name VARCHAR(15) not null,
	last_name VARCHAR(20) not null,
	primary key(id)
);

CREATE table customer-cars (
	id INT(10) auto-increment not null
	customer_id INT(10) not null,
	car_id INT(10) not null,
	primary key(id),
	foreign key(customer_id) references customer(id),
	foreign key(car_id) references car(id)
);