create database ss2_ex6;
use ss2_ex6;

create table userrs (
id int primary key auto_increment,
fullname varchar(100),
email varchar (255),
password varchar(255),
phone varchar(11),
permission bit,
status bit
);

CREATE TABLE address (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    FOREIGN KEY (user_id)
        REFERENCES userrs (id),
    receiveaddress VARCHAR(100),
    receivename VARCHAR(100),
    receivephone VARCHAR(11),
    isdefault BIT
);

create table orderr(
id int primary key auto_increment,
orderat datetime,
totals double,
user_id int,
foreign key (user_id) references userrs(id),
status bit
);

create table catalogg(
id int primary key auto_increment,
name varchar(100),
status bit
);

CREATE TABLE product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DOUBLE,
    stock INT,
    catalog_id INT,
    FOREIGN KEY (catalog_id)
        REFERENCES catalogg (id),
    status BIT
);

create table order_detail(
id int primary key auto_increment,
order_id int,
foreign key (order_id) references orderr (id),
product_id int,
foreign key (product_id) references product(id),
quantity int,
unit_price double
);

create table wishlist(
user_id int,
foreign key (user_id) references userrs(id),
product_id int,
foreign key (product_id) references product(id)
);

create table shopping_cart(
id int primary key auto_increment,
user_id int,
foreign key (user_id) references userrs(id),
product_id int,
foreign key (product_id) references product(id),
quantity int
);