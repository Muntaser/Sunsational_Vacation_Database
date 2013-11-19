--All project queries

--Query 4 (works)
--Given a client name as the input, find what trips were booked by
--that client (give all relevant information about the trip including which agent booked each trip).
	SELECT Book_id,Agent.firstnm,Agent.lastnm,Booking.clientID,Client.firstnm,Client.lastnm, Date_Booking,Resort_name,Arrival_date,Dept_date,Room.Room_type_name 
	FROM Booking,Client,Resort,Room,Agent 
	WHERE Client.firstnm='&fm' AND Client.lastnm='&lm'
							   AND  Booking.clientID=Client.clientID 
							   AND Booking.Resort_id=Resort.Resort_id 	
							   AND Booking.Room_type_id=Room.Room_type_id 
							   AND Booking.agentID=Agent.agentID;

--Query 5 (Working)
--Given the name of a resort (selected by the user), what is the Sun Rating of that resort?

SELECT Resort.Resort_name,Rate_id 
FROM Resort_Rating, Resort 
WHERE Resort.Resort_id=Resort_Rating.Resort_id AND Resort.Resort_name ='&rname';

--Query 6a
--Find the total revenue from hotel room bookings (sum of all bookings’ nightly rates for all 
--nights plus all inclusive fees) for a given agent

SELECT ag.agentID,sum(rt.price+a.Amenityprice) AS TotalHotelRevenue 
FROM Booking b, Client c, Resort r, Room_type rt,Amenities a,Agent ag
WHERE b.clientID=c.clientID AND ag.agentID=b.agentID AND r. Resort_id=rt.Resort_id AND a.Resort_id=r.Resort_id AND ag.firstnm='John' AND ag.lastnm='Doe'
GROUP BY ag.agentID;

--Query 6b
--Find the total revenue from hotel room bookings (sum of all bookings’ nightly rates for all 
--nights plus all inclusive fees) for a all agents
SELECT ag.agentID,sum(rt.price+a.Amenityprice) as TotalHotelRevenue 
FROM Booking b, Client c, Resort r, Room_type rt,Amenities a,Agent ag
WHERE b.clientID=c.clientID and ag.agentID=b.agentID and r. Resort_id=rt.Resort_id and a.Resort_id=r.Resort_id 
GROUP BY ag.agentID;

--Query 6c
--Find the total revenue from hotel room bookings (sum of all bookings’ nightly rates for all 
--nights plus all inclusive fees) for a given city
SELECT City,sum(rt.price+a.Amenityprice) as TotalHotelRevenue 
FROM Booking b, Client c, Resort r, Room_type rt,Amenities a,Agent ag
WHERE b.clientID=c.clientID and ag.agentID=b.agentID and r. Resort_id=rt.Resort_id and a.Resort_id=r.Resort_id and City='Miami'
GROUP BY City;

--Query 6d
--Find the total revenue from hotel room bookings (sum of all bookings’ nightly rates for all 
--nights plus all inclusive fees) for a given country.
SELECT Country,sum(rt.price+a.Amenityprice) as TotalHotelRevenue FROM Booking b, Client c, Resort r, Room_type rt,Amenities a,Agent ag
WHERE b.clientID=c.clientID and ag.agentID=b.agentID and r. Resort_id=rt.Resort_id and a.Resort_id=r.Resort_id and Country='USA'
GROUP BY Country;



--Query 7 (works)
--Which resorts offer all possible amenities?
SELECT b.Resort_id, Resort_name 
FROM Amenities b JOIN Resort  ON b.Resort_id = Resort.Resort_id 
GROUP BY b.Resort_id, Resort_name 
HAVING COUNT( b.Resort_id )= (  SELECT COUNT(DISTINCT a.Amenity_description ) 
								FROM Amenities a);
								

--Query 8a (Works)
--List the number of resorts in a given city 
SELECT City,COUNT(*)
FROM Resort 
where City ='&city'
GROUP BY City;

--Query 8b (Works)
--List the number of resorts in a given country
SELECT Country,COUNT(*)
FROM Resort 
where Country ='&country'
GROUP BY Country;

