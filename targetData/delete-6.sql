
BEGIN; DELETE FROM table1
INSERT INTO table1 VALUES($i,[expr {$i*$i}])
DELETE FROM table2
INSERT INTO table2 VALUES($i,[expr {$i*$i}])
COMMIT
SELECT count(*) FROM table1

SELECT count(*) FROM table2

SELECT f1 FROM table1 WHERE f1<10 ORDER BY f1

SELECT f1 FROM table2 WHERE f1<10 ORDER BY f1

DELETE FROM table1 WHERE f1>7

SELECT f1 FROM table1 ORDER BY f1

DELETE FROM table2 WHERE f1>7
SELECT f1 FROM table2 ORDER BY f1

DELETE FROM table1
SELECT f1 FROM table1

INSERT INTO table1 VALUES(2,3)
SELECT f1 FROM table1

DELETE FROM table2
SELECT f1 FROM table2

INSERT INTO table2 VALUES(2,3)
SELECT f1 FROM table2
