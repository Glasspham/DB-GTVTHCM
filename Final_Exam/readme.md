# Question.1: 
Database 01 - Student Management Database:
Query : The list of subjects that student ID = 'T01' has not yet taken.
Which SQL below ?
a.
```sh
SELECT * 
FROM Subject
WHERE SubjectID NOT IN (
    SELECT SubjectID
    FROM StudentGrade
    WHERE StudentID = 'T01' 
);
```
b.
```sh
SELECT *
FROM Subject
WHERE SubjectID NOT IN (
    SELECT SubjectID
    FROM StudentGrade
    WHERE StudentID = 'T01' 
    AND Grades < 4
);
```
c.
```sh
SELECT SubjectID
FROM StudentGrades
WHERE Grades IS NULL;
```
d.
```sh
SELECT SubjectID
WHERE SubjectID NOT IN (
    SELECT SubjectID
    From Subject 
);
```

# Question.2: 
Which of the following commands deletes the Product relation in the database
a. Delete Table `Product`
b. Remove Table `Product`
c. Update Table `Product`
d. Drop Table `Product`

# Question.3: 
Database 01 - Student Management Database:
Query : List the `GPA` (Grade Point Average) of each Subject.
Which SQL below ?
a.
```sh
SELECT StudentID, Avg(Grades)
FROM StudentGrades
GROUP BY SubjectID;
```
b.
```sh
SELECT Avg(Grades)
FROM StudentGrades;
```
c.
```sh
SELECT SubjectID, Avg(Grades)
FROM StudentGrades
GROUP BY SubjectID;
```
d.
```sh
SELECT StudentID, Avg(Grades)
FROM StudentGrades
GROUP BY StudentID;
```

# Question.4: 
Database 02 - Retail Invoice Database.
Query : Calculate the `Cost` of each invoice.
Which SQL below ?
a.
```sh
SELECT A.ProductID, Sum( Quantiry * UnitPrice ) AS Cost
FROM Invoice A, InvoiceDetail B, Product C
WHERE A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID
GROUP BY A.ProductID;
```
b.
```sh
SELECT InvoiceID, Sum( Quantity * UnitPrice ) AS Cost
FROM InvoiceDetail A, Product B
WHERE A.ProductID = B.ProductID
GROUP BY InvoiceID;
```
c. 
```sh
SELECT A.InvoiceID, Sum( Quantiry * UnitPrice ) AS Cost
FROM InvoiceDetail A, Product B
WHERE A.ProductID = B.ProductID
GROUP BY A.ProductID;
```
d.
```sh
SELECT B.ProductID, Sum( Quantity * UnitPrice ) AS Cost
FROM Invoice A, InvoiceDetail B, Product C
WHERE A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID
GROUP BY B.ProductID;
```

# Question.5: 
Query : To remove duplicate result values on SELECT clause we use keyword.
Which SQL below ?
a. UNIQUE
b. ONLY
c. DISTINCT
d. SINGLE

# Question.6: 
Database 01 - Student Management Database.
Query : Classes with number of students > 50.
Which SQL below ?
a.
```sh
SELECT *
FROM Class
WHERE Count(ClassID) > 50;
```
b.
```sh
SELECT StudentID, Count(ClassID)
FROM Student
GROUP BY StudentID;
```
c.
```sh
SELECT ClassID, Count(*)
FROM Student
GROUP BY ClassID
HAVING Count(*) > 50;
```
d.
```sh
SELECT ClassID, Count(*)
FROM Student
GROUP BY ClassID;
```

# Question.7: 
Which SQL is used for insert data
a. INSERT INTO
b. ADD
c. MAKE
d. CREATE

# Question.8: 
Which of the following functions are built-in functions in SQL.
a. COUNT, SUM, AVG, MAX, MIN
b. SUM, AVG, MULT, DIV, MIN
c. SUM, AVG, MIN, MAX, NAME
d. SUM, AVG, MIN, MAX, MULT

# Question.9: 
Which of the following commands create an index.
a. Create Index ID
b. Remove Index ID
c. Add Index ID
d. Change Index ID

