token
DROP TABLE t1 
INSERT INTO t1 VALUES($doc, null) 
DROP TABLE t1 
INSERT INTO t1(docid, x) VALUES(-2, 'a b c d e f g h i j k');
    INSERT INTO t1(docid, x) VALUES(-1, 'b c d e f g h i j k a');
    INSERT INTO t1(docid, x) VALUES(0, 'c d e f g h i j k a b');
    INSERT INTO t1(docid, x) VALUES(1, 'd e f g h i j k a b c');
    INSERT INTO t1(docid, x) VALUES(2, 'e f g h i j k a b c d');
    INSERT INTO t1(docid, x) VALUES(3, 'f g h i j k a b c d e');
    INSERT INTO t1(docid, x) VALUES(4, 'a c e g i k');
    INSERT INTO t1(docid, x) VALUES(5, 'a d g j');
    INSERT INTO t1(docid, x) VALUES(6, 'c a b');
  
DROP TABLE t1;
    CREATE VIRTUAL TABLE t1 USING $create;
    INSERT INTO t1 VALUES('one two five four five', '');
    INSERT INTO t1 VALUES('', 'one two five four five');
    INSERT INTO t1 VALUES('one two', 'five four five');
  
INSERT INTO t1(t1) VALUES('optimize') 
SELECT docid FROM t1 WHERE t1 MATCH 'on* NEAR/3 fi*'
    
DROP TABLE IF EXISTS t1;
    CREATE VIRTUAL TABLE t1 USING $create;
  
INSERT INTO t1(a, b) VALUES($a, $b)
DROP TABLE IF EXISTS t1;
    CREATE VIRTUAL TABLE t1 USING $create;
  
INSERT INTO t1 VALUES($a, $b, $c, $d) 
COMMIT 
DROP TABLE IF EXISTS t1;
    CREATE VIRTUAL TABLE t1 USING $create;
  
INSERT INTO t1 VALUES($x) 
