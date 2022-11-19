USE motosymotos;

--
-- Dumping data for table cliente
--
INSERT INTO cliente VALUES 
(1,'Jada Walford','712-156-1291','2003-11-03','54 6th Place'),
(2,'Mortie Peattie','746-993-4244','2000-03-31','77 Debs Center'),
(3,'Delphinia Pogson','921-220-7520','2004-06-22','50300 South Parkway'),
(4,'Yolanda Piggin','499-828-3242','2002-05-11','54 Kenwood Street'),
(5,'Arleta Simonnot','969-373-1461','2003-08-19','5813 Oak Valley Trail'),
(6,'Edy Josefsson','260-295-3954','2007-06-08','0 Kenwood Point'),
(7,'Cindra Coiley','529-382-0580','2004-03-12','86 Bultman Pass'),
(8,'Gretal Cowmeadow','344-701-2003','2004-11-14','2487 Ryan Hill'),
(9,'Montague Doogood','608-694-6101','2002-10-31','2 Merrick Terrace'),
(10,'Tami Soames','511-802-4576','2002-02-08','1 Hooker Terrace');

--
-- Dumping data for table producto
--
INSERT INTO producto VALUES 
(1,'et eros','orci luctus',28723,30141,7,8,'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue.'),
(2,'vestibulum sagittis','semper',50733,59045,10,7,'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
(3,'gravida sem','eu orci',46909,51022,8,10,'Integer ac neque. Duis bibendum.'),
(4,'porta','nulla sed',9143,50532,10,9,'Donec ut mauris eget massa tempor convallis.'),
(5,'duis','justo morbi',30470,48715,7,6,'In sagittis dui vel nisl.'),
(6,'integer aliquet','rutrum',7321,48776,8,10,'In blandit ultrices enim.'),
(7,'pede ullamcorper','tristique',24156,17105,5,5,'Morbi a ipsum. Integer a nibh.'),
(8,'lectus vestibulum','diam nam',52054,16990,9,10,'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
(9,'felis','ac nulla',13148,28542,5,6,'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.'),
(10,'sit amet','mauris morbi',49193,40465,8,7,'Curabitur in libero ut massa volutpat convallis.');

--
-- Dumping data for table propietario
--
INSERT INTO propietario VALUES 
(1,'MOTOS Y MOTOS','****','****'),
(131302303,'Aileen Spellessy','362-797-8815','aspellessy8@about.me'),
(160806642,'Peyter Patty','758-671-9732','ppatty6@vk.com'),
(210080532,'Paten Stallebrass','472-913-4887','pstallebrass3@amazon.co.uk'),
(485126740,'Clarette Barwood','101-535-5958','cbarwood0@unc.edu'),
(522511712,'Lezley Georgel','329-258-1171','lgeorgel5@apple.com'),
(695114199,'Gran Bristowe','273-577-4467','gbristowe7@purevolume.com'),
(778027314,'Avictor Blencowe','823-726-4474','ablencowe9@reference.com'),
(798547024,'Margaret Craigg','385-155-0912','mcraigg2@accuweather.com'),
(873651586,'Hagan Heakey','764-654-2487','hheakey1@wp.com'),
(961093621,'Vivienne Mohammad','590-565-6338','vmohammad4@hc360.com');

--
-- Dumping data for table proveedor
--
INSERT INTO proveedor VALUES 
(1,'Johnston Inc','663-715-6889','tattac2@nih.gov'),
(2,'Willms-Borer','143-673-5596','hkobiera7@networkadvertising.org'),
(3,'Konopelski Inc','311-326-4140','rcarnock1@parallels.com'),
(4,'Cartwright-Toy','879-850-7792','sscowen0@omniture.com'),
(5,'Will and Sons','841-301-8748','lpawlik8@amazon.de'),
(6,'Erdman LLC','150-819-5721','kkharchinski6@prnewswire.com'),
(7,'Stanton, Morar and Kreiger','254-660-6916','ykassman9@printfriendly.com'),
(8,'Schultz LLC','159-560-9327','kmacsweeney5@eepurl.com'),
(9,'Bradtke-Volkman','556-488-4743','nwallworke3@technorati.com'),
(10,'Schumm Inc','701-380-6205','ctop4@webeden.co.uk');

--
-- Dumping data for table servicio
--
INSERT INTO servicio VALUES 
(1,'Nulla tellus. In sagittis dui vel nisl.',49205),
(2,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.',22181),
(3,'Aenean lectus.',29980),
(4,'Ut at dolor quis odio consequat varius. Integer ac leo.',44997),
(5,'Etiam pretium iaculis justo.',36650),
(6,'Praesent blandit. Nam nulla.',16017),
(7,'Pellentesque viverra pede ac diam.',13713),
(8,'Duis mattis egestas metus. Aenean fermentum.',39953),
(9,'Nunc rhoncus dui vel sem. Sed sagittis.',27823),
(10,'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio.',12628);

--
-- Dumping data for table tipo_sistema
--
INSERT INTO tipo_sistema VALUES (1,'EPS'),(2,'ARL'),(3,'Fondo Pensiones');

--
-- Dumping data for table sistema_social_empleado
--
INSERT INTO sistema_social_empleado VALUES 
('0378-1160','Gorczany, Johns and Rowe','612-281-4760','24 Lukken Alley',1),
('0573-2450','Toy, Hayes and Ritchie','787-222-0830','47 Mayer Terrace',1),
('36987-3182','Douglas Group','667-470-2035','14 Prentice Terrace',2),
('43598-003','Kris-Orn','347-249-8196','5 Melrose Parkway',1),
('49817-0058','Armstrong Inc','382-172-9697','8 Northfield Pass',2),
('52125-933','Wintheiser-Boehm','871-272-2508','95689 Carberry Pass',2),
('54868-0021','Little LLC','586-264-0880','030 Cordelia Drive',3),
('57520-0535','Wyman, Windler and Strosin','170-683-2101','0 Pierstorff Pass',2),
('68788-9220','O\'Kon-Dare','529-863-4890','05 Troy Park',1),
('75857-9300','Torp, Fahey and Stroman','903-198-7470','9582 Ruskin Way',2);

--
-- Dumping data for table tipo_transaccion
--
INSERT INTO tipo_transaccion VALUES (1,'Venta'),(2,'Compra');

--
-- Dumping data for table empleado
--
INSERT INTO empleado VALUES 
(124067956,'Shaun','Tatlowe','492-997-2375','7 Longview Place','2002-09-19','statlowe1@istockphoto.com','19','43598-003','54868-0021','49817-0058'),
(126451960,'Sutherland','Knok','140-731-9328','509 Rieder Pass','1994-11-09','sknok6@mit.edu','14','0378-1160','54868-0021','75857-9300'),
(179825565,'Herold','Primett','897-882-8766','737 Merry Center','1993-01-04','hprimett2@devhub.com','19','0573-2450','54868-0021','75857-9300'),
(287035155,'Conant','Fost','456-417-3501','808 Oriole Center','2002-10-30','cfost9@indiegogo.com','20','0378-1160','54868-0021','75857-9300'),
(354764066,'Ysabel','Orchard','952-797-4992','7742 Fulton Park','2000-11-10','yorchard8@stumbleupon.com','12','43598-003','54868-0021','36987-3182'),
(560381837,'Alvira','Jertz','821-651-2098','947 Burning Wood Alley','1997-12-29','ajertz7@ask.com','10','0573-2450','54868-0021','49817-0058'),
(731792636,'Chen','Fursland','344-490-4131','64123 Hansons Place','2003-09-14','cfursland0@ibm.com','16','0378-1160','54868-0021','36987-3182'),
(858266285,'Melina','Screwton','275-319-8169','319 Buhler Plaza','1994-08-12','mscrewton3@amazon.co.uk','15','43598-003','54868-0021','36987-3182'),
(976746128,'Neala','Gault','587-619-8279','840 Waubesa Pass','2006-11-06','ngault4@google.co.jp','13','0378-1160','54868-0021','49817-0058'),
(993689202,'Nikolai','Mergue','458-137-0179','4 Schlimgen Center','1993-03-01','nmergue5@stanford.edu','16','0573-2450','54868-0021','36987-3182');

--
-- Dumping data for table motocicleta
--
INSERT INTO motocicleta VALUES 
('01UG47Z',14807982,15842263,'sem mauris',223,'Maecenas ut massa quis augue luctus tincidunt.','2021-12-24','2022-03-19',1438309,1280196,1),
('03160JJ',12749812,13826568,'elit proin',260,'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','2022-09-25','2022-08-08',1851030,1736052,1),
('037G056',10199183,18860983,'nisl',258,'Nam congue, risus semper porta volutpat, quam pede lobortis ligula.','2022-10-04','2022-02-28',1377317,1750733,1),
('04100ZB',18229003,19349890,'ac diam',263,'Maecenas pulvinar lobortis est. Phasellus sit amet erat.','2022-04-07','2022-05-24',1507715,2798153,1),
('0D1H0Z4',10436835,10912600,'nisi',179,'Cum sociis natoque penatibus et magnis dis parturient montes.','2022-08-28','2022-03-16',1308642,2032469,1),
('0F964ZZ',14902594,10784103,'lectus in',200,'Sed ante. Vivamus tortor.','2022-09-04','2022-06-21',1775196,905642,210080532),
('0FNC4ZZ',14049764,11585705,'venenatis tristique',249,'Sed sagittis.','2022-04-01','2021-11-28',1598048,818950,873651586),
('0QWRX7Z',15448290,15035933,'sodales scelerisque',228,'Proin leo odio, porttitor id, consequat in, consequat ut.','2022-02-14','2022-05-15',1180571,2282025,1),
('0SGQ34Z',18257173,16197341,'tempor',201,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.','2022-04-02','2022-07-10',1160123,2273525,961093621),
('D713BCZ',15166628,10297325,'ultricies',212,'Vestibulum rutrum rutrum neque.','2022-06-21','2022-11-17',1870776,2914107,798547024);

--
-- Dumping data for table motocicleta_cliente
--
INSERT INTO motocicleta_cliente VALUES 
('00CN3ZZ',2,'ligula nec'),('01SH4ZZ',7,'imperdiet et'),
('01U437Z',3,'vestibulum ante'),('03HM0DZ',7,'ipsum aliquam'),
('03US07Z',3,'elementum'),('04RK07Z',8,'vestibulum'),
('0BND7ZZ',6,'aliquam augue'),('0DFGXZZ',4,'mauris sit'),
('0PHS04Z',1,'penatibus et'),('3E0J7TZ',4,'est risus');

-- 
-- The other tables do not have a data dump since they need a trigger for their correct operation.
--