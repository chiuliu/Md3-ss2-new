-- tao đatabase

create database md3_session02;

-- tạo bảng

use md3_session02;

-- tạo database color

create table color(
id int auto_increment primary key,
name varchar(100),
status bit
);

-- taoj table size

create table size (
id int auto_increment primary key,
name varchar(100),
status bit
);

-- tao table date

create table product (
id int auto_increment primary key,
name varchar(100),
created date
);

create table product_detail(
id int auto_increment primary key,
product_id int,
color_id int,
price double,
stock int not null ,
status bit default 1,
constraint fk_product foreign key (product_id) references product(id),
constraint fk_color foreign key (product_id) references color(id),
constraint fk_size foreign key (product_id) references size(id)
);
