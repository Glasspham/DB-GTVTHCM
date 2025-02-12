CREATE DATABASE RIDB;
USE RIDB;

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

CREATE TABLE Invoice (
    InvoiceID CHAR(10) PRIMARY KEY,
    InvoiceDate DATE NOT NULL,
    Description TEXT
);

CREATE TABLE InvoiceDetail (
    InvoiceID CHAR(10),
    ProductID CHAR(10),
    Quantity INT NOT NULL CHECK (Quantity > 0),
    PRIMARY KEY (InvoiceID, ProductID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- INSERT DATA
INSERT INTO Category (CategoryID, CategoryName) VALUES
('C01', 'Electronics'),
('C02', 'Furniture'),
('C03', 'Clothing'),
('C04', 'Toys'),
('C05', 'Food');

INSERT INTO Product (ProductID, ProductName, UnitPrice, CategoryID) VALUES
('P01', 'Laptop', 1000, 'C01'),
('P02', 'Smartphone', 700, 'C01'),
('P03', 'Table', 150, 'C02'),
('P04', 'Chair', 80, 'C02'),
('P05', 'T-Shirt', 20, 'C03'),
('P06', 'Jeans', 40, 'C03'),
('P07', 'Doll', 30, 'C04'),
('P08', 'Board Game', 25, 'C04'),
('P09', 'Chocolate', 5, 'C05'),
('P10', 'Bread', 3, 'C05');

INSERT INTO Invoice (InvoiceID, InvoiceDate, Description) VALUES
('I01', '2021-01-05', 'First order'),
('I02', '2021-02-10', 'Second order'),
('I03', '2021-03-15', 'Third order'),
('I04', '2021-04-20', 'Fourth order'),
('I05', '2021-05-25', 'Fifth order'),
('I06', '2021-06-30', 'Sixth order'),
('I07', '2021-07-05', 'Seventh order'),
('I08', '2021-08-10', 'Eighth order'),
('I09', '2021-09-15', 'Ninth order'),
('I10', '2021-10-20', 'Tenth order');

INSERT INTO InvoiceDetail (InvoiceID, ProductID, Quantity) VALUES
('I01', 'P01', 2), ('I01', 'P03', 1), ('I01', 'P05', 3),
('I02', 'P02', 1), ('I02', 'P04', 2), ('I02', 'P06', 4),
('I03', 'P07', 2), ('I03', 'P08', 1), ('I03', 'P09', 5),
('I04', 'P10', 3), ('I04', 'P01', 2), ('I04', 'P02', 1),
('I05', 'P03', 2), ('I05', 'P04', 3), ('I05', 'P05', 4),
('I06', 'P06', 2), ('I06', 'P07', 1), ('I06', 'P08', 3),
('I07', 'P09', 2), ('I07', 'P10', 4), ('I07', 'P01', 1),
('I08', 'P02', 5), ('I08', 'P03', 2), ('I08', 'P04', 3),
('I09', 'P05', 1), ('I09', 'P06', 2), ('I09', 'P07', 3),
('I10', 'P08', 4), ('I10', 'P09', 2), ('I10', 'P10', 1);