


 INSERT INTO t4 VALUES($a, $b) 

SELECT * FROM t4 WHERE a = 'abc' AND b = 3;

/t4 USING INDEX t4a/
SELECT * FROM t4 WHERE a = 'abc' COLLATE nocase AND b = 3;

/t4 USING INDEX t4a/
SELECT * FROM t4 WHERE a COLLATE nocase = 'abc' AND b = 3;

/t4 USING INDEX t4a/
