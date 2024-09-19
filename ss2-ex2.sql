create database quanLyBanHang;

use quanLyBanHang;

create table customer(
	cID int auto_increment primary key,
    cName varchar(255) not null,
    cAge int not null check ( cAge > 0)
);

CREATE TABLE orders (
    old INT AUTO_INCREMENT PRIMARY KEY,
    cId INT,
     FOREIGN KEY (cId) REFERENCES customer (cId),
    oDate DATETIME,
    ototalprice DOUBLE
);
create table product (
	pid int auto_increment primary key,
    pname varchar(100) not null,
    pprice double 
);
alter table product add constraint check (pprice > 0);

CREATE TABLE orderDetail (
    oid INT,
    FOREIGN KEY (oid)
        REFERENCES orders (old),
    pid INT,
    FOREIGN KEY (pid)
        REFERENCES product (pid),
    odqty INT CHECK (odqty >= 0)
);