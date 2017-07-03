create table student (
	student_id int(11) unsigned not null auto_increment primary key,
	name varchar(20) not null,
	sex enum('F','M') not null
) ENGINE = InnoDB;
