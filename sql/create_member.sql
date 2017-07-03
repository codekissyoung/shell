create table member (
	member_id int(11) unsigned not null auto_increment primary key,
	last_name varchar(20) not null,
	first_name varchar(20) not null,
	suffix varchar(15) null,
	expiration date null,
	email varchar(100) null,
	street varchar(50) null,
	city varchar(50) null,
	state varchar(20) null,
	zip varchar(10) null,
	phone varchar(20) null,
	interests varchar(255) null
);