# Question.10: 
Database 03 - Ware House Management Database.
SQL:
```sh
SELECT ProductID, Sum( Quantity )
FROM Instock
GROUP BY ProductID
```
Which result below ?
a. Sum of Quantity for all Product
b. Sum of Quantity for each WareHouse
c. Sum of Quantity for each Product
d. Sum of Quantity for WareHouse

# Question.11: 
Database 03 - Ware House Management Database.
Query : List of Warehouses allowed to store Category with ID = 'C01'.
Which SQL below ?
a.
```sh
SELECT *
FROM Category
WHERE CategoryID = 'C01';
```
b.
```sh
SELECT *
FROM WareHouse
WHERE CategoryID = 'C01';
```
c.
```sh
SELECT *
FROM Product
WHERE CategoryID = 'C01';
```
d.
```sh
SELECT *
FROM Instock
WHERE CategoryID = 'C01';
```

# Question.12: 
Database 01 - Student Management Database:
Query : Subjects with Credit > 2.
Which SQL below ?
a.
```sh
SELECT *
FROM Subject
WHERE Credit > 2;
```
b.
```sh
SELECT SubjectName
FROM Subject
WHERE Credit > 2;
```
c.
```sh
SELECT *
FROM Subject;
```
d.
```sh
SELECT Credit
FROM Subject
WHERE Credit > 2;
```

# Question.13: 
Database 03 - Ware House Management Database.
SQL:
```sh
SELECT ProductID
FROM Instock
WHERE WareHouseID = 'W01';
```
Which result below ?
a. List of Product are currently contained in the Warehouse ID = 'W01'.
b. List of Product are currently contained in the Warehouse.
c. List of Category are contained in the Warehouse ID = 'W01'.
d. List of Product are can be store in the Warehouse ID = 'W01'.

# Question.14: 
Database 01 - Student Management Database:
Query : List the `GPA` (Grade Point Average) of each student.
Which SQL below ?
a.
```sh
SELECT SubjectID, Avg(Grades)
FROM StudentGrades
GROUP BY SubjectID;
```
b.
```sh
SELECT StudentID, Avg(Grades)
FROM StudentGrades
GROUP BY StudentID;
```
c.
```sh
SELECT Avg(Grades)
FROM StudentGrades;
```

# Question.15: 
Database 02 - Retail Invoice Database.
Query : Total value of invoices in each quarter of 2023
Which SQL below ?
a.
```sh
SELECT Sum(Quantity * UnitPrice)
FROM Invoice A, InvoiceDetail B, Product C
WHERE Date_Part('Year', InvoiceDate) = '2023' 
AND A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID
GROUP BY Date_part('Quarter', InvoiceDate);
```
b.
```sh
SELECT Date_part('Quarter', InvoiceDate), Sum(Quantity * UnitPrice)
FROM Invoice A, InvoiceDetail B, Product C
WHERE Date_Part('Year', InvoiceDate) = '2023' 
AND A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID
GROUP BY Date_part('Quarter', InvoiceDate);
```
c.
```sh
SELECT A.InvoiceID, Sum(Quantity * UnitPrice)
FROM Invoice A, InvoiceDetail B, Product C
WHERE Date_Part('Year', InvoiceDate) = '2023' 
AND A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID
GROUP BY Date_part('Quarter', InvoiceDate);
```
d.
```sh
SELECT Date_part('Quarter', InvoiceDate), Sum(Quantity * UnitPrice)
FROM Invoice A, InvoiceDetail B, Product C
WHERE A.InvoiceID = B.InvoiceID 
AND B.ProductID = C.ProductID
GROUP BY Date_part('Quarter', InvoiceDate);
```