--Query 9
--List all resorts which a client visited and shows num days*/
SELECT R.resort_name, D.firstnm, D.lastnm, D.days
FROM resort R inner join (SELECT B.resort_id, (B.dept_date - B.arrival_date) days, C.firstnm, C.lastnm 
							FROM booking B inner join (select clientid, firstnm, lastnm
														from client
														where firstnm = '&firstnm' and lastnm = '&lastnm') C 
										   on C.clientid = B.clientid) D 
			  on D.resort_id = R.resort_id;
		
--Query 10 (works)
--List all amenities which contain a certain string
SELECT Amenity_description 
FROM Amenities 
WHERE Amenity_description LIKE '&amenity'; 

--Query 11 (works) 
--List all users stayed all inclusive at a hotel within last 3 months*/
SELECT b.clientID, c.firstnm, c.lastnm, c.emailAdd 
FROM Booking b, Client c 
WHERE (to_date((SysDate-90),'yyyy-mm-dd'))<=to_date(Date_Booking,'yyyy-mm-dd')  AND c.clientID = b. clientID ;

--Query 12 (Works)
--What is the average number of days booked per trip? For a given client?
SELECT Booking.clientID, AVG(Dept_Date - Arrival_date)
FROM Booking,Client
WHERE Booking.clientID=Client.clientID and Client.firstnm='&firstnm' AND Client.lastnm = '&lastnm'
GROUP BY Booking.clientID;

--Query 13 (works) 
--Agents with largest num of bookings
SELECT agentID,firstnm,lastnm FROM Agent 
WHERE agentID IN (Select agentID 
					FROM Booking  b  
					GROUP BY b.agentID 
					HAVING COUNT(b.Book_id) >= ALL ( Select COUNT(b2.Book_id) 
													 FROM Booking b2 
													 GROUP BY b2.agentID));

--Query 14a
--Which clients have booked the largest numbers of trips in a given period?

SELECT c.clientID,c.firstnm,c.lastnm,b.Date_Booking 
FROM Client c join Booking b on b.clientID=c.clientID 
WHERE to_char(Date_Booking,'yyyy-mm-dd') >='2000-01-01' AND to_char(Date_Booking,'yyyy-mm-dd')<='2013-01-01' 
										   AND  c.clientID IN (SELECT b.clientID  
																FROM Booking b  
																GROUP BY b.clientID 
																HAVING COUNT(distinct b.Date_Booking) >= ALL ( SELECT COUNT(distinct b2.Date_Booking) 
																												FROM Booking b2 
																												GROUP BY b2.clientID));


--Query 14b
--Which have spent the most money in some period?
SELECT c.clientID 
FROM Booking b, Client c, Resort r, Room_type rt,Amenities a
WHERE b.clientID=c.clientID AND r. Resort_id=rt.Resort_id 
							AND a.Resort_id=r.Resort_id
							AND to_char(Date_Booking,'yyyy-mm-dd')>= '2000-01-01' 
							AND to_char(Date_Booking,'yyyy-mm-dd')<= '2013-01-01'
GROUP BY c.clientID 
HAVING SUM(rt.price+a.Amenityprice) >= ALL ( Select sum(rt2.price+a2.Amenityprice)  
 											 FROM Booking b2, Client c2, Resort r2, Room_type rt2,Amenities a2
 											 WHERE b2.clientID=c2.clientID and r2. Resort_id=rt2.Resort_id 
																		   and a2.Resort_id=r2.Resort_id
 																		   and to_char(Date_Booking,'yyyy-mm-dd')>= '2000-01-01' 
																		   and to_char(Date_Booking,'yyyy-mm-dd')<= '2013-01-01'
											 GROUP BY c2.clientID);
											
--Query 15 (WORKS)
--List all agents and the number of clients who have booked with them in descending order.
SELECT  DISTINCT(agentID) ,count(clientID) as Number_of_clients 
FROM Booking 
GROUP BY(agentID) 
ORDER BY Number_of_clients desc;


