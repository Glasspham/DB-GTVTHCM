CREATE DATABASE OMDB;
USE OMDB;

-- CREATE TABLES
CREATE TABLE Category (
    CategoryID VARCHAR(10) PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Product (
    ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    CategoryID VARCHAR(10),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Customer (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    CustomerAddress VARCHAR(255) NOT NULL
);

CREATE TABLE `Order` (
    OrderID VARCHAR(10) PRIMARY KEY,
    OrderDate DATE NOT NULL,
    RequiredDate DATE NOT NULL,
    CustomerID VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE OrderDetail (
    OrderID VARCHAR(10),
    ProductID VARCHAR(10),
    OrderQuantity INT NOT NULL,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE Delivery (
    DeliveryID VARCHAR(10) PRIMARY KEY,
    DeliveryDate DATE NOT NULL,
    OrderID VARCHAR(10),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);

CREATE TABLE DeliveryDetail (
    DeliveryID VARCHAR(10),
    ProductID VARCHAR(10),
    DeliveryQuantity INT NOT NULL,
    PRIMARY KEY (DeliveryID, ProductID),
    FOREIGN KEY (DeliveryID) REFERENCES Delivery(DeliveryID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- INSERT DATA
INSERT INTO Category VALUES 
('C01', 'Electronics'), 
('C02', 'Furniture'), 
('C03', 'Clothing');

INSERT INTO Product VALUES 
('P01', 'Laptop', 1000, 'C01'), 
('P02', 'Table', 200, 'C02'), 
('P03', 'Shirt', 30, 'C03');

INSERT INTO Customer VALUES 
('CU01', 'John Doe', '123 Main St'), 
('CU02', 'Jane Smith', '456 Oak St');

INSERT INTO `Order` VALUES 
('O01', '2021-05-01', '2021-05-10', 'CU01'), 
('O02', '2021-06-15', '2021-06-20', 'CU02');

INSERT INTO OrderDetail VALUES 
('O01', 'P01', 2), 
('O01', 'P02', 1), 
('O02', 'P03', 3);

INSERT INTO Delivery VALUES 
('D01', '2021-05-05', 'O01'), 
('D02', '2021-06-18', 'O02');

INSERT INTO DeliveryDetail VALUES 
('D01', 'P01', 2), 
('D01', 'P02', 1), 
('D02', 'P03', 3);