# Question.16: 
Database 02 - Retail Invoice Database.
Query : Total value of invoices in each month of 2023
Which SQL below ?
a.
```sh
SELECT Date_part('Month', InvoiceDate), Sum(Quantity * UnitPrice)
FROM Invoice A, InvoiceDetail B, Product C
WHERE Date_Part('Year', InvoiceDate) = '2023'
AND A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID
GROUP BY Date_part('Month', InvoiceDate);
```
b.
```sh
SELECT Date_part('Month', InvoiceDate), Sum(Quantity * UnitPrice)
FROM Invoice A, InvoiceDetail B, Product C
WHERE Date_Part('Year', InvoiceDate) = '2023'
AND A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID
GROUP BY A.InvoiceID;
```
c.
```sh
SELECT Date_part('Month', InvoiceDate), Sum(Quantity * UnitPrice)
FROM Invoice A, InvoiceDetail B, Product C
WHERE A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID
GROUP BY Date_part('Month', InvoiceDate);
```
d.
```sh
SELECT Date_part('Month', InvoiceDate), Sum(Quantity * UnitPrice)
FROM Invoice A, InvoiceDetail B, Product C
WHERE Date_Part('Year', InvoiceDate) = '2023'
AND A.InvoiceID = B.InvoiceID
AND B.ProductID = C.ProductID;
```

# Question.17: 
The result of a SELECT sentence is:
a. Table
b. Report
c. File
d. Form

# Question.18: 
Database 01 - Student Management Database.
Query : Students had the largest GPA (Grade Point Average) .
Which SQL below ?
a.
```sh
SELECT StudentID, Avg( Grades ) AS AvgG
FROM StudentGrades
GROUP BY StudentID
HAVING AvgG = (
    SELECT Max( Avg( Grades ) )
    FROM StudentGrades
    GROUP BY StudentID 
);
```
b.
```sh
SELECT StudentID, Avg( Grades ) AS AvgG
FROM StudentGrades
GROUP BY StudentiD
HAVING AvgG = ( 
    SELECT Max( AvgG )
    FROM ( 
        SELECT Avg( Grades ), AS AvgG
        FROM StudentGrades
        GROUP BY SubjectID 
    )
);
```
c.
```sh
SELECT StudentID, Avg( Grades )
FROM StudentGrades
GROUP BY StudentID
HAVING Avg(Grades) >= ALL ( 
    SELECT Avg( Grades
    FROM StudentGrades
    GROUP BY StudentID
);
```
d. 
```sh
SELECT StudentID, Avg( Grades ) AS AvgG
FROM StudentGrades
GROUP BY StudentID
WHERE AvgG = Max ( 
    SELECT Avg( Grades )
    FROM StudentGrades
    GROUP BY StudentID 
);
```

# Question.19: 
Database 01 - Student Management Database:
Query : List the `weighted average` Grades of each student.
Which SQL below ?
a.
```sh
SELECT SubjectID, Sum(Grades * Credit) / Sum(Credit) 
FROM StudentGrades A, Subject B 
WHERE A.SubjectID = B.SubjectID 
GROUP BY SubjectID;
```
b.
```sh
SELECT StudentID, SubjectID, Sum(Grades * Credit) / Sum(Credit) 
FROM StudentGrades A, Subject B 
WHERE A.SubjectID = A.SubjectID 
GROUP BY StudentID, SubjectID;
```
c.
```sh
SELECT StudentID, Sum(Grades * Units) / Sum(Units) 
FROM StudentGrades A, Subject B 
WHERE A.SubjectID = B.SubjectID 
GROUP BY StudentID;
```
d.
```sh
SELECT StudentID, Avg(Grades) 
FROM StudentGrades 
GROUP BY StudentID;
```

