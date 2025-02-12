CREATE DATABASE QLKH;
USE QLKH;

-- CREATE TABLES
CREATE TABLE LOAIHG (
    MALH CHAR(3) PRIMARY KEY,
    TENLH VARCHAR(50) NOT NULL
);

CREATE TABLE HANG (
    MAHG CHAR(3) PRIMARY KEY,
    TENHG VARCHAR(50) NOT NULL,
    DG DECIMAL(10, 2) NOT NULL,
    MALH CHAR(3)
);

CREATE TABLE KH (
    MAKH CHAR(3) PRIMARY KEY,
    DCKH VARCHAR(100) NOT NULL,
    MALH CHAR(3)
);

CREATE TABLE TONKHO (
    MAKH CHAR(3),
    MAHG CHAR(3),
    SL INT NOT NULL,
    PRIMARY KEY (MAKH, MAHG)
);

-- INSERT DATA
INSERT INTO LOAIHG (MALH, TENLH) VALUES
('L01', 'Nước giải khát'),
('L02', 'Bánh kẹo'),
('L03', 'Nông sản'),
('L04', 'Gia vị'),
('L05', 'Đồ hộp');

INSERT INTO HANG (MAHG, TENHG, DG, MALH) VALUES
('H01', 'Coca Cola', 150, 'L01'),
('H02', 'Pepsi', 140, 'L01'),
('H03', 'Bánh quy', 200, 'L02'),
('H04', 'Snack', 120, 'L02'),
('H05', 'Gạo', 500, 'L03'),
('H06', 'Muối', 50, 'L04'),
('H07', 'Cá hộp', 300, 'L05');

INSERT INTO KH (MAKH, DCKH, MALH) VALUES
('K01', 'Hà Nội', 'L01'),
('K02', 'TP HCM', 'L02'),
('K03', 'Đà Nẵng', 'L03'),
('K04', 'Hải Phòng', 'L04'),
('K05', 'Cần Thơ', 'L05'),
('K06', 'Huế', 'L01'),
('K07', 'Vũng Tàu', 'L02');

INSERT INTO TONKHO (MAKH, MAHG, SL) VALUES
('K01', 'H01', 500),
('K01', 'H02', 600),
('K02', 'H03', 700),
('K02', 'H04', 800),
('K03', 'H05', 400),
('K04', 'H06', 300),
('K05', 'H07', 200),
('K06', 'H01', 450),
('K07', 'H03', 650);