INSERT INTO TRADERS  VALUES 
('123','Mr.Kanyum','9326656954','Buyer', 'Bhiwandi '),
('234','Mr.Sunil','9969443411','Seller', 'Mumbai '),
('345','Mrs.Lata','9008991009','Buyer', 'Salem'),
('456','Mr.Abhay ','9823620150','Seller', 'Goa'),
('567','Mr.Vishal','9923822122','Buyer', 'Kochin'),
('678','Mr.Babu ','9840739941','Seller', 'Trishur'),
('789','Mr.Biju','9447182897','Buyer', 'Goa'),
('891','Mr.Shreenivas','9032622719','Seller', 'Vishakapatnam'),
('910','Mr.Krishnaswamy ','9293713063','Buyer', 'Vijaywada'),
('911','Mr.Vinod','9843127400','Seller', 'Coimbatore');

select * FROM TRADERS;


INSERT INTO FACTORY VALUES 
('111',' Shriram Steels','8461020301','22','Raipur', 'Mr.Rajesh'),
('222','Alankar Steels Pvt Ltd ','9827164726','25','Goa', 'Mr.Rajkumar'),
('333','Jagruti Industries Pvt LTd ','9494594008','27','Raipur', 'Mr.Sagar '),
('444',' Goa Ispat Ltd','9822966108','30','Hydrabad  ', 'Mr.Sanjeev '),
('555','Ramsons Castings Pvt Ltd ','9822663313','34','Raipur', 'Mr.Rajesh '),
('666',' Balaji Industries Ltd','7803085135','37','Kolhapur', 'Mr.Tiwari '),
('777',' Saurabh Rolling Mills','9162667811','18','Goa', 'Mr.Mishra '),
('888','Arya Rolling Mills ','9225846008','40','Raipur', 'Mr.Alok '),
('999','Abhishek Rolling Mills ','9336004511','36','Hydrabad  ', 'Mr.Abhishek  '),
('101','Trimurti Industries  ','9887851108','39','Raipur', 'Mr.Naresh  ');

select * FROM FACTORY;

INSERT INTO EMPLOYYEE   VALUES 
('910', 'KTM Iron Steels', 'Kumar ', 'Rohit ', '9367826736', '600000 '),
('911 ', 'KTM Iron Steels', ' Sharma ', 'Priya ', '9222333444', '700000 '),
('912 ', 'KTM Iron Steels', 'Gupta ', ' Anuj ', '9900887766', '800000 '),
('913 ', 'KTM Iron Steels', 'Agarwal ', 'Agarwal ', '9675665544', '650000 '),
('914 ', 'KTM Iron Steels', 'Mittal ', 'Manoj ', '9022334455', '750000 '),
('915 ', 'KTM Iron Steels', 'Bhatia ', 'Alok ', '7666555467', ' 850000 '),
('916', 'KTM Iron Steels', 'Tyagi ', 'Anuj ', '7766558899', '700000 '),
('917 ', 'KTM Iron Steels', ' Chaudhary ', 'Vineet ', '9882266445', '  780000'),
('919 ', 'KTM Iron Steels', ' Singh ', 'Preeti ', '9008877665', ' 670000 '),
('920 ', 'KTM Iron Steels', 'Chawla ', 'Rajesh ', '7665544332', ' 820000 ');

select * FROM EMPLOYYEE;


INSERT INTO  ITEM  VALUES 
('001 ', 'RPR  ', '25', 'KTM Steel Cold Rolled Coils IS 513'),
('002', 'Kolhapur ', '250', 'Stainless Steel HRAP  310S N1 Finish Sheets'),
('003', 'HYD ', '300', 'KTM Steel Cold Rolled Coils IS 513'),
('004', 'RPR  ', '550', 'Mild Steel Angels E250A ISA'),
('005 ', 'GOA ', '25', 'Wire Rod Coils IS 7887'),
('006 ', 'GOA ', '13', 'Wire Galvanized Steel Sheets IS 277'),
('007 ', 'HYD ', '75', 'Galvalume Coins IS 15965'),
('008 ', 'RPR  ', '250', 'Hot Rolled Chequered Sheets IS 3502'),
('009 ', 'RPR  ', '600', 'Cold Rolled Coils IS 513'),
('010 ', 'RPR  ', '75', 'Wire Rod Coils IS 7887');

