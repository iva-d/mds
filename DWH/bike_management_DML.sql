INSERT INTO bike_management."User"(username,email,first_name,last_name,phone_number,date_of_birth) 
VALUES
('azh','angela.zhang@email.com','Angela','Zhang','100000001','1994-03-12'),
('idodikj','iva.dodikj@email.com','Iva','Dodikj','100000002','1996-08-21'),
('jakhmedov','jaloliddin.akhmedov@email.com','Jaloliddin','Akhmedov','100000003','1993-11-05'),
('jdoe','jdoe@email.com','John','Doe','100000004','1995-04-12'),
('asmith','asmith@email.com','Anna','Smith','100000005','1998-07-21'),
('mross','mross@email.com','Mike','Ross','100000006','1992-02-10'),
('lwhite','lwhite@email.com','Laura','White','100000007','1990-09-14'),
('knguyen','knguyen@email.com','Kim','Nguyen','100000008','1997-01-30'),
('rpatel','rpatel@email.com','Raj','Patel','100000009','1991-05-19'),
('sgarcia','sgarcia@email.com','Sofia','Garcia','100000010','1999-06-18'),
('tharris','tharris@email.com','Tom','Harris','100000011','1992-02-02'),
('amartin','amartin@email.com','Alice','Martin','100000012','1995-09-09'),
('bjohnson','bjohnson@email.com','Ben','Johnson','100000013','1994-10-10'),
('cwilliams','cwilliams@email.com','Chris','Williams','100000014','1993-12-12'),
('dbrown','dbrown@email.com','David','Brown','100000015','1991-03-03'),
('emiller','emiller@email.com','Emma','Miller','100000016','1997-07-07'),
('flee','flee@email.com','Frank','Lee','100000017','1990-08-08'),
('gclark','gclark@email.com','Grace','Clark','100000018','1996-06-06'),
('hhall','hhall@email.com','Henry','Hall','100000019','1998-01-01'),
('ijames','ijames@email.com','Isabel','James','100000020','1999-02-02'),
('kmoore','kmoore@email.com','Kevin','Moore','100000021','1994-04-04'),
('lking','lking@email.com','Lily','King','100000022','1993-05-05'),
('mmorris','mmorris@email.com','Mark','Morris','100000023','1995-06-06'),
('nward','nward@email.com','Nina','Ward','100000024','1996-07-07'),
('owright','owright@email.com','Oscar','Wright','100000025','1992-08-08'),
('pturner','pturner@email.com','Paul','Turner','100000026','1991-09-09'),
('qadams','qadams@email.com','Quinn','Adams','100000027','1990-10-10'),
('rscott','rscott@email.com','Rachel','Scott','100000028','1998-11-11'),
('tgreen','tgreen@email.com','Tim','Green','100000029','1993-12-12'),
('uvargas','uvargas@email.com','Ursula','Vargas','100000030','1994-01-01');

INSERT INTO bike_management.Station(name,latitude,longitude,address,capacity) 
VALUES
('Central',41.9981,21.4254,'Center Blvd 1',20),
('City Park',41.9999,21.4200,'Park St 10',15),
('University',42.0010,21.4305,'Campus Rd 5',25),
('East Side',41.9950,21.4350,'East 22',18),
('West End',41.9920,21.4180,'West 8',12),
('River Point',42.0030,21.4400,'River Rd 3',22),
('North Hub',42.0100,21.4500,'North 9',20),
('South Hub',41.9800,21.4100,'South 4',16),
('Old Town',41.9900,21.4300,'Old 12',14),
('Tech Park',42.0050,21.4450,'Tech 7',30);

INSERT INTO bike_management.BikeType(type_name,description) 
VALUES
('Standard','Regular city bike'),
('Electric','Electric assisted bike');

INSERT INTO bike_management.Bike(serial_number,bike_type_id,status,battery_level,purchase_date,station_id) 
VALUES
('STD001',1,'available',NULL,'2023-01-01',1),
('STD002',1,'available',NULL,'2023-01-02',2),
('STD003',1,'available',NULL,'2023-01-03',3),
('STD004',1,'available',NULL,'2023-01-04',4),
('STD005',1,'available',NULL,'2023-01-05',5),
('STD006',1,'available',NULL,'2023-01-06',6),
('STD007',1,'available',NULL,'2023-01-07',7),
('STD008',1,'available',NULL,'2023-01-08',8),
('STD009',1,'available',NULL,'2023-01-09',9),
('STD010',1,'available',NULL,'2023-01-10',10),
('ELE001',2,'available',80,'2023-02-01',1),
('ELE002',2,'available',60,'2023-02-02',2),
('ELE003',2,'available',45,'2023-02-03',3),
('ELE004',2,'available',30,'2023-02-04',4),
('ELE005',2,'maintenance',15,'2023-02-05',5),
('ELE006',2,'available',90,'2023-02-06',6),
('ELE007',2,'available',70,'2023-02-07',7),
('ELE008',2,'available',55,'2023-02-08',8),
('ELE009',2,'available',40,'2023-02-09',9),
('ELE010',2,'available',20,'2023-02-10',10);

