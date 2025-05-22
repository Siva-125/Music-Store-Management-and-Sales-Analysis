-- -----------------------------
-- Music Store Management Sytem
-- -----------------------------

-- Creating Database:
CREATE DATABASE MusicStore;
USE MusicStore;

-- Creating required Tables for Music Store:
-- 1. Genres Table:
CREATE TABLE IF NOT EXISTS Genres(
	genre_id INT PRIMARY KEY,
    name VARCHAR(250) NOT NULL
);

-- 2. Artists Table:
CREATE TABLE IF NOT EXISTS Artists(
	artist_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);
    
-- 3. Albums Table:
CREATE TABLE IF NOT EXISTS Albums(
	album_id INT PRIMARY KEY,
    artist_id INT,
    title VARCHAR(250) NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

-- 4. Tracks Table:
CREATE TABLE IF NOT EXISTS Tracks(
	track_id INT PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    album_id INT,
    genre_id INT,
    duration TIME,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);
    
-- 5. Customers Table:
CREATE TABLE IF NOT EXISTS Customers(
	customer_id INT PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- 6. Sales Table:
CREATE TABLE IF NOT EXISTS Sales(
	sale_id INT PRIMARY KEY,
    customer_id INT,
    track_id INT,
    genre_id INT,
    sold_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

-- 7. Employees Table:
CREATE TABLE IF NOT EXISTS Employees(
	employee_id INT PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    role VARCHAR(250)
);

-- 8. Payments Table:
CREATE TABLE IF NOT EXISTS Payments(
	payment_id INT PRIMARY KEY,
    sale_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (sale_id) REFERENCES Sales(sale_id)
);
