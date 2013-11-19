drop table Booking;
drop table Client;
drop table Agent;

drop table Room_type;

drop table Amenities;
drop table Resort_Rating;
drop table Resort;
drop table Room;



-- Client table

CREATE TABLE Client(
    clientID INT NOT NULL,
    phoneNo VARCHAR(255) NOT NULL,
    emailAdd VARCHAR(255) NOT NULL,
    firstnm VARCHAR(255) NOT NULL,
    lastnm VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    zipcode INT NOT NULL,
    gender VARCHAR(255) NOT NULL,
    CONSTRAINT chk_gender CHECK(gender = 'male' OR gender = 'female'),
    primary key (clientID),
    unique(emailAdd),
    unique(phoneNo));
 
    
alter table Client add CONSTRAINT
Client_EMAILFORMAT_CHK check 
   ( REGEXP_LIKE(emailAdd, '[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}'));


--Agent table

CREATE TABLE Agent(
    agentID INT NOT NULL,
    phoneNo VARCHAR(255) NOT NULL,
    emailAdd VARCHAR(255) NOT NULL,
    firstnm VARCHAR(255) NOT NULL,
    lastnm VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    zipcode INT NOT NULL,
    gender VARCHAR(255) NOT NULL,
    Agent_type_name varchar(255) not null,
    CONSTRAINT chk_gender_Agent CHECK(gender = 'male' OR gender = 'female'),
    primary key (agentID),
    unique(emailAdd),
    unique(phoneNo));
    
alter table Agent add CONSTRAINT
Agent_EMAILFORMAT_CHK check 
   ( REGEXP_LIKE(emailAdd, '[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}'));




alter table Agent add CONSTRAINT
Agent_type_chk check (Agent_type_name='Travel Agent' OR Agent_type_name='Agent Manager');

--	Resort

CREATE TABLE Resort(
Resort_id int not null,
Resort_name varchar(255) not null,
City varchar(255) not null,
Country varchar(255) not null,
Address varchar(255) not null,
phoneNo VARCHAR(255) NOT NULL,
primary key(Resort_id),
unique(Resort_name,City,Country,Address)
);

--Room
CREATE TABLE Room(
Room_type_id int not null,
Room_type_name varchar(255) not null,
primary key(Room_type_id),
unique(Room_type_name));

--Room_type
CREATE TABLE Room_type(
Resort_id references Resort(Resort_id),
Room_type_id references Room(Room_type_id),
price VARCHAR(255) NOT NULL,
unique(Resort_id,Room_type_id));

--Amenities
CREATE TABLE Amenities(
Resort_id references Resort(Resort_id),
Amenity_description varchar(255) not null,
Amenityprice varchar(255) not null
);



-- Resort_Rating


CREATE TABLE Resort_Rating (
Resort_id references Resort(Resort_id),
Rate_id int not null,
unique(Resort_id,Rate_id)
);

--Booking

CREATE TABLE Booking(
Book_id int not null,
agentID references Agent(agentID),
clientID references Client(clientID),
Date_Booking date not null,
Resort_id references Resort(Resort_id),
Arrival_date date not null,
Dept_date date not null,
primary key(Book_id),
Room_type_id REFERENCES Room ( Room_type_id ));




    

