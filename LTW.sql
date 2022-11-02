Create database WEB;
Use WEB;

Create table CATEGORIES ( Id char(5) primary key,
						  Ten varchar(50))

Create table SANPHAM ( IDSP char(5) primary key,
					   TenSP char(20),
					   AnhSP nvarchar(200),
					   ChiTiet nvarchar(100),
					   GiaSP int,
					   IDC char(5) references CATEGORIES (Id)
					   )
					   
 SELECT * FROM SANPHAM;  
 SELECT * FROM CATEGORIES;

INSERT INTO CATEGORIES VALUES ('P', 'Pizza');
INSERT INTO CATEGORIES VALUES ('S', 'Spagheti');
INSERT INTO CATEGORIES VALUES ('B', 'Beefsteak');
INSERT INTO CATEGORIES VALUES ('SL', 'Salad');
INSERT INTO CATEGORIES VALUES ('C', 'Fried chicken');
INSERT INTO CATEGORIES VALUES ('D', 'Drink');

INSERT INTO SANPHAM VALUES ('P01', 'BEEFY Pizza',N'https://www.pizzaexpress.vn/wp-content/uploads/2019/12/P1rs1.jpg', N'Phô mai mozzarella, tôm, mực, ớt sừng đà lạt, nấm theo mùa, ngò gai, xốt tom yum đậm đà.', 99000,'P');
INSERT INTO SANPHAM VALUES ('P02', 'BBQ Chicken Pizza', 150.000, 'Thịt gà xay, nấm, hành tây, sốt BBQ, pho mai.');
INSERT INTO SANPHAM VALUES ('P03', 'Meat Lovers Pizza', 110.000, 'Xúc xích các loại, jam bông, hành tây, sốt cà chua, pho mai.');
INSERT INTO SANPHAM VALUES ('P04', 'Veggie Pizza', 80.000, 'Nấm, ngô, dứa, ớt xanh, hành tây, cà chua, sốt cà chua, pho mai.');
INSERT INTO SANPHAM VALUES ('P05', 'Hawaii Pizza', 90.000, 'Jam bông, dứa, sốt cà chua, pho mai.');
INSERT INTO SANPHAM VALUES ('S01', 'Spaghetti Bolognese', 75.000, 'Mỳ, Sốt bò băm, pho mai Parmesan.');
INSERT INTO SANPHAM VALUES ('S02', 'Spaghetti Carbonara', 80.000, 'Mỳ, Jam bông, nấm, sốt kem trứng, pho mai Parmesan.');
INSERT INTO SANPHAM VALUES ('S03', 'Spaghetti Smoke Chicken', 80.000, 'Mỳ, Thịt gà hun khói, sốt kem trứng, pho mai Parmesan.');
INSERT INTO SANPHAM VALUES ('S04', 'SpaghettiRatatouille', 70.000, 'Mỳ, Xúc xích Chorizo, sốt cà chua rau hầm, pho mai Parmesan.');
INSERT INTO SANPHAM VALUES ('S05', 'Spaghetti Seafood', 85.000, 'Mỳ, Mực, tôm, ớt xanh, cà chua, hành tây, sốt cà chua, pho mai Parmesan.');
INSERT INTO SANPHAM VALUES ('B01', 'Beef Steak with Creamy Mushroom Sauce', 74.000, 'Thịt bò, nấm mỡ, măng tây, cỏ xạ hương, hương thảo, kem sữa béo, bơ lạt.');
INSERT INTO SANPHAM VALUES ('B02', 'Beef Steak with Cheese Sauce', 75.000, 'Thịt thăn lưng bò, phô mai lát, bơ lạt, xà lách, cà chua bi, hạt bắp Mỹ.');
INSERT INTO SANPHAM VALUES ('B03', 'Beef rattles', 55.000, 'Thịt bò, ớt chuông, khoai tây, hành tây, tỏi.');
INSERT INTO SANPHAM VALUES ('B04', 'Beef Steak with Black Pepper Sauce', 60.000, 'Thịt bò, cà chua, tiêu đen, rau xà lách, rau mùi.');
INSERT INTO SANPHAM VALUES ('SL1', 'Garden salad', 45.000, 'Xà lách, cà chua, dưa chuột, sốt dầu dấm.');
INSERT INTO SANPHAM VALUES ('SL2', 'Seasonal salad', 65.000, 'Rau theo mùa, thịt gà hun khói, xà lách, sốt Ceasar.');
INSERT INTO SANPHAM VALUES ('SL3', 'Nicoise salad', 60.000, 'Cá ngừ, trứng, cà chua tươi, hành tây, dưa chuột, pho mai Parmesan.');
INSERT INTO SANPHAM VALUES ('C01', 'Fish sauce bath chicken', 42.000, '1 đùi gà tắm nước mắm.');
INSERT INTO SANPHAM VALUES ('C02', 'Boneless chicken', 65.000, '3 miếng gà giòn không xương.');
INSERT INTO SANPHAM VALUES ('C03', 'Crispy chicken not spicy', 35.000, '1 đùi gà giòn không cay.');
INSERT INTO SANPHAM VALUES ('C04', 'Spicy crispy chicken', 35.000, '2 miếng gà giòn cay.');
INSERT INTO SANPHAM VALUES ('D01', 'Sprite', 90.000, 'Sprite chai nhựa 390 ml');
INSERT INTO SANPHAM VALUES ('D02', 'Mirinda', 10.000, 'Lon mirinda');
INSERT INTO SANPHAM VALUES ('D03', 'Coca', 10.000, 'Coca cola chai nhựa 390 ml');
INSERT INTO SANPHAM VALUES ('D04', 'Pepsi', 10.000, 'Pepsi chai nhựa 390 ml');
