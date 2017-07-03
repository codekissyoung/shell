create table president (
	id int(11) primary key,
	last_name varchar(15) not null,
	first_name varchar(15) not null,
	suffix varchar(15) null,
	city varchar(50) not null,
	state varchar(2) not null,
	birth date not null,
	death date null
);
