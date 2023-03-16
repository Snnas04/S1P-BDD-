CREATE DATABASE AIRLINE;

USE AIRLINE;

CREATE TABLE AIRPORTS
(	id_airport CHAR(3),
	location VARCHAR(30),
	country VARCHAR(30),
	PRIMARY KEY (id_airport));

CREATE TABLE CREWS
(	id_crew INTEGER,
	alias VARCHAR(20),
	firstname VARCHAR(30),
    surname VARCHAR(30),
    email VARCHAR(80),
    mobile_phone VARCHAR(11),
	PRIMARY KEY (id_crew));

CREATE TABLE FLIGHTS
(	id_flight INTEGER,
	flight_number CHAR(5),
	departure_airport CHAR(3),
	arrival_airport CHAR(3),
	departure_time DATETIME,
	arrival_time DATETIME,
	number_pax INTEGER,
	id_pilot INTEGER,
	id_copilot INTEGER,
	PRIMARY KEY (id_flight),
	FOREIGN KEY (departure_airport) REFERENCES AIRPORTS (id_airport),
	FOREIGN KEY (arrival_airport) REFERENCES AIRPORTS (id_airport),
	FOREIGN KEY (id_pilot) REFERENCES CREWS (id_crew),
	FOREIGN KEY (id_copilot) REFERENCES CREWS (id_crew));

INSERT INTO AIRPORTS VALUES ('PMI','Palma de Mallorca','ESPAÑA');
INSERT INTO AIRPORTS VALUES ('BCN','Barcelona','ESPAÑA');
INSERT INTO AIRPORTS VALUES ('TFN','Tenerife Norte','ESPAÑA');
INSERT INTO AIRPORTS VALUES ('TFS','Tenerife Sur','ESPAÑA');
INSERT INTO AIRPORTS VALUES ('BIO','Bilbao','ESPAÑA');
INSERT INTO AIRPORTS VALUES ('MAD','Madrid','ESPAÑA');
INSERT INTO AIRPORTS VALUES ('VRN','Verona','ITALIA');
INSERT INTO AIRPORTS VALUES ('LIS','Lisboa','PORTUGAL');
INSERT INTO AIRPORTS VALUES ('ORY','París','FRANCIA');
INSERT INTO AIRPORTS VALUES ('AMS','Amsterdam','HOLANDA');

INSERT INTO CREWS VALUES (1,'PEPE','José Maria','Torres Quetglas','pepe@airline.com','111222222');
INSERT INTO CREWS VALUES (2,'JUAN','Juan','Maroto Quetglas','juan@airline.com','112123456');
INSERT INTO CREWS VALUES (3,'PACO','Francisco','Mas Jaume','paco@airline.com','113654321');
INSERT INTO CREWS VALUES (4,'TONI','Antonio','Gibert Ximenes','toni@airline.com','114456789');
INSERT INTO CREWS VALUES (5,'PEPA','Francisca','Cerdá Alorda','pepa@airline.com','115888888');
INSERT INTO CREWS VALUES (6,'XISCO','Francisco','Méndez Gómez','xisco@airline.com','116989898');
INSERT INTO CREWS VALUES (7,'ALLY','Alícia','Foord','ally@airline.com','117777777');
INSERT INTO CREWS VALUES (8,'JOHN','John Brown','Reus Mateu','john@airline.com','118987654');
INSERT INTO CREWS VALUES (9,'JUANA','Juana Maria','Vives Barceló','juana@airline.com','119456789');

INSERT INTO FLIGHTS VALUES (81,'JK123','PMI','BCN','2013-01-01 12:00:00','2013-01-01 12:30:00',90,1,9);
INSERT INTO FLIGHTS VALUES (82,'JK321','BCN','MAD','2013-01-01 18:00:00','2013-01-01 18:45:00',92,1,3);
INSERT INTO FLIGHTS VALUES (83,'JK111','BIO','TFN','2013-01-02 10:00:00','2013-01-02 11:15:00',120,1,7);
INSERT INTO FLIGHTS VALUES (85,'JK222','BIO','LIS','2013-01-03 09:10:00','2013-01-03 10:15:00',87,6,9);
INSERT INTO FLIGHTS VALUES (87,'UX333','LIS','PMI','2013-01-03 19:20:00','2013-01-03 20:35:00',90,8,9);
INSERT INTO FLIGHTS VALUES (56,'JK444','ORY','AMS','2013-01-04 21:00:00','2013-01-04 21:45:00',110,2,9);
INSERT INTO FLIGHTS VALUES (57,'JK678','AMS','TFS','2013-01-04 23:05:00','2013-01-05 01:30:00',76,1,3);
INSERT INTO FLIGHTS VALUES (58,'JK987','ORY','PMI','2013-01-05 12:00:00','2013-01-05 13:15:00',98,1,4);
INSERT INTO FLIGHTS VALUES (59,'JK567','BCN','MAD','2013-01-05 08:40:00','2013-01-05 09:40:00',99,7,1);
INSERT INTO FLIGHTS VALUES (60,'UX765','VRN','BCN','2013-01-07 17:00:00','2013-01-07 19:00:00',91,7,2);
INSERT INTO FLIGHTS VALUES (61,'JK838','PMI','TFS','2013-01-08 12:00:00','2013-01-08 13:30:00',65,7,8);
INSERT INTO FLIGHTS VALUES (62,'JK435','TFN','BIO','2013-01-08 23:50:00','2013-01-09 01:45:00',80,9,8);
INSERT INTO FLIGHTS VALUES (63,'JK789','VRN','PMI','2013-01-09 12:00:00','2013-01-09 14:05:00',70,6,9);
INSERT INTO FLIGHTS VALUES (64,'AT899','BIO','MAD','2013-01-10 12:20:00','2013-01-10 13:30:00',73,5,2);
INSERT INTO FLIGHTS VALUES (65,'JK098','MAD','BIO','2013-01-11 11:00:00','2013-01-11 11:30:00',103,5,3);
INSERT INTO FLIGHTS VALUES (66,'PH299','PMI','ORY','2013-01-12 22:00:00','2013-01-12 23:45:00',91,6,7);
