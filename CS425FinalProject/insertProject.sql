
INSERT INTO Agent VALUES(1, '7735980474', 'johndoe@gmail.com', 'John', 'Doe', DATE '1990-07-14','60616','male','Travel Agent');
INSERT INTO Agent VALUES(2, '7736783232', 'sjobs@gmail.com', 'Steve', 'Jobs', DATE '1955-02-24','60616','male','Travel Agent');
INSERT INTO Agent VALUES(3, '7735525521', 'bgates@gmail.com', 'Bill', 'Gates', DATE '1955-10-28','60616','male','Travel Agent');
INSERT INTO Agent VALUES(4, '8005422425', 'lpage@gmail.com', 'Larry', 'Page', DATE '1973-03-26','60616','male','Travel Agent');
INSERT INTO Agent VALUES(5, '2034452235', 'rbranson@gmail.com', 'Richard', 'Branson', DATE '1950-07-18','60616','male','Travel Agent');
INSERT INTO Agent VALUES(6, '7734014144', 'mzuckerherg@gmail.com', 'Mark', 'Zuckerberg', DATE '1984-05-14','60616','male','Agent Manager');
INSERT INTO Agent VALUES(7, '7736032452', 'tcook@gmail.com', 'Tim', 'Cook', DATE '1960-11-01','60616','male','Agent Manager');
INSERT INTO Agent VALUES(8, '2423623334', 'lellison@gmail.com', 'Larry', 'Ellison', DATE '1944-08-17','60616','male','Agent Manager');
INSERT INTO Agent VALUES(9, '7735223005', 'sballmer@gmail.com', 'Steve', 'Balmer', DATE '1956-03-24','60616','male','Agent Manager');
INSERT INTO Agent VALUES(10, '7752235234', 'mmayer@gmail.com', 'Marissa', 'Mayer', DATE '1975-05-30','60616','female','Agent Manager');


INSERT INTO Client VALUES (1, '1234567890','jsmith@gmail.com','John' ,'Smith', DATE '1973-05-05','60616', 'male');
INSERT INTO Client VALUES (2, 2345624590,'prosen@gmail.com','Peter' ,'Rosen', DATE '1978-12-08','90210', 'male');
INSERT INTO Client VALUES (3, '7734567811', 'acole@gmail.com', 'Anna', 'Cole', DATE '1982-10-01','60684', 'female');

INSERT INTO Client VALUES (4, '7737891012','gcita@gmail.com', 'Gladys', 'Citta', DATE '1943-02-04', '90861', 'female');

INSERT INTO Client VALUES (5, '8323480496', 'ealbiston@gmail.com', 'Edith','Albiston', DATE '1985-05-12', '31082', 'female');

INSERT INTO Client VALUES (6, '5128750921', 'jtang@gmail.com',  'Joe','Tang',DATE '1993-10-19', '60616', 'male');

INSERT INTO Client VALUES (7, '5128006921', 'slee@gmail.com',  'Sam','Lee',DATE '1989-11-23', '57616', 'male');

INSERT INTO Client VALUES (8, '23144671199', 'dcrawford@gmail.com',   'Daria','Crawford', DATE '1992-04-03', '83456', 'female');

INSERT INTO Client VALUES (9, '7731231092', 'flawson@gmail.com',   'Frank','Lawson', DATE '1982-05-04', '80714', 'male');

INSERT INTO Client VALUES (10, '2046691178', 'mellison@gmail.com',   'Miley','Ellison', DATE '1985-09-09', '10456', 'female');




INSERT INTO Resort VALUES(1,'Florida fun', 'Miami', 'USA','322 S wabash','2034452235');
INSERT INTO Resort VALUES(2,'Island city', 'Chicago', 'USA','3300 S Federal St','2034452636');
INSERT INTO Resort VALUES(3,'Dhaka king', 'Dhaka', 'Bangladesh','Niketan Housing','7084552235');
INSERT INTO Resort VALUES(4,'Texas renegade', 'Texas', 'USA','2300 S Texas','7084582235');
INSERT INTO Resort VALUES(5,'New york nice time', 'New York', 'USA','2400 W Jamaica','7724582235');

