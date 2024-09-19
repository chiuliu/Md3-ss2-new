create database ss2_ex4;
use ss2_ex4;
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    phone VARCHAR(11),
    permission BIT,
    status BIT
);

create table historys (
id int primary key auto_increment,
user_id int,
foreign key (user_id) references users(id),
point int,
examdate datetime
);

create table exams (
id int primary key auto_increment,
name varchar(100),
duration int,
status bit);

create table questions(
id int primary key auto_increment,
content varchar(255),
exam_id int,
foreign key(exam_id) references exams(id),
status bit
);

CREATE TABLE history_detail (
    id INT PRIMARY KEY AUTO_INCREMENT,
    history_id INT,
    FOREIGN KEY (history_id)
        REFERENCES historys (id),
    question_id INT,
    FOREIGN KEY (question_id)
        REFERENCES questions (id),
    resuslt INT
);

create table answer (
id int primary key auto_increment,
content varchar(255),
question_id int,
foreign key (question_id) references questions(id),
answertrue bit
);