# Question.20: 
Database 02 - Retail Invoice Database.
Query : Calculate the Cost of each invoice on year = 2023.
Which SQL below ?
a.
```sh
SELECT A.Invoice, Sum(Quantity * UnitPrice) AS Cost 
FROM Invoice A, InvoiceDetail B, Product C 
WHERE A.InvoiceID = B.InvoiceID 
AND B.ProductID = C.ProductID 
AND Date_Part('Year', InvoiceDate) = '2023' 
GROUP BY A.InvoiceID
```
b.
```sh
SELECT A.Invoice, Sum(Quantity * UnitPrice) AS Cost 
FROM Invoice A, InvoiceDetail B, Product C 
WHERE A.InvoiceID = B.InvoiceID 
AND Date_Part('Year', InvoiceDate) = '2023' 
GROUP BY A.InvoiceID;
```
c.
```sh
SELECT Invoice, Sum(Quantity * UnitPrice) AS Cost 
FROM InvoiceDetail A, Product B 
WHERE A.ProductID = B.ProductID 
GROUP BY InvoiceID
```
d.
```sh
d. SELECT A.Invoice, Sum(Quantity * UnitPrice) AS Cost 
FROM Invoice A, InvoiceDetail B, Product C 
WHERE B.ProductID = C.ProductID 
AND Date_Part('Year', InvoiceDate) '2023' 
GROUP BY A.InvoiceID
```

# Question.21: 
Where clause in SQL is used for
a. Filter data rows
b. Do not use for data filtering
c. Filter both data columns data rows
d. Filter data columns

# Question.22: 
Database 01 - Student Management Database.
Query: The list of Students are belong to Class year='2020-2024'
Which SQL below ?
a.
```sh
SELECT A.* 
FROM Student A, Class B 
WHERE ClassYear = '2020-2024';
```
b.
```sh
SELECT B.* 
FROM Student A, Class B 
WHERE A.StudentID = B.StudentID 
AND ClassYear = '2020-2024';
```
c.
```sh
SELECT A.* 
FROM Student A, Class B 
WHERE A.StudentID = B.StudentID 
AND ClassYear = '2020-2024';
```
d.
```sh
SELECT * 
FROM Class 
WHERE ClassYear = '2020-2024';
```

# Question.23: 
Database 01 - Student Management Database.
Query : Classes had the largest students.
Which SQL below ?
a.
```sh
SELECT ClasssID, Count(*) 
FROM Student 
GROUP BY ClassID 
HAVING Count(*) > (
    SELECT Count(*) 
    FROM Student 
    GROUP BY ClassID
);
```
b.
```sh
SELECT ClassID, Count(*) 
FROM Class 
GROUP BY ClassID 
HAVING Count(*) >= (
    SELECT Count(*) 
    FROM Class 
    GROUP BY ClassID
);
```
c.
```sh
SELECT ClassID, Count(*) AS NumSts 
FROM Student 
GROUP BY ClassID 
HAVING Count(*) >= All (
    SELECT Count(*) 
    FROM Student 
    GROUP BY ClassID
);
```

# Question.24: 
Which arrangement is correct for the following three statements:
a. FROM, WHERE, SELECT
b. WHERE, FROM, SELECT
c. SELECT, WHERE, FROM
d. SELECT, FROM, WHERE

# Question.25: 
Which of the following statements is used to sort data:
a. ORDER BY
b. GROUP BY
c. SORT BY
d. ALIGN BY

# Question.26: 
Database 02 - Retail Invoice Database
Query: Products are not sold on D date.
Which SQL below?
a.
```sh
SELECT * 
FROM Product 
WHERE ProductID In (
    SELECT InvoiceID 
    FROM Invoice A, InvoiceDetail B 
    WHERE InvoiceDate = D 
    AND A.InvoiceID = B.InvoiceID
);
```
b.
```sh
SELECT * 
FROM Product X 
WHERE Not Exists (
    SELECT ProductID 
    FROM Invoice A, InvoiceDetail B 
    WHERE InvoiceDate = D 
    AND A.InvoiceID = B.InvoiceID 
    AND X.ProductID = B.ProductID
);
```
c.
```sh
SELECT * 
FROM Product X 
WHERE EXISTS (
    SELECT ProductID 
    FROM Invoice A, InvoiceDetail B 
    WHERE InvoiceDate = D 
    AND A.InvoiceID = B.InvoiceID 
    AND X.ProductID = B.ProductID
);
```
d.
```sh
SELECT * 
FROM Product 
WHERE ProductID Not In (
    SELECT InvoiceID 
    FROM Invoice A, InvoiceDetail B 
    WHERE InvoiceDate = D 
    AND A.InvoiceID = B.InvoiceID
);
```