INSERT INTO Resort_Rating values(1,2);
INSERT INTO Resort_Rating values(2,1);
INSERT INTO Resort_Rating values(3,3);
INSERT INTO Resort_Rating values(4,3);
INSERT INTO Resort_Rating values(5,2);

INSERT INTO Amenities VALUES (2,  'gym',100.0);
INSERT INTO Amenities VALUES (2,  'restaurant',200.0);
INSERT INTO Amenities VALUES (2,  'bar',150.0);
INSERT INTO Amenities VALUES (2,  'swimming pool',400.0);
INSERT INTO Amenities VALUES (2,  'lounge',250.0);
INSERT INTO Amenities VALUES (2,  'tennis court',75.0);
INSERT INTO Amenities VALUES (3, 'restaurant',200.0);
INSERT INTO Amenities VALUES (1 ,  'bar',150.0);
INSERT INTO Amenities VALUES (4, 'swimming pool',400.0);
INSERT INTO Amenities VALUES (5,'lounge',250.0);
INSERT INTO Amenities VALUES (4, 'bar',150.0);
INSERT INTO Amenities VALUES (5, 'tennis court',75.0);

INSERT INTO Room VALUES (1, 'Medium');
INSERT INTO Room VALUES (2, 'Big');
INSERT INTO Room VALUES (3, 'Small');
INSERT INTO Room VALUES (4, 'X-Large');
INSERT INTO Room VALUES (5, 'X-Small');
INSERT INTO Room VALUES (6, 'Extra Comfort');

INSERT INTO Room_type VALUES (1, 2,100.0);
INSERT INTO Room_type VALUES (2, 3,50.0);
INSERT INTO Room_type VALUES (3, 1,75.0);
INSERT INTO Room_type VALUES (4, 4,150.0);
INSERT INTO Room_type VALUES (5, 6,200.0);
INSERT INTO Room_type VALUES (4, 5,25.0);

INSERT INTO Booking VALUES(1, 2,1, DATE '2013-03-14', 1, DATE '2013-03-29', DATE '2013-04-17', 1);
INSERT INTO Booking VALUES(2, 5,2, DATE '2012-03-16', 4, DATE '2012-03-31', DATE '2012-04-11', 2);
INSERT INTO Booking VALUES(3, 1,3, DATE '2011-03-09', 1, DATE '2011-04-01', DATE '2011-04-11', 3);
INSERT INTO Booking VALUES(4, 5,4, DATE '2010-04-01', 5, DATE '2010-04-29', DATE '2010-05-13', 5);
INSERT INTO Booking VALUES(5, 3,5, DATE '2009-01-11', 2, DATE '2009-02-14', DATE '2009-02-16', 2);
INSERT INTO Booking VALUES(6, 4, 6,DATE '2013-03-14', 1, DATE '2013-04-29', DATE '2013-05-13', 5);
INSERT INTO Booking VALUES(7, 6,7, DATE '2001-12-31', 3, DATE '2002-01-10', DATE '2002-05-13', 4);
INSERT INTO Booking VALUES(8, 3,8, DATE '2007-02-28', 1, DATE '2007-04-21', DATE '2007-04-30', 6);
INSERT INTO Booking VALUES(9, 2,9, DATE '2004-01-27', 1, DATE '2004-02-02', DATE '2004-02-07', 4);
INSERT INTO Booking VALUES(10, 5, 10,DATE '2005-03-14', 1, DATE '2005-04-29', DATE '2005-05-13', 5);
INSERT INTO Booking VALUES(11, 2, 7,DATE '2006-02-01', 4, DATE '2006-02-16', DATE '2006-02-23', 1);