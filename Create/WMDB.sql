CREATE DATABASE WMDB;
USE WMDB;

-- CREATE TABLES
CREATE TABLE Category (
    CategoryID CHAR(10) PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);

CREATE TABLE Product (
    ProductID CHAR(10) PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    CategoryID CHAR(10),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Warehouse (
    WarehouseID CHAR(10) PRIMARY KEY,
    WarehouseAddress VARCHAR(255) NOT NULL,
    CategoryID CHAR(10),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Instock (
    WarehouseID CHAR(10),
    ProductID CHAR(10),
    Quantity INT NOT NULL CHECK (Quantity >= 0),
    PRIMARY KEY (WarehouseID, ProductID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- INSERT DATA
INSERT INTO Category VALUES
('C01', 'Food'),
('C02', 'Beverage'),
('C03', 'Electronics');

INSERT INTO Product VALUES
('P01', 'Apple', 1.50, 'C01'),
('P02', 'Milk', 2.00, 'C02'),
('P03', 'Laptop', 800.00, 'C03'),
('P04', 'Bread', 1.00, 'C01'),
('P05', 'Juice', 3.00, 'C02');

INSERT INTO Warehouse VALUES
('W01', 'New York', 'C01'),
('W02', 'Los Angeles', 'C02'),
('W03', 'Chicago', 'C03');

INSERT INTO Instock VALUES
('W01', 'P01', 100),
('W01', 'P04', 50),
('W02', 'P02', 200),
('W02', 'P05', 150),
('W03', 'P03', 30);