# Question.27: 
Which SQL is used for delete data of the Product relation
a. UPDATE FROM `Product` ...
b. DELETE FROM `Product` ...
c. DROP FROM `Product` ...
d. REMOVE FROM `Product` ...

# Question.28: 
Database 03 - Ware House Management Database.
SQL:
```sh
SELECT Sum(Quantity)
FROM Instock
GROUP BY WareHouseID;
```
Which result below ?
a. Sum of `Quantity` for each `Product` and `Category`
b. Sum of `Quantity` for each `Category`
c. Sum of `Quantity` for each `Warehouse`
d. Sum of `Quantity` for each `Product`

# Question.29: 
Database 03 - Ware House Management Database.
Query : List of Products belong to Category with ID = 'C01'.
Which SQL below ?
a.
```sh
SELECT * 
FROM Instock 
WHERE ProductID = 'C01'
```
b.
```sh
SELECT * 
FROM Product 
WHERE CategoryID = 'C01'
```
c.
```sh
SELECT * 
FROM Product 
WHERE ProductID = 'C01'
```
d.
```sh
SELECT * 
FROM WareHouse 
WHERE CategoryID = 'C01'
```

# Question.30: 
Database 01 - Student Management Database.
Query: The list of Students are belong to Class ID='C01'.
Which SQL below ?
a.
```sh
SELECT * 
FROM Student
```
b.
```sh
SELECT * 
FROM Student A, Class B 
WHERE ClassID = 'C01'
```
c.
```sh
SELECT * 
FROM Student 
WHERE ClassID = 'C01'
```
d.
```sh
SELECT B.* 
FROM Student A, Class B 
WHERE A.ClassID = B.ClassID 
AND A.ClassID = 'C01'
```


# Answers

| #  | Gemini | Copilot | Claude | Blackbox | Poe | ChatGPT | Check |
|----|:------:|:------:|:------:|:--------:|:---:|:-------:|:-----:|
| 1  |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 2  |   d    |   d    |   d    |    d     |  d  |    d    |   ✔   |
| 3  |   c    |   c    |   c    |    c     |  c  |    c    |   ✔   |
| 4  |   b    |   b    |   b    |    b     |  d  |    b    |   ✗   |
| 5  |   c    |   c    |   c    |    c     |  c  |    c    |   ✔   |
| 6  |   c    |   c    |   c    |    c     |  c  |    c    |   ✔   |
| 7  |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 8  |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 9  |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 10 |   c    |   c    |   c    |    c     |  c  |    c    |   ✔   |
| 11 |   b    |   b    |   b    |    b     |  b  |    b    |   ✔   |
| 12 |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 13 |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 14 |   b    |   b    |   b    |    b     |  b  |    b    |   ✔   |
| 15 |   b    |   b    |   b    |    b     |  b  |    b    |   ✔   |
| 16 |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 17 |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 18 |   c    |   c    |   c    |    a     |  a  |    a    |   ✗   |
| 19 |   c    |   c    |   c    |    c     |  c  |    c    |   ✔   |
| 20 |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 21 |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 22 |   c    |   c    |   c    |    c     |  c  |    c    |   ✔   |
| 23 |   c    |   c    |   c    |    c     |  c  |    c    |   ✔   |
| 24 |   d    |   d    |   d    |    a     |  d  |    d    |   ✗   |
| 25 |   a    |   a    |   a    |    a     |  a  |    a    |   ✔   |
| 26 |   b    |   b    |   b    |    b     |  b  |    b    |   ✔   |
| 27 |   b    |   b    |   b    |    b     |  b  |    b    |   ✔   |
| 28 |   c    |   c    |   c    |    c     |  c  |    c    |   ✔   |
| 29 |   b    |   b    |   b    |    b     |  b  |    b    |   ✔   |
| 30 |   c    |   d    |   c    |    c     |  c  |    c    |   ✗   |