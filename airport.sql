create table Airport(
id int NOT NULL,
name varchar(50),
IATA varchar(50),
PRIMARY KEY(id)
);


create table Route(
id int NOT NULL,
destination1 int NOT NULL,
destination2 int NOT NULL,
FOREIGN KEY (destination1) REFERENCES Airport(id),
FOREIGN KEY(destination2) REFERENCES Airport(id),
PRIMARY KEY(id)
);

create table Airline(
id int NOT NULL,
name varchar(50),
PRIMARY KEY(id)
);

create table Route_owners(
airline int NOT NULL,
route int NOT NULL,
FOREIGN KEY (airline) REFERENCES Airline(id),
FOREIGN KEY (route) REFERENCES Route(id),
PRIMARY KEY(route,airline)
);

create table All_airline_routers(
airport int NOT NULL,
route int NOT NULL,
airline int NOT NULL,
FOREIGN KEY (airline) REFERENCES Airline(id),
FOREIGN KEY (route) REFERENCES Route(id),
FOREIGN KEY (airport) REFERENCES Airport(id),
PRIMARY KEY (airport,route,airline)

);

INSERT INTO Airport(name,IATA,id) VALUES ('Dubai International Airport','DXB',1)
INSERT INTO Airport(name,IATA,id) VALUES ('Miami International Airport','MIA',2)
INSERT INTO Airport(name,IATA,id) VALUES ('metropolitan area','MOW',3)
INSERT INTO Airport(name,IATA,id) VALUES ('Los Angeles International Airport','LAX',4)
INSERT INTO Airport(name,IATA,id) VALUES ('biza Airport','IBZ',5)
INSERT INTO Airport(name,IATA,id) VALUES ('Suvarnabhumi Airport','BKK',6)
INSERT INTO Airport(name,IATA,id) VALUES ('Helsinki-Malmi Airport','HEM',7)
INSERT INTO Airport(name,IATA,id) VALUES ('Copenhagen Airport, Kastrup','CPH',8)
INSERT INTO Airport(name,IATA,id) VALUES ('Orlando Executive Airport','ORL',9)
INSERT INTO Airport(name,IATA,id) VALUES ('Singapore Changi Airport','SIN',10)

INSERT INTO Route (destination1,destination2,id) 
VALUES (8,1,1)
INSERT INTO Route (destination1,destination2,id) 
VALUES (8,2,2)
INSERT INTO Route (destination1,destination2,id) 
VALUES (8,3,3)
INSERT INTO Route (destination1,destination2,id) 
VALUES (8,4,4)
INSERT INTO Route (destination1,destination2,id) 
VALUES (8,5,5)
INSERT INTO Route (destination1,destination2,id) 
VALUES (8,6,6)
INSERT INTO Route (destination1,destination2,id) 
VALUES (8,7,7)
INSERT INTO Route (destination1,destination2,id) 
VALUES (8,9,8)
INSERT INTO Route (destination1,destination2,id) 
VALUES (8,10,9)

INSERT INTO Airline (name,id) 
VALUES ('SAS',1)
INSERT INTO Airline (name,id) 
VALUES ('KLM',2)
INSERT INTO Airline (name,id) 
VALUES ('BEEF',3)


INSERT INTO Route_owners (airline,route)
VALUES (1,1)
INSERT INTO Route_owners (airline,route)
VALUES (3,2)
INSERT INTO Route_owners (airline,route)
VALUES (2,3)
INSERT INTO Route_owners (airline,route)
VALUES (1,4)
INSERT INTO Route_owners (airline,route)
VALUES (2,5)
INSERT INTO Route_owners (airline,route)
VALUES (3,6)
INSERT INTO Route_owners (airline,route)
VALUES (2,7)
INSERT INTO Route_owners (airline,route)
VALUES (1,8)
INSERT INTO Route_owners (airline,route)
VALUES (3,9)



INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,1,1)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,2,1)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,3,4)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,2,7)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,1,9)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,2,9)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,1,4)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,3,6)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,2,6)
INSERT INTO All_airline_routers (airport,airline,route)
VALUES (8,3,3)