INSERT INTO bike_management.Subscription(start_date,end_date,price,plan_type,user_id,status) 
VALUES
('2024-01-01','2024-12-31',120,'Yearly',1,'active'),
('2024-02-01','2024-08-01',60,'Monthly',2,'active'),
('2024-02-01','2024-08-01',60,'Monthly',3,'active'),
('2024-02-01','2024-08-01',60,'Monthly',4,'active'),
('2024-02-01','2024-08-01',60,'Monthly',5,'active'),
('2024-02-01','2024-08-01',60,'Monthly',6,'active'),
('2024-02-01','2024-08-01',60,'Monthly',7,'active'),
('2024-02-01','2024-08-01',60,'Monthly',8,'active'),
('2024-02-01','2024-08-01',60,'Monthly',9,'active'),
('2024-02-01','2024-08-01',60,'Monthly',10,'active'),
('2024-02-01','2024-08-01',60,'Monthly',11,'active'),
('2024-02-01','2024-08-01',60,'Monthly',12,'active'),
('2024-02-01','2024-08-01',60,'Monthly',13,'active'),
('2024-02-01','2024-08-01',60,'Monthly',14,'active'),
('2024-02-01','2024-08-01',60,'Monthly',15,'active');

INSERT INTO bike_management.Ride(user_id,bike_id,start_station_id,end_station_id,start_time,end_time,distance,price,ride_status) 
VALUES
(1,1,1,2,'2024-06-01 08:00','2024-06-01 08:25',5.0,3.5,'completed'),
(2,2,2,3,'2024-06-01 09:00','2024-06-01 09:30',6.2,4.0,'completed'),
(3,3,3,4,'2024-06-01 10:00','2024-06-01 10:40',8.1,5.2,'completed'),
(4,4,4,5,'2024-06-01 11:00','2024-06-01 11:20',4.3,3.0,'completed'),
(5,5,5,6,'2024-06-01 12:00','2024-06-01 12:45',9.0,6.0,'completed'),
(6,6,6,7,'2024-06-01 13:00','2024-06-01 13:30',6.5,4.3,'completed'),
(7,7,7,8,'2024-06-02 08:00','2024-06-02 08:30',6.0,4.0,'completed'),
(8,8,8,9,'2024-06-02 09:00','2024-06-02 09:35',7.5,4.8,'completed'),
(9,9,9,10,'2024-06-02 10:00','2024-06-02 10:50',10.0,6.5,'completed'),
(10,10,10,1,'2024-06-02 11:00','2024-06-02 11:25',5.4,3.6,'completed'),
(11,11,1,3,'2024-06-03 08:00','2024-06-03 08:30',6.3,4.1,'completed'),
(12,12,2,4,'2024-06-03 09:00','2024-06-03 09:40',8.4,5.4,'completed'),
(13,13,3,5,'2024-06-03 10:00','2024-06-03 10:55',11.0,7.0,'completed'),
(14,14,4,6,'2024-06-03 11:00','2024-06-03 11:35',7.1,4.9,'completed'),
(15,15,5,7,'2024-06-03 12:00','2024-06-03 12:20',4.2,3.0,'completed'),
(16,16,6,8,'2024-06-04 08:00','2024-06-04 08:25',5.3,3.5,'completed'),
(17,17,7,9,'2024-06-04 09:00','2024-06-04 09:45',9.5,6.2,'completed'),
(18,18,8,10,'2024-06-04 10:00','2024-06-04 10:35',7.2,4.6,'completed'),
(19,19,9,1,'2024-06-04 11:00','2024-06-04 11:50',10.3,6.8,'completed'),
(20,20,10,2,'2024-06-04 12:00','2024-06-04 12:30',6.4,4.2,'completed'),
(21,1,1,2,'2024-06-05 08:00','2024-06-05 08:20',4.5,3.0,'completed'),
(22,2,2,3,'2024-06-05 09:00','2024-06-05 09:40',8.0,5.0,'completed'),
(23,3,3,4,'2024-06-05 10:00','2024-06-05 10:30',6.1,4.0,'completed'),
(24,4,4,5,'2024-06-05 11:00','2024-06-05 11:25',5.2,3.5,'completed'),
(25,5,5,6,'2024-06-05 12:00','2024-06-05 12:50',10.5,6.9,'completed'),
(26,6,6,7,'2024-06-06 08:00','2024-06-06 08:30',6.7,4.3,'completed'),
(27,7,7,8,'2024-06-06 09:00','2024-06-06 09:35',7.4,4.8,'completed'),
(28,8,8,9,'2024-06-06 10:00','2024-06-06 10:45',9.6,6.0,'completed'),
(29,9,9,10,'2024-06-06 11:00','2024-06-06 11:25',5.1,3.4,'completed'),
(30,10,10,1,'2024-06-06 12:00','2024-06-06 12:40',8.3,5.5,'completed'),
(1,11,1,3,'2024-06-07 08:00','2024-06-07 08:30',6.0,4.0,'completed'),
(2,12,2,4,'2024-06-07 09:00','2024-06-07 09:50',10.0,6.5,'completed'),
(3,13,3,5,'2024-06-07 10:00','2024-06-07 10:35',7.3,4.7,'completed'),
(4,14,4,6,'2024-06-07 11:00','2024-06-07 11:20',4.4,3.0,'completed'),
(5,15,5,7,'2024-06-07 12:00','2024-06-07 12:45',9.2,6.1,'completed'),
(6,16,6,8,'2024-06-08 08:00','2024-06-08 08:25',5.4,3.6,'completed'),
(7,17,7,9,'2024-06-08 09:00','2024-06-08 09:35',7.8,5.0,'completed'),
(8,18,8,10,'2024-06-08 10:00','2024-06-08 10:50',10.2,6.7,'completed'),
(9,19,9,1,'2024-06-08 11:00','2024-06-08 11:40',8.4,5.5,'completed'),
(10,20,10,2,'2024-06-08 12:00','2024-06-08 12:25',5.0,3.3,'completed'),
(11,1,1,2,'2024-06-09 08:00','2024-06-09 08:30',6.2,4.1,'completed'),
(12,2,2,3,'2024-06-09 09:00','2024-06-09 09:40',8.7,5.6,'completed'),
(13,3,3,4,'2024-06-09 10:00','2024-06-09 10:50',10.4,6.8,'completed'),
(14,4,4,5,'2024-06-09 11:00','2024-06-09 11:25',5.3,3.5,'completed'),
(15,5,5,6,'2024-06-09 12:00','2024-06-09 12:45',9.0,6.0,'completed'),
(16,6,6,7,'2024-06-10 08:00','2024-06-10 08:30',6.6,4.4,'completed'),
(17,7,7,8,'2024-06-10 09:00','2024-06-10 09:35',7.9,5.2,'completed'),
(18,8,8,9,'2024-06-10 10:00','2024-06-10 10:45',9.8,6.3,'completed'),
(19,9,9,10,'2024-06-10 11:00','2024-06-10 11:30',6.0,4.0,'completed'),
(20,10,10,1,'2024-06-10 12:00','2024-06-10 12:40',8.5,5.6,'completed'),
(21,11,1,3,'2024-06-11 08:00','2024-06-11 08:30',6.3,4.1,'completed'),
(22,12,2,4,'2024-06-11 09:00','2024-06-11 09:50',10.1,6.6,'completed'),
(23,13,3,5,'2024-06-11 10:00','2024-06-11 10:35',7.4,4.8,'completed'),
(24,14,4,6,'2024-06-11 11:00','2024-06-11 11:20',4.6,3.1,'completed'),
(25,15,5,7,'2024-06-11 12:00','2024-06-11 12:45',9.3,6.2,'completed');

INSERT INTO bike_management.Payment(user_id,subscription_id,ride_id,amount,payment_method)
SELECT user_id, subscription_id, NULL, price, 'credit_card'
FROM bike_management.Subscription;

INSERT INTO bike_management.Payment(user_id,subscription_id,ride_id,amount,payment_method)
SELECT user_id, NULL, ride_id, price, 'cash'
FROM bike_management.Ride
WHERE user_id > 15;

INSERT INTO bike_management.MaintenanceLog(bike_id, station_id, repair_type, repair_cost, repair_days) 
VALUES
-- Bike maintenance
(5,NULL,'Brake Replacement',45.00,1),
(10,NULL,'Chain Repair',30.00,1),
(15,NULL,'Battery Replacement',120.00,2),
(18,NULL,'Wheel Alignment',25.00,1),
(3,NULL,'Gear Adjustment',35.00,1),
(7,NULL,'Frame Inspection',20.00,1),
(12,NULL,'Motor Diagnostics',80.00,2),
(20,NULL,'Tire Replacement',50.00,1),
-- Station maintenance
(NULL,2,'Dock Repair',200.00,3),
(NULL,5,'Electrical Panel Repair',350.00,4),
(NULL,1,'Screen Replacement',150.00,2),
(NULL,8,'Locking System Repair',180.00,3),
(NULL,4,'Power Cable Replacement',220.00,2),
(NULL,9,'Terminal Software Update',90.00,1),
(NULL,6,'Station Cleaning & Inspection',75.00,1);

