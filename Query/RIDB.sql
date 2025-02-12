USE RIDB;

-- 5.1. FIND PRODUCTS OF THE CATEGORY ID = ”CO1”.
SELECT * 
FROM PRODUCT 
WHERE CATEGORYID = 'C01';

-- 5.2. FIND PRODUCTS (ID, NAME AND PRICE) OF THE CATEGORY ID = ”CO2”.
SELECT PRODUCTID, PRODUCTNAME, UNITPRICE 
FROM PRODUCT 
WHERE CATEGORYID = 'C02';

-- 5.3. FIND PRODUCTS (*) WITH UNIT PRICE FROM 10 TO 50.
SELECT * 
FROM PRODUCT 
WHERE UNITPRICE 
BETWEEN 10 AND 50;

-- 5.4. SHOW INVOICES, IT CREATED AT DATE = D.
SELECT * 
FROM INVOICE 
WHERE INVOICEDATE = '2021-06-30';

-- 5.5. SHOW INVOICES, IT CREATED ON YEAR = 2021.
SELECT * FROM INVOICE WHERE YEAR(INVOICEDATE) = 2021;

-- 5.6. FIND PRODUCTS (ID, NAME, UNIT PRICE AND QUANTITY), IT BELONG TO THE INVOICE AT DATE = D.
SELECT P.PRODUCTID, P.PRODUCTNAME, P.UNITPRICE, ID.QUANTITY 
FROM INVOICEDETAIL ID
JOIN PRODUCT P ON ID.PRODUCTID = P.PRODUCTID
JOIN INVOICE I ON ID.INVOICEID = I.INVOICEID
WHERE I.INVOICEDATE = '2021-06-30';

-- 5.7. TOTAL QUANTITY OF EACH INVOICE.
SELECT INVOICEID, SUM(QUANTITY) AS TOTALQUANTITY
FROM INVOICEDETAIL
GROUP BY INVOICEID;

-- 5.8. TOTAL QUANTITY OF EACH INVOICE IN DATE = D.
SELECT ID.INVOICEID, SUM(ID.QUANTITY) AS TOTALQUANTITY
FROM INVOICEDETAIL ID
JOIN INVOICE I ON ID.INVOICEID = I.INVOICEID
WHERE I.INVOICEDATE = '2021-06-30'
GROUP BY ID.INVOICEID;

-- 5.9. TOTAL COST (= QUANTITY TIMES TO UNIT PRICE) OF EACH INVOICE.
SELECT ID.INVOICEID, SUM(ID.QUANTITY * P.UNITPRICE) AS TOTALCOST
FROM INVOICEDETAIL ID
JOIN PRODUCT P ON ID.PRODUCTID = P.PRODUCTID
GROUP BY ID.INVOICEID;

-- 5.10. WITH INVOICES HAVE THE LARGEST TOTAL QUANTITY.
SELECT INVOICEID, SUM(QUANTITY) AS TOTALQUANTITY
FROM INVOICEDETAIL
GROUP BY INVOICEID
ORDER BY TOTALQUANTITY DESC
LIMIT 1;

-- 5.11. IN DATE = D, WITH INVOICES HAVE THE LARGEST TOTAL QUANTITY.
SELECT ID.INVOICEID, SUM(ID.QUANTITY) AS TOTALQUANTITY
FROM INVOICEDETAIL ID
JOIN INVOICE I ON ID.INVOICEID = I.INVOICEID
WHERE I.INVOICEDATE = '2021-06-30'
GROUP BY ID.INVOICEID
ORDER BY TOTALQUANTITY DESC
LIMIT 1;

-- 5.12. WITH INVOICES HAVE THE LARGEST TOTAL COST.
SELECT ID.INVOICEID, SUM(ID.QUANTITY * P.UNITPRICE) AS TOTALCOST
FROM INVOICEDETAIL ID
JOIN PRODUCT P ON ID.PRODUCTID = P.PRODUCTID
GROUP BY ID.INVOICEID
ORDER BY TOTALCOST DESC
LIMIT 1;

-- 5.13. IN DATE = D, WITH INVOICES HAVE THE LARGEST TOTAL COST.


-- 5.14. FIND YEARS HAVE THE LARGEST TOTAL COST.
SELECT YEAR(I.INVOICEDATE) AS YEAR, SUM(ID.QUANTITY * P.UNITPRICE) AS TOTALCOST
FROM INVOICEDETAIL ID
JOIN PRODUCT P ON ID.PRODUCTID = P.PRODUCTID
JOIN INVOICE I ON ID.INVOICEID = I.INVOICEID
GROUP BY YEAR
ORDER BY TOTALCOST DESC
LIMIT 1;