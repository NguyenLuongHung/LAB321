create database J3PL0002

use J3PL0002;

create table location (
	id int not null primary key identity(1,1),
	country nvarchar(255) not null,
	city nvarchar(255) not null,
	symbol varchar(255) not null,
	[status] bit not null
);

create table plane (
	number varchar(30) not null primary key,
	name varchar(50) not null,
	plane_status bit not null,
	[status] bit not null
);

create table flight (
	id int not null primary key identity(1,1),
	[date] date not null,
	start varchar(30) not null,
	[end] varchar(30) not null,
	origin int not null,
	destination int not null,
	[empty] int,
	plane_number varchar(30) not null,
	[status] bit not null,
	constraint fk_flight_origin
	foreign key (origin) references location(id),
	constraint fk_flight_destination
	foreign key (destination) references location(id),
	constraint fk_flight_plane
	foreign key (plane_number) references plane(number)
);

create table account (
	id int not null primary key identity(1,1),
	account varchar(20) not null,
	email varchar(100) not null,
	[password] varchar(100) not null,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	[address] varchar(255) not null,
	phone varchar(30) not null,
	sex bit not null,
	age int not null,
	card_number varchar(30) not null,
	[status] bit not null
);

create table [role] (
	account_id int not null,
	[role] varchar(30),
	constraint fk_role_account
	foreign key (account_id) references account(id)
);

create table booking (
	id int not null primary key identity(1,1),
	account_id int not null,
	flight_id int not null,
	issue_date date not null,
	seat int not null,
	code varchar(20) not null unique,
	status_ticket varchar(20) not null,
	[status] bit not null,
	constraint fk_booking_account
	foreign key (account_id) references account(id),
	constraint fk_booking_flight
	foreign key (flight_id) references flight(id)
);