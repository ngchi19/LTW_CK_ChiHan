create table ADMIN_ACCOUNT
(
USER_NAME VARCHAR(30) not null,
--GENDER    VARCHAR(1) not null,
PASSWORD  VARCHAR(30) not null,
TEL		VARCHAR(10) not null,
EMAIL    VARCHAR(50) not null,
ISADMIN int
primary key (TEL)
);
select * from ADMIN_ACCOUNT

create table USER_ACCOUNT
(
USERNAME VARCHAR(30) not null,
TEL		VARCHAR(10) not null,
EMAIL    VARCHAR(50) not null,
PASSWORD  VARCHAR(30) not null,
primary key (TEL)
);

-- Create table
DROP TABLE PRODUCT;
create table PRODUCT
(
CODE  VARCHAR(20) not null,
NAME  NVARCHAR(128) not null,
PRICE FLOAT not null,
DESCRIPTION NVARCHAR(200) not null,
IMG VARCHAR(255) not null,
QUANTITY INT not null,
primary key (CODE)
) ;

-- Insert data: ---------------------------------------------------------------

insert into ADMIN_ACCOUNT (USER_NAME, PASSWORD, TEL, EMAIL, ISADMIN)
values ('adminDung', 'dung001', '0000000000', 'dung@gmail.com', 1);

insert into ADMIN_ACCOUNT (USER_NAME, PASSWORD, TEL, EMAIL, ISADMIN)
values ('adminHang', 'hang001', '5555555555', 'hang@gmail.com', 1);

insert into ADMIN_ACCOUNT (USER_NAME, PASSWORD, TEL, EMAIL, ISADMIN)
values ('tuan', 'tuan001', '1234567890', 'tuan@gmail.com', 0);
insert into ADMIN_ACCOUNT (USER_NAME, PASSWORD, TEL, EMAIL, ISADMIN)
values ('hieu', 'hieu001', '0123456789', 'hieu@gmail.com', 0);

insert into product (CODE, NAME, PRICE, DESCRIPTION, IMG, QUANTITY)
values ('P001', 'Pizza Sausage Kid Mania', 100, N'Xốt phô mai, phô mai Mozzarella, xúc xích, thịt Heo Muối, Bắp (Ngô), Thơm (Dứa)', 'https://img.dominos.vn/Sausage-Kid-Mania.jpg', 1);
insert into product (CODE, NAME, PRICE, DESCRIPTION, IMG, QUANTITY)
values ('P002', N'Pizza lạp xưởng', 90, N'Lạp xưởng tươi, xốt trứng muối, xốt Mayonnaise dịu ngọt, ruốc khô (tép khô), bắp ngọt, hành lá, phô mai Mozzarella, xốt cà chua.', 'https://img.dominos.vn/pizza-lap-xuong-2k.jpg', 1);
insert into product (CODE, NAME, PRICE, DESCRIPTION, IMG, QUANTITY)
values ('P003', N'Pizza Okonomiyaki bánh xèo nhật', 90, N'Xốt Mayonnaise, Xốt Teriyaki, Phô Mai Mozzarella, Bạch Tuộc, Tôm, Bắp Cải, Bột Rong Biển, Vẩy Cá Ngừ Bào', 'https://img.dominos.vn/Okonomiyaki-banh-xeo-nhat.jpg', 1);
insert into product (CODE, NAME, PRICE, DESCRIPTION, IMG, QUANTITY)
values ('P004', N'Pizzaminsea hải sản nhiệt đới xốt tiêu', 90, N'Xốt tiêu đen, Phô Mai Mozzarella, Phô Mai Cheddar, Thơm, Hành Tây, Tôm, Mực', 'https://img.dominos.vn/Pizzaminsea-Hai-San-Nhiet-Doi-Xot-Tieu.jpg', 1);
insert into product (CODE, NAME, PRICE, DESCRIPTION, IMG, QUANTITY)
values ('P005', N'Pizza bò tôm nướng kiểu Mỹ', 90, N'Xốt Cà Chua, Xốt Phô Mai, Phô Mai Mozzarella, Tôm, Thịt Bò Mexico, Cà Chua, Hành Tây', 'https://img.dominos.vn/Surf-turf-Pizza-Bo-Tom-Nuong-Kieu-My-1.jpg', 1);
insert into product (CODE, NAME, PRICE, DESCRIPTION, IMG, QUANTITY)
values ('P006', N'Pizza hải sản xốt Mayonnaise Ocean Mania', 90, N'Xốt Mayonnaise , Phô Mai Mozzarella, Tôm, Mực, Thanh Cua, Hành Tây', 'https://img.dominos.vn/Pizza-Hai-San-Xot-Mayonnaise-Ocean-Mania.jpg', 1);
insert into product (CODE, NAME, PRICE, DESCRIPTION, IMG, QUANTITY)
values ('P007', N'Pizza Pepperoni feast Pizza xúc xích Ý', 90, N'Xốt Cà Chua, Phô Mai Mozzarella, Xúc Xích Pepperoni', 'https://img.dominos.vn/Pepperoni-feast-Pizza-Xuc-Xich-Y.jpg', 1);
insert into product (CODE, NAME, PRICE, DESCRIPTION, IMG, QUANTITY)
values ('P008', N'Pizza thập cẩm thượng hạng Extravaganza', 90, N'Xốt Cà Chua, Phô Mai Mozzarella, Xúc Xích Pepperoni, Thịt Dăm Bông, Xúc Xich Ý, Thịt Bò Viên, Ớt Chuông Xanh, Nấm Mỡ, Hành Tây, Ô-liu', 'https://img.dominos.vn/Pizza-Thap-Cam-Thuong-Hang-Extravaganza.jpg', 1);


select * from USER_ACCOUNT
select * from PRODUCT_USER
drop table PRODUCT_USER

create table PRODUCT_USER
(
CODE VARCHAR(20) references PRODUCT (CODE) not null,
NAME  NVARCHAR(128) not null,
PRICE FLOAT not null,
TEL VARCHAR(10) references ADMIN_ACCOUNT(TEL) not null,
QUANTITY INT 
--PRIMARY KEY (CODE)
) ;
insert into PRODUCT_USER (CODE, NAME, PRICE, TEL) values ('P001', 'Pizza Sausage Kid Mania', 100, '0123456789');
insert into PRODUCT_USER (CODE, NAME, PRICE, TEL) values ('P002', N'Pizza lạp xưởng', 90, '1234567890');
insert into PRODUCT_USER (CODE, NAME, PRICE, TEL) values ('P003', N'Pizza Okonomiyaki bánh xèo nhật', 90, '0123456789');

select * from PRODUCT_USER --gio hang cua tung nguoi dung
select * from PRODUCT --admin
select * from ADMIN_ACCOUNT
select * from PRODUCT_USER where TEL='1111111111'



insert into USER_ACCOUNT (USERNAME, TEL, EMAIL, PASSWORD)
values ('li', '1111111111', 'li@gamil.com', 'li11');

select * from ADMIN_ACCOUNT
select * from PRODUCT

select * from PRODUCT_USER
drop table PRODUCT_USER

