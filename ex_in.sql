Create database ex_in_Class;
use ex_in_Class;
create table Category(
id int primary key auto_increment,
name varchar(100) not null unique,
status tinyint default 1
);

select * from Category;

create table Product(
id int primary key auto_increment,
name varchar(100) not null unique,
price float ,
check(price > 0),
sale_price float,
img varchar(255),
category_id int,
foreign key (category_id) references Category(id)
);

select * from Product;

create table Account(
id int primary key auto_increment,
email varchar(100) not null unique,
password varchar(100) not null,
fullName varchar(100)
);

create table Orders(
id int auto_increment primary key,
id_account int not null,
foreign key (id_account) references Account(id),
ship_address varchar(255) not null ,
status tinyint default 0,
created_at datetime default current_timestamp
);

create table Order_detail(
id_order int ,
foreign key(id_order) references Orders(id),
id_product int,
foreign key (id_product) references product(id),
quantity int check(quantity > 0),
price float not null check (price > 0)
);
-- Thêm mới mỗi bảng 5 bản ghi 

insert into Category (name) value ('áo');
insert into Category (name) values ('quần'),('váy'),('tất'),('mũ');

insert into product (name, price, sale_price, img, category_id) values ('áo sơ mi', 200, 180,'áo sơ mi',1),
                                                                         ('quần bò', 350, 300, 'quần bò', 2),
                                                                         ('váy ngắn', 170, 150, 'váy ngắn', 3),
                                                                         ('Tất dài', 30, 25, 'tất dài', 4),
                                                                         ('Mũ hiphop',50, 45, ' mũ hiphop', 5);
Select * from product;

INSERT INTO Account (email, password, fullName) VALUES
('user1@example.com', '123456', 'Nguyễn Văn An'),
('user2@example.com', '123987', 'Trần Thị Bình'),
('user3@example.com', '123789', 'Lê Văn Cương'),
('user4@example.com', '123890', 'Phạm Thị Dung'),
('user5@example.com', '321987', 'Nguyễn Văn Tài');

select * from account;

INSERT INTO Orders (id_account, ship_address, phone, status, created_at) VALUES
(1, '123 Đường ABC, Quận 1, TP.HCM', '0123456789', 0, NOW()),
(2, '456 Đường DEF, Quận 2, TP.HCM', '0987654321', 1, NOW()),
(1, '789 Đường GHI, Quận 3, TP.HCM', '0234567890', 2, NOW()),
(3, '321 Đường JKL, Quận 4, TP.HCM', '0345678901', 0, NOW()),
(2, '654 Đường MNO, Quận 5, TP.HCM', '0456789012', 1, NOW());
select * from Orders;

Alter table Orders 
add column phone varchar(11) not null;

select * from Order_detail;

insert into Order_detail(id_order,id_product, quantity, price) values (1,1,3,180),
																	  (2,2,2,300),
                                                                      (3,3,3,150),
                                                                      (4,4,2,25),
                                                                      (5,5,3,45); 
                                                                      
-- Cập nhật tên của sản phẩm có id = 1 thành sản phẩm hot trend 2024
Update product 
set name = 'sản phẩm hot trend 2024'
where id = 1;

select * from product

-- 3. Cập nhật giá của những sản phẩm có id = 1 giảm 10% so với giá hiện tại 
Update product
set price = (price*0.91)
where id = 1;

-- 4. Xóa sản phẩm có id = 1 
Update order_detail 
set id_product = 5
where id_order =1;
Delete from product where id = 1;
-- Lấy id,name,price,sale_price,image của tất cả sản phẩm trong bảng product 
select id,name,price,sale_price,img from product;
-- 6. Lấy ra danh sách sản phẩm có giá > 100
select * from product where price > 100;





																		











