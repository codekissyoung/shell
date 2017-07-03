create table grade_event(
	event_id int(11) unsigned not null auto_increment primary key,
	`date` date not null,
	category enum('T','Q') not null
);
