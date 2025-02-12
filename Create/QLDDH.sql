CREATE DATABASE QLDDH;
USE QLDDH;

-- CREATE TABLES
CREATE TABLE LOAIHG (
    MALH CHAR(3) PRIMARY KEY,
    TENLH VARCHAR(20) not null
);

CREATE TABLE HANG (
    MAHG CHAR(3) PRIMARY KEY,
    TENHG VARCHAR(20) not null,
    MALH CHAR(3),
    DG float not null,
    CHECK(DG > 0),
    FOREIGN KEY (MALH) REFERENCES LOAIHG(MALH)
);

CREATE TABLE KHACH (
    MAKH CHAR(3) PRIMARY KEY,
    TENKH VARCHAR(50) NOT NULL,
    DCKH VARCHAR(100) NOT NULL,
    DTKH VARCHAR(15) NOT NULL
);

CREATE TABLE DDH (
    MADDH CHAR(3) PRIMARY KEY,
    NGDH DATE NOT NULL,
    NGHL DATE NOT NULL,
    MAKH CHAR(3),
    FOREIGN KEY (MAKH) REFERENCES KHACH(MAKH)
);

CREATE TABLE CTDDH (
    MADDH CHAR(3),
    MAHG CHAR(3),
    SLD INT NOT NULL,
    CHECK(SLD > 0),
    PRIMARY KEY (MADDH, MAHG),
    FOREIGN KEY (MADDH) REFERENCES DDH(MADDH),
    FOREIGN KEY (MAHG) REFERENCES HANG(MAHG)
);

CREATE TABLE DOTGH (
    MADGH CHAR(3) PRIMARY KEY,
    NGGH DATE NOT NULL,
    MADDH CHAR(3),
    FOREIGN KEY (MADDH) REFERENCES DDH(MADDH)
);

CREATE TABLE CTDGH (
    MADGH CHAR(3),
    MAHG CHAR(3),
    SLG INT NOT NULL,
    CHECK(SLG > 0),
    PRIMARY KEY (MADGH, MAHG),
    FOREIGN KEY (MADGH) REFERENCES DOTGH(MADGH),
    FOREIGN KEY (MAHG) REFERENCES HANG(MAHG)
);

-- INSERT DATA
INSERT INTO LOAIHG (MALH, TENLH) VALUES
('L01', 'Đồ điện tử'),
('L02', 'Đồ gia dụng'),
('L03', 'Thực phẩm'),
('L04', 'Đồ uống'),
('L05', 'Văn phòng phẩm');

INSERT INTO HANG (MAHG, TENHG, MALH, DG) VALUES
('H01', 'Tivi', 'L01', 5000.0),
('H02', 'Máy lạnh', 'L01', 8000.0),
('H03', 'Nồi cơm điện', 'L02', 1500.0),
('H04', 'Bánh mì', 'L03', 20.0),
('H05', 'Coca Cola', 'L04', 10.0),
('H06', 'Bút bi', 'L05', 5.0),
('H07', 'Laptop', 'L01', 15000.0),
('H08', 'Máy giặt', 'L02', 9000.0),
('H09', 'Sách giáo khoa', 'L05', 100.0),
('H10', 'Sữa tươi', 'L03', 15.0);

INSERT INTO KHACH (MAKH, TENKH, DCKH, DTKH) VALUES
('K01', 'Nguyễn Văn A', '123 Lê Lợi, TP.HCM', '0901234567'),
('K02', 'Trần Thị B', '456 Nguyễn Huệ, Hà Nội', '0912345678'),
('K03', 'Lê Văn C', '789 Lý Thường Kiệt, Đà Nẵng', '0933456789'),
('K04', 'Phạm Minh D', '111 Hoàng Diệu, Cần Thơ', '0944567890'),
('K05', 'Ngô Thị E', '222 Hai Bà Trưng, Huế', '0955678901'),
('K06', 'Đinh Công F', '333 Trần Hưng Đạo, Nha Trang', '0966789012'),
('K07', 'Bùi Thị G', '444 Quang Trung, Hải Phòng', '0977890123');

INSERT INTO DDH (MADDH, NGDH, NGHL, MAKH) VALUES
('D01', '2023-01-05', '2023-01-10', 'K01'),
('D02', '2023-02-15', '2023-02-20', 'K02'),
('D03', '2023-03-25', '2023-03-30', 'K03'),
('D04', '2023-04-10', '2023-04-15', 'K04'),
('D05', '2023-05-01', '2023-05-05', 'K05'),
('D06', '2023-06-12', '2023-06-17', 'K06'),
('D07', '2023-07-22', '2023-07-27', 'K07'),
('D08', '2023-08-05', '2023-08-10', 'K01'),
('D09', '2023-09-15', '2023-09-20', 'K02'),
('D10', '2023-10-10', '2023-10-15', 'K03');

INSERT INTO CTDDH (MADDH, MAHG, SLD) VALUES
('D01', 'H01', 2), ('D01', 'H03', 1),
('D02', 'H02', 1), ('D02', 'H04', 10), ('D03', 'H05', 20), ('D03', 'H06', 50),
('D04', 'H07', 1),
('D05', 'H08', 1), ('D05', 'H01', 1), ('D05', 'H02', 1), ('D05', 'H03', 1), ('D05', 'H04', 1),
('D05', 'H05', 1), ('D05', 'H06', 1), ('D05', 'H07', 1), ('D05', 'H09', 1), ('D05', 'H10', 1),
('D06', 'H09', 5),
('D07', 'H10', 10),
('D08', 'H01', 1), ('D08', 'H03', 2), ('D08', 'H09', 3),
('D09', 'H02', 1),
('D10', 'H04', 5);

INSERT INTO DOTGH (MADGH, NGGH, MADDH) VALUES
('G01', '2023-01-15', 'D01'),
('G02', '2023-02-25', 'D02'),
('G03', '2023-03-28', 'D03'),
('G04', '2023-04-20', 'D04'),
('G05', '2023-05-10', 'D05'),
('G06', '2023-06-22', 'D06'),
('G07', '2023-07-30', 'D07'),
('G08', '2023-08-15', 'D08'),
('G09', '2023-09-25', 'D09'),
('G10', '2023-10-20', 'D10');

INSERT INTO CTDGH (MADGH, MAHG, SLG) VALUES
('G01', 'H01', 2),
('G01', 'H03', 1),
('G02', 'H02', 1),
('G02', 'H04', 10),
('G03', 'H05', 15),
('G03', 'H06', 40),
('G04', 'H07', 1),
('G05', 'H08', 1),
('G06', 'H09', 5),
('G07', 'H10', 10),
('G08', 'H01', 1),
('G08', 'H03', 1),
('G09', 'H02', 1),
('G10', 'H04', 5);