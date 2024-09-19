create database ss2_ex5;
use ss2_ex5;

CREATE TABLE userss (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(100),
    email VARCHAR(255),
    password VARCHAR(255),
    phone VARCHAR(11),
    permisstion BIT,
    status BIT
);

CREATE TABLE address (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    FOREIGN KEY (user_id)
        REFERENCES userss (id),
    receiveaddress VARCHAR(100),
    receivename VARCHAR(100),
    receivephone VARCHAR(11),
    iddefault BIT
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    orderat DATETIME,
    totals DOUBLE,
    user_id INT,
    FOREIGN KEY (user_id)
        REFERENCES userss (id),
    status BIT
);

create table catalog(
id int primary key auto_increment,
name varchar (100),
status bit);

CREATE TABLE book (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DOUBLE,
    stock INT,
    status BIT
);

CREATE TABLE order_detail (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    FOREIGN KEY (order_id)
        REFERENCES orders (id),
    book_id INT,
    FOREIGN KEY (book_id)
        REFERENCES book (id),
    quantity INT,
    unit_price DOUBLE
);

CREATE TABLE book_catalog (
    catalog_id INT,
    FOREIGN KEY (catalog_id)
        REFERENCES catalog (id),
    book_id INT,
    FOREIGN KEY (book_id)
        REFERENCES book (id)
);