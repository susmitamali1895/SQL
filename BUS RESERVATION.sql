CREATE DATABASE BUSRESERVATION;
USE BUSRESERVATION;
CREATE TABLE BUS (
BUS_ROUTE VARCHAR(255),
BUS_TIME VARCHAR(255),
BUS_PICKUPPOINT VARCHAR(255),
BUS_DROPPOINT VARCHAR (255),
BUS_AVAILABLESEATS INT
);

INSERT INTO BUS
VALUES ("KOLHAPUR SATARA", "11AM", "TAWADE HOTEL", "SATARA STAND", 20 ),
("PUNE KOLHAPUR", "7 AM", "SWARGATE", "CBS STAND ", 15),
("MUMBAI- GOA", "6 AM", "CST", "PANJIM", 25),
("KOLHAPUR- MUMBAI", "7 AM", "TAWADE HOTEL", "CST", 5),
("SANGLI- KARAD", "8 PM", "HARIPUR", "SANGAM HOTEL", 10);


