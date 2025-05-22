
-- ------------------------------
-- Inserting data from CSV Files
-- ------------------------------

-- Inserting data into Genres table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Genre.csv'
INTO TABLE Genres
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Inserting data into Artists table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Artists.csv'
INTO TABLE Artists
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Inserting data into Albums table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Albums.csv'
INTO TABLE Albums
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Inserting data into Tracks table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Tracks.csv'
INTO TABLE Tracks
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Inserting data into Employees table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Employees.csv'
INTO TABLE Employees
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Inserting data into Customers table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Customers.csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Inserting data into Sales table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Sales.csv'
INTO TABLE Sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Inserting data into Payments table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Payments.csv'
INTO TABLE Payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