select * FROM ITEM;


INSERT INTO DRIVERS  VALUES 
('201 ', '9876543245 ', '25000 ', 'Vilas '),
('202 ', '9087346789 ', '27000 ', 'Rashid  '),
('203 ', '9123456789 ', '26000 ', 'Pankaj  '),
('204 ', '9458034612 ', '30000 ', 'Suraj  '),
('205 ', '9482947380 ', '34000 ', 'Suresh  '),
('206 ', '7654389076 ', '31000 ', 'Abdul '),
('207 ', '7056936213 ', '36000 ', 'Amir '),
('208 ', '7098765432 ', '28000 ', 'Paresh  '),
('209 ', '7260099887 ', '29000 ', 'Suresh  '),
('210 ', '9776644335 ', '33000 ', 'Ram ');

select * FROM DRIVERS;


INSERT INTO BILLS VALUES 
('12', '11 ', 'Mr.Sanjeev ', '10000 '),
('23', '22 ', 'Mr.Alok ', '9000 '),
('34', '33 ', 'Mr.Naresh  ', '8500 '),
('45', '44 ', 'Mr.Rajesh ', '11000 '),
('56', '55 ', 'Mr.Shreenivas ', '9900 '),
('67', '66 ', 'Mr.Abhay  ', '8700 '),
('78', '77 ', 'Mr.Krishnaswamy  ', '11100 '),
('89', '88 ', 'Mr.Biju ', '9500 '),
('90', '99 ', 'Mr.Sunil ', '9300 '),
('24', '10 ', 'Mr.Vishal ', '7800 ');

select * FROM BILLS;


INSERT INTO DEPENDENT VALUES 
('910 ', ' Naya', '9876543678', '111111111 '),
('911 ', 'Ishaan ', '9875900987', '222222222 '),
('912 ', ' Jai', '9345263546', '333333333 '),
('913 ', 'Inaya ', '7465365365', '444444444 '),
('914 ', 'Amar ', '7666555443', '555555555 '),
('915 ', 'Navi ', '9887766554', '666666666 '),
('916 ', 'Dhruv ', '7099876556', '777777777 '),
('917 ', ' Kanan', '9225533664', '888888888 '),
('919 ', 'Navya ', '9748950473', '999999999 '),
('920 ', 'Shrishti ', '7920283928', '101010101 ');

select * FROM DEPENDENT;


INSERT INTO LOADER  VALUES 
('201 ', '301 ', 'MH 02 HK 2022', 'Mumbai ', 'Kolkata ', '4 '),
('202 ', '302 ', 'CG 11 QP 1023', 'Jaipur ', 'Chennai ', '5 '),
('203 ', '303 ', 'CG 18 HI 9012', 'Hyderabad ', 'Ahmedabad ', '6 '),
('204 ', '304 ', 'MH 02 KP 9900', 'Pune ', 'Chandigarh ', '5 '),
('205 ', '306 ', 'KA 21 WB 1231', 'Chennai ', 'Jaipur ', '4 '),
('206 ', '307 ', 'CG 18 BH 7641', 'Lucknow ', 'Kanpur ', ' 3'),
('207 ', '308 ', 'KA 02 LI 5655', 'Nagpur ', 'Indore ', ' 2'),
('208 ', '309 ', 'MH 03 KL 9232', 'Thane ', '	Bhopal ', '4 '),
('209 ', '305 ', 'KA 02 TH 8882', 'Visakhapatnam', 'Agra ', '5 '),
('210 ', '310 ', 'CG 17 GD 4521', 'Nashik ', 'Aurangabad ', '3 ');

select * FROM LOADER;