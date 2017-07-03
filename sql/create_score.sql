create table score (
	student_id int(11) unsigned not null,
	event_id int(11) unsigned not null,
	score int(11) unsigned not null,
	primary key (event_id,student_id),
	index(student_id),
	foreign key (event_id) references grade_event (event_id),
	foreign key (student_id) references student (student_id)
);
