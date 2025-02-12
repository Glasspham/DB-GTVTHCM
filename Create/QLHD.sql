CREATE DATABASE QLHD;
USE QLHD;

-- CREATE TABLES
CREATE TABLE LOAIHG (
    MALH CHAR(3) PRIMARY KEY,
    TENLH VARCHAR(20) NOT NULL
);

CREATE TABLE HANG (
    MAHG CHAR(3) PRIMARY KEY,
    TENHG VARCHAR(20) NOT NULL,
    DG INT,
    MALH CHAR(3) NOT NULL
);

CREATE TABLE HOADON (
    MAHD CHAR(3) PRIMARY KEY,
    NGAYLAP DATE NOT NULL
);

CREATE TABLE CTHD (
    MAHD CHAR(3),
    MAHG CHAR(3),
    SL INT NOT NULL,
    PRIMARY KEY (MAHD, MAHG)
);

-- INSERT DATA
INSERT INTO LOAIHG (MALH, TENLH) VALUES 
('L01', 'ĐIỆN TỬ'), 
('L02', 'GIA DỤNG'), 
('L03', 'THỰC PHẨM'), 
('L04', 'NỘI THẤT'), 
('L05', 'THỜI TRANG');

INSERT INTO HANG (MAHG, TENHG, DG, MALH) VALUES 
('H01', 'TIVI', 5000, 'L01'), 
('H02', 'TỦ LẠNH', 7000, 'L01'), 
('H03', 'BẾP ĐIỆN', 2000, 'L02'), 
('H04', 'MÁY GIẶT', 4000, 'L02'), 
('H05', 'NỒI CƠM ĐIỆN', 1500, 'L02'), 
('H06', 'THỊT GÀ', 100, 'L03'), 
('H07', 'RAU XANH', 50, 'L03'), 
('H08', 'GẠO', 200, 'L03'), 
('H09', 'BÀN LÀM VIỆC', 2500, 'L04'), 
('H10', 'GHẾ XOAY', 1200, 'L04'), 
('H11', 'ÁO SƠ MI', 300, 'L05'), 
('H12', 'QUẦN JEANS', 500, 'L05'), 
('H13', 'ĐẦM VÁY', 800, 'L05'), 
('H14', 'ĐIỆN THOẠI', 8000, 'L01'),
('H15', 'LAPTOP', 15000, 'L01'),
('H16', 'LOA BLUETOOTH', 2500, 'L01'),
('H17', 'MÁY SẤY TÓC', 800, 'L02'), 
('H18', 'BÀN ỦI', 600, 'L02'), 
('H19', 'TRỨNG GÀ', 30, 'L03'), 
('H20', 'SỮA TƯƠI', 50, 'L03'), 
('H21', 'THỚT GỖ', 400, 'L04'), 
('H22', 'KỆ SÁCH', 1800, 'L04'), 
('H23', 'ĐÈN BÀN', 700, 'L04'), 
('H24', 'MŨ BẢO HIỂM', 500, 'L05'), 
('H25', 'GIÀY THỂ THAO', 1200, 'L05'), 
('H26', 'ÁO KHOÁC', 1000, 'L05'), 
('H27', 'TÚI XÁCH', 1500, 'L05'), 
('H28', 'THỊT HEO', 90, 'L03'),
('H29', 'Ổ CẮM ĐIỆN', 300, 'L02'), 
('H30', 'LÒ VI SÓNG', 2500, 'L02');

INSERT INTO HOADON (MAHD, NGAYLAP) VALUES 
('D01', '2023-06-01'), 
('D02', '2023-06-15'), 
('D03', '2023-07-01'), 
('D04', '2023-07-10'), 
('D05', '2023-08-01'), 
('D06', '2023-08-15'), 
('D07', '2023-09-01'), 
('D08', '2023-09-10'), 
('D09', '2023-10-01'), 
('D10', '2023-10-15');

INSERT INTO CTHD (MAHD, MAHG, SL) VALUES
('D01', 'H01', 2), ('D01', 'H02', 1), ('D01', 'H03', 3), ('D01', 'H04', 1), ('D01', 'H05', 2), 
('D02', 'H06', 5), ('D02', 'H07', 6), ('D02', 'H08', 3), ('D02', 'H09', 1), ('D02', 'H10', 2), 
('D03', 'H11', 5), ('D03', 'H12', 3), ('D03', 'H13', 4), ('D03', 'H14', 1), ('D03', 'H15', 2), 
('D04', 'H16', 1), ('D04', 'H17', 3), ('D04', 'H18', 2), ('D04', 'H19', 6), ('D04', 'H20', 4), 
('D05', 'H21', 1), ('D05', 'H22', 3), ('D05', 'H23', 2), ('D05', 'H24', 5), ('D05', 'H25', 2), 
('D06', 'H26', 4), ('D06', 'H27', 3), ('D06', 'H28', 1), ('D06', 'H29', 5), ('D06', 'H30', 2), 
('D07', 'H01', 2), ('D07', 'H02', 4), ('D07', 'H03', 3), ('D07', 'H04', 1), ('D07', 'H05', 2), 
('D08', 'H06', 5), ('D08', 'H07', 3), ('D08', 'H08', 6), ('D08', 'H09', 2), ('D08', 'H10', 1),
('D09', 'H01', 1), ('D09', 'H02', 2), ('D09', 'H14', 1), ('D09', 'H15', 1), ('D09', 'H16', 1);