use project;

CREATE TABLE User (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address VARCHAR(255),
    email_id VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    gender CHAR(1),
    phone_no VARCHAR(15)
);

CREATE TABLE Admin (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Train (
    train_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    place VARCHAR(100),
    destination VARCHAR(100),
    date DATE,
    arrival_time TIME,
    coach_no VARCHAR(10),
    seat_no VARCHAR(10)
);

CREATE TABLE T_class (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    train_id INT,
    class_name VARCHAR(50),
    FOREIGN KEY (train_id) REFERENCES Train(train_id)
);

CREATE TABLE Ticket (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    train_id INT,
    class_id INT,
    seat_no VARCHAR(10),
    date DATE,
    arrive_time TIME,
    distance DECIMAL(5,2),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (train_id) REFERENCES Train(train_id),
    FOREIGN KEY (class_id) REFERENCES TClass(class_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    ticket_id INT,
    bank_name VARCHAR(100),
    card_no VARCHAR(16),
    pin VARCHAR(4),
    payment_method ENUM('Credit Card', 'Debit Card'),
    FOREIGN KEY (ticket_id) REFERENCES Ticket(ticket_id)
);

INSERT INTO User (name, address, email_id, password, gender, phone_no) VALUES
('Rajat Sharma', 'Delhi, India', 'rajat.sharma@gmail.com', 'pass123', 'M', '9876543210'),
('Ram Kumar', 'Mumbai, India', 'ram.kumar@yahoo.com', 'password456', 'M', '9123456789'),
('Priya Singh', 'Bangalore, India', 'priya.singh@outlook.com', 'welcome789', 'F', '9876543211'),
('Neha Verma', 'Chennai, India', 'neha.verma@gmail.com', 'neha123', 'F', '9998765432'),
('Amit Sharma', 'Delhi, India', 'amit.sharma@gmail.com', 'pass123', 'M', '9876543210'), 
('Sunil Gupta', 'Kolkata, India', 'sunil.gupta@rediffmail.com', 'sunilpass', 'M', '9865432109'),
('Anjali Jadav', 'Pune, India', 'anjali.yadav@live.com', 'yadav2021', 'F', '9876598765'),
('Rakesh Bhansali', 'Hyderabad, India', 'rakesh.bhansali@gmail.com', 'securepass', 'M', '9123451234'),
('Meenu Nair', 'Cochin, India', 'meenu.nair@yahoo.in', 'meena234', 'F', '9988776655'),
('Suresh Reddy', 'Vijayawada, India', 'suresh.reddy@gmail.com', 'suresh456', 'M', '9876541230'),
('Rohit Patel', 'Ahmedabad, India', 'rohit.patel@gmail.com', 'rohitpass', 'M', '9876545678'),
('Preeti Kaur', 'Amritsar, India', 'preeti.kaur@gmail.com', 'kaur2020', 'F', '9988112233'),
('Amit Sharma', 'Delhi, India', 'amit.sharma1@gmail.com', 'passnew123', 'M', '9876543210'), 
('Nisha Gupta', 'Jaipur, India', 'nisha.gupta@outlook.com', 'nishapass', 'F', '9786543210'),
('Manoj Desai', 'Surat, India', 'manoj.desai@gmail.com', 'manoj987', 'M', '9798765432'),
('Rekha Joshi', 'Nagpur, India', 'rekha.joshi@yahoo.com', 'rekha123', 'F', '9999988888'),
('Rahul Mehta', 'Lucknow, India', 'rahul.mehta@gmail.com', 'mehta2021', 'M', '9988771122'),
('Deepika Sharma', 'Bhopal, India', 'deepika.sharma@gmail.com', 'deepika123', 'F', '9876512345'),
('Sunita Kumar', 'Patna, India', 'sunita.kumar@gmail.com', 'sunitapass', 'F', '9887766554'),
('Aman Sharma', 'Delhi, India', 'aman.sharma2@gmail.com', 'amitpassnew', 'M', '9876543210'); 
select * from User;

INSERT INTO Admin (user_id) VALUES
(1),  (2),  (3),  (4),  (5),
(6), (7), (8), (9), (10),
(11),(12), (13),(14), (15),
(16), (17), (18), (19),(20) ; 
select * from Admin;

INSERT INTO Train (name, place, destination, date, seat_no, coach_no, arrival_time) VALUES
('Rajdhani Express', 'Delhi', 'Mumbai', '2024-09-30', 32, 'S1', '09:30:00'),
('Shatabdi Express', 'Chennai', 'Bangalore', '2024-09-29', 45, 'C3', '12:15:00'),
('Duronto Express', 'Kolkata', 'Delhi', '2024-09-28', 18, 'S2', '10:00:00'),
('Garib Rath', 'Patna', 'Delhi', '2024-09-27', 21, 'G4', '07:45:00'),
('Jan Shatabdi', 'Lucknow', 'Varanasi', '2024-09-26', 50, 'C1', '14:00:00'),
('Vande Bharat', 'Ahmedabad', 'Surat', '2024-09-25', 12, 'C2', '06:30:00'),
('Tejas Express', 'Delhi', 'Chandigarh', '2024-10-01', 60, 'T5', '08:15:00'),
('Intercity Express', 'Mumbai', 'Pune', '2024-10-02', 14, 'G2', '15:30:00'),
('Karnataka Express', 'Bangalore', 'Delhi', '2024-10-03', 8, 'S5', '13:45:00'),
('Jammu Tawi Express', 'Jammu', 'Delhi', '2024-10-04', 24, 'S3', '16:00:00'),
('Howrah Express', 'Howrah', 'Mumbai', '2024-10-05', 40, 'S2', '11:15:00'),
('Netravati Express', 'Mangalore', 'Mumbai', '2024-10-06', 35, 'G1', '17:45:00'),
('Punjab Mail', 'Amritsar', 'Delhi', '2024-10-07', 10, 'S4', '19:00:00'),
('Goa Express', 'Goa', 'Delhi', '2024-10-08', 22, 'G3', '21:15:00'),
('Deccan Queen', 'Mumbai', 'Pune', '2024-10-09', 55, 'C4', '05:00:00');
select * from Train;

INSERT INTO TClass (class_name) VALUES
('First Class AC'),
('Second Class AC'),
('Third Class AC'),
('Sleeper Class'),
('Chair Car'),
('General'),
('Executive Chair Car');
select * from TClass;

INSERT INTO Ticket (user_id, train_id, class_id, seat_no, date, arrive_time, distance) VALUES
(1, 1, 1, 'S1-32', '2024-09-30', '09:30:00', 1387.50),  
(2, 2, 3, 'C3-45', '2024-09-29', '12:15:00', 350.75),   
(3, 3, 4, 'S2-18', '2024-09-28', '10:00:00', 1511.25), 
(4, 4, 6, 'G4-21', '2024-09-27', '07:45:00', 855.60),   
(5, 5, 5, 'C1-50', '2024-09-26', '14:00:00', 320.40),   
(6, 6, 2, 'C2-12', '2024-09-25', '06:30:00', 263.30),   
(7, 7, 7, 'T5-60', '2024-10-01', '08:15:00', 243.90),   
(8, 8, 4, 'G2-14', '2024-10-02', '15:30:00', 154.50),   
(9, 9, 1, 'S5-08', '2024-10-03', '13:45:00', 2367.50),  
(10, 10, 3, 'S3-24', '2024-10-04', '16:00:00', 621.40),  
(11, 11, 5, 'S2-40', '2024-10-05', '11:15:00', 1967.75), 
(12, 12, 6, 'G1-35', '2024-10-06', '17:45:00', 1110.85), 
(13, 13, 4, 'S4-10', '2024-10-07', '19:00:00', 2324.90), 
(14, 14, 7, 'G3-22', '2024-10-08', '21:15:00', 1910.35), 
(15, 15, 2, 'C4-55', '2024-10-09', '05:00:00', 154.80);  
select * from Ticket;

INSERT INTO Payment (ticket_id, bank_name, card_no, pin, payment_method) VALUES
(1, 'State Bank of India', '1234567890123456', '1234', 'Credit Card'),
(2, 'HDFC Bank', '2345678901234567', '5678', 'Debit Card'),
(3, 'ICICI Bank', '3456789012345678', '9876', 'Credit Card'),
(4, 'Axis Bank', '4567890123456789', '3456', 'Debit Card'),
(5, 'Punjab National Bank', '5678901234567890', '6789', 'Credit Card'),
(6, 'Kotak Mahindra Bank', '6789012345678901', '2345', 'Debit Card'),
(7, 'Yes Bank', '7890123456789012', '1111', 'Credit Card'),
(8, 'Canara Bank', '8901234567890123', '2222', 'Debit Card'),
(9, 'Bank of Baroda', '9012345678901234', '3333', 'Credit Card'),
(10, 'Union Bank of India', '0123456789012345', '4444', 'Debit Card'),
(11, 'IDBI Bank', '1234987654321098', '5555', 'Credit Card'),
(12, 'Bank of India', '9876543210123456', '6666', 'Debit Card'),
(13, 'Federal Bank', '8765432109876543', '7777', 'Credit Card'),
(14, 'IndusInd Bank', '7654321098765432', '8888', 'Debit Card'),
(15, 'Citi Bank', '6543210987654321', '9999', 'Credit Card');
select * from Payment;

SELECT 
    payment_method, 
    COUNT(payment_id) AS payment_count
FROM Payment
GROUP BY payment_method;

SELECT 
    bank_name, 
    COUNT(payment_id) AS total_payments
FROM Payment
GROUP BY bank_name
ORDER BY total_payments DESC;

SELECT * FROM Ticket WHERE date = '2024-09-30';

SELECT * FROM Ticket WHERE seat_no BETWEEN 'S1-01' AND 'S1-50';

SELECT * 
FROM User
WHERE user_id NOT IN (SELECT user_id FROM Ticket);

SELECT * 
FROM User
WHERE user_id IN (SELECT user_id FROM Ticket WHERE ticket_id IN (SELECT ticket_id FROM Payment WHERE payment_method = 'Credit Card'));

SELECT * 
FROM User
WHERE user_id IN (SELECT user_id FROM Ticket WHERE train_id IN (SELECT train_id FROM Train WHERE place = 'Delhi'));

SELECT * FROM User 
WHERE LENGTH(name) <= ALL (SELECT LENGTH(name) FROM User);

SELECT * FROM User 
WHERE user_id > ANY (SELECT user_id FROM User WHERE name = 'Amit Sharma');

SELECT User.user_id, User.name, Ticket.ticket_id, Payment.payment_id, Payment.payment_method
FROM User
INNER JOIN Ticket ON User.user_id = Ticket.user_id
INNER JOIN Payment ON Ticket.ticket_id = Payment.ticket_id;

SELECT Train.train_id, Train.name, Ticket.ticket_id, Ticket.user_id, Ticket.seat_no, Ticket.date
FROM Train
LEFT JOIN Ticket ON Train.train_id = Ticket.train_id;

SELECT User.user_id, User.name, Train.train_id, Train.name
FROM User
CROSS JOIN Train;

SELECT train_id, name, NULL AS ticket_id, NULL AS user_id, NULL AS seat_no, NULL AS booking_date
FROM Train
UNION
SELECT Ticket.train_id, Train.name, Ticket.ticket_id, Ticket.user_id, Ticket.seat_no, Ticket.date AS booking_date
FROM Ticket
INNER JOIN Train ON Ticket.train_id = Train.train_id;

CREATE VIEW UserTickets AS
SELECT 
    User.name AS user_name,
    User.email_id AS email,
    Ticket.date AS travel_date,
    Ticket.class_id AS travel_class,
    Ticket.seat_no AS seat_number
FROM 
    User, Ticket
WHERE 
    User.user_id = Ticket.user_id;
select * from UserTickets;

CREATE VIEW TrainSchedule AS
SELECT 
    name AS train_name,
    place AS origin_station,
    destination,
    date AS departure_date,
    arrival_time
FROM 
    Train;
select * from TrainSchedule;

CREATE VIEW View_User_Details AS
SELECT name, email_id, phone_no 
FROM User;
select * from View_User_Details;

CREATE VIEW View_Ticket_Details AS
SELECT user_id, train_id, class_id, seat_no, date 
FROM Ticket;
select * from View_Ticket_Details;