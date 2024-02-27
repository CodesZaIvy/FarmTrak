-- Create a new database
CREATE DATABASE IF NOT EXISTS Farms;
USE Farms_Details;

-- Create a table for names
CREATE TABLE IF NOT EXISTS Names (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Create a table for land information
CREATE TABLE IF NOT EXISTS LandInfo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    farmer_id INT,
    land_size DECIMAL(10, 2),
    crops_farmed VARCHAR(100),
    FOREIGN KEY (farmer_id) REFERENCES Names(id)
);

-- Insert sample names
INSERT INTO Names (first_name, last_name) VALUES
('Ade', 'Ogunlade'),
('Fatoumata', 'Diallo'),
('Kwame', 'Owusu'),
('Chinwe', 'Nwokocha'),
('Issa', 'Sow');

-- Insert sample land information
INSERT INTO LandInfo (farmer_id, land_size, crops_farmed) VALUES
(1, 50.75, 'Maize'),
(2, 30.25, 'Rice'),
(3, 80.50, 'Cassava'),
(4, 45.00, 'Yams'),
(5, 60.80, 'Tomatoes');