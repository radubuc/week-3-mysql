CREATE database if not exists socialMediaApp;
USE socialMediaApp;
DROP table if exists comment;
DROP table if exists post;
DROP table if exists user;
CREATE table user (
	user_id VARCHAR(20) not null,
	email VARCHAR(25) not null,
	password VARCHAR(15) not null,
	primary key(user_id)
);
CREATE table post (
	post_id INT(10) not null auto_increment,
	user_id VARCHAR(20) not null,
	content VARCHAR(255) not null,
	timestamp DATETIME not null,
	primary key(post_id),
	foreign key(user_id) references user(user_id)
);
CREATE table comment (
	comment_id INT(10) auto_increment,
	post_id INT(10) not null,
	user_id VARCHAR(20),
	content VARCHAR(255),
	timestamp DATETIME,
	primary key(comment_id),
	foreign key(user_id) references user(user_id),
	foreign key(post_id) references post(post_id)
);
