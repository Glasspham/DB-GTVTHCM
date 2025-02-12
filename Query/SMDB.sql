USE SMDB;

-- 5.1 SHOW STUDENTS OF CLASS ID = "C02"
SELECT * 
FROM STUDENT 
WHERE CLASSID = 'C02';

-- 5.2 SHOW STUDENTS OF CLASS NAME = "COMPUTER SCIENCE"
SELECT S.* 
FROM STUDENT S, CLASS C 
WHERE S.CLASSID = C.CLASSID AND C.CLASSNAME = 'COMPUTER SCIENCE';

-- 5.3 SHOW STUDENTS (ALL INFORMATION) OF CLASS YEAR = "2020-2024"
SELECT S.* 
FROM STUDENT S, CLASS C 
WHERE S.CLASSID = C.CLASSID AND C.CLASSYEAR = '2020-2024';

-- 5.4 SHOW SUBJECT NAME AND UNITS OF THE SUBJECT ID = "S01"
SELECT SUBJECTNAME, UNITS 
FROM SUBJECT 
WHERE SUBJECTID = 'S01';

-- 5.5 GRADES OF SUBJECT ID = "S02" OF STUDENT ID = "T02"
SELECT GRADES 
FROM STUDENTGRADES 
WHERE STUDENTID = 'T02' AND SUBJECTID = 'S02';

-- 5.6 FIND SUBJECT (ID, NAME, AND GRADES) THAT STUDENT ID = "T02" FAIL (ASSUMING FAIL < 5.0)
SELECT S.SUBJECTID, S.SUBJECTNAME, SG.GRADES 
FROM SUBJECT S, STUDENTGRADES SG 
WHERE S.SUBJECTID = SG.SUBJECTID AND SG.STUDENTID = 'T02' AND SG.GRADES < 5.0;

-- 5.7 SHOW ALL THE SUBJECT (*) THAT STUDENT ID = "T03" NEVER TOOK THE EXAM
SELECT * 
FROM SUBJECT 
WHERE SUBJECTID NOT IN (
    SELECT SUBJECTID 
    FROM STUDENTGRADES 
    WHERE STUDENTID = 'T03'
);

-- 5.8 NUMBER OF STUDENTS FOR EACH CLASS
SELECT CLASSID, COUNT(*) AS STUDENTCOUNT 
FROM STUDENT 
GROUP BY CLASSID;

-- 5.9 FIND THE CLASSES WITH THE LARGEST NUMBER OF STUDENTS
SELECT CLASSID 
FROM STUDENT 
GROUP BY CLASSID 
HAVING COUNT(*) >= ALL (
    SELECT COUNT(*) 
    FROM STUDENT 
    GROUP BY CLASSID
);

-- 5.10 GPA (GRADE POINT AVERAGE) OF STUDENT ID = "T02"
SELECT STUDENTID, AVG(GRADES) AS GPA 
FROM STUDENTGRADES 
WHERE STUDENTID = 'T02';

-- 5.11 GPA FOR EACH STUDENT
SELECT STUDENTID, AVG(GRADES) AS GPA 
FROM STUDENTGRADES 
GROUP BY STUDENTID;

-- 5.11.2 (STUDENTID, STUDENTNAME) GPA FOR EACH STUDENT
SELECT STUDENTGRADES.STUDENTID, STUDENT.`STUDENTNAME`, AVG(GRADES) AS GPA 
FROM STUDENTGRADES, `STUDENT`
WHERE STUDENT.`STUDENTID`=STUDENTGRADES.`STUDENTID`
GROUP BY STUDENTID;

-- 5.12 GPA OF CLASS ID = "C02"
SELECT S.CLASSID, AVG(SG.GRADES) AS GPA 
FROM STUDENT S, STUDENTGRADES SG 
WHERE S.STUDENTID = SG.STUDENTID AND S.CLASSID = 'C02';

-- 5.13 GPA FOR EACH CLASS
SELECT S.CLASSID, AVG(SG.GRADES) AS GPA 
FROM STUDENT S, STUDENTGRADES SG 
WHERE S.STUDENTID = SG.STUDENTID 
GROUP BY S.CLASSID;

-- 5.14 FIND STUDENTS WHO HAVE THE LARGEST GPA
SELECT STUDENTID 
FROM STUDENTGRADES 
GROUP BY STUDENTID 
HAVING AVG(GRADES) >= ALL (
    SELECT AVG(GRADES) 
    FROM STUDENTGRADES 
    GROUP BY STUDENTID
);

-- 5.15 FIND STUDENTS (ID AND NAME) WHO HAVE THE LARGEST GPA
SELECT S.STUDENTID, S.STUDENTNAME 
FROM STUDENT S 
WHERE S.STUDENTID IN (
    SELECT STUDENTID 
    FROM STUDENTGRADES 
    GROUP BY STUDENTID 
    HAVING AVG(GRADES) >= ALL (
        SELECT AVG(GRADES) 
        FROM STUDENTGRADES 
        GROUP BY STUDENTID
    )
);

-- 5.16 FIND CLASSES (ID AND NAME) THAT HAVE THE LARGEST GPA
SELECT C.CLASSID, C.CLASSNAME 
FROM CLASS C 
WHERE C.CLASSID IN (
    SELECT S.CLASSID 
    FROM STUDENT S, STUDENTGRADES SG 
    WHERE S.STUDENTID = SG.STUDENTID 
    GROUP BY S.CLASSID 
    HAVING AVG(SG.GRADES) >= ALL (
        SELECT AVG(SG.GRADES) 
        FROM STUDENT S, STUDENTGRADES SG 
        WHERE S.STUDENTID = SG.STUDENTID 
        GROUP BY S.CLASSID
    )
);

-- 5.17 GPA WITH WEIGHT FOR EACH STUDENT
SELECT STUDENTID, SUM(GRADES * UNITS) / SUM(UNITS) AS WEIGHTED_GPA 
FROM STUDENTGRADES SG 
JOIN SUBJECT S ON SG.SUBJECTID = S.SUBJECTID 
GROUP BY STUDENTID;

-- 5.18 GPA WITH WEIGHT FOR EACH STUDENT (ID AND NAME)
SELECT ST.STUDENTID, ST.STUDENTNAME, SUM(GRADES * UNITS) / SUM(UNITS) AS WEIGHTED_GPA 
FROM STUDENTGRADES SG 
                    JOIN SUBJECT S ON SG.SUBJECTID = S.SUBJECTID 
                    JOIN STUDENT ST ON SG.STUDENTID = ST.STUDENTID 
GROUP BY ST.STUDENTID;

-- 5.19 GPA WITH WEIGHT FOR EACH CLASS
SELECT ST.CLASSID, SUM(GRADES * UNITS) / SUM(UNITS) AS WEIGHTED_GPA 
FROM STUDENTGRADES SG 
                    JOIN SUBJECT S ON SG.SUBJECTID = S.SUBJECTID 
                    JOIN STUDENT ST ON SG.STUDENTID = ST.STUDENTID 
GROUP BY ST.CLASSID;

-- 6. SHOW ALL INTEGRITY CONSTRAINTS (USING INFORMATION_SCHEMA)
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_SCHEMA = 'SMDB';