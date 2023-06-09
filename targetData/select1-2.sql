

    DROP TABLE test2;
    DELETE FROM test1;
    INSERT INTO test1 VALUES(11,22);
    INSERT INTO test1 VALUES(33,44);
    CREATE TABLE t3(a,b);
    INSERT INTO t3 VALUES('abc',NULL);
    INSERT INTO t3 VALUES(NULL,'xyz');
    INSERT INTO t3 SELECT * FROM test1;
    CREATE TABLE t4(a,b);
    INSERT INTO t4 VALUES(NULL,'$long');
    SELECT * FROM t3;
  

SELECT count(f1,f2) FROM test1

SELECT count(f1) FROM test1

SELECT Count() FROM test1

SELECT COUNT(*) FROM test1

SELECT COUNT(*)+1 FROM test1

SELECT count(*),count(a),count(b) FROM t3

SELECT count(*),count(a),count(b) FROM t4

SELECT count(*),count(a),count(b) FROM t4 WHERE b=5

SELECT min(*) FROM test1

SELECT Min(f1) FROM test1

SELECT MIN(f1,f2) FROM test1

SELECT coalesce(min(a),'xyzzy') FROM t3

SELECT min(coalesce(a,'xyzzy')) FROM t3

SELECT min(b), min(b) FROM t4

SELECT MAX(*) FROM test1

SELECT Max(f1) FROM test1

SELECT max(f1,f2) FROM test1

SELECT MAX(f1,f2)+1 FROM test1

SELECT MAX(f1)+1 FROM test1

SELECT coalesce(max(a),'xyzzy') FROM t3

SELECT max(coalesce(a,'xyzzy')) FROM t3

SELECT SUM(*) FROM test1

SELECT Sum(f1) FROM test1

SELECT sum(f1,f2) FROM test1

SELECT SUM(f1)+1 FROM test1

SELECT sum(a) FROM t3

SELECT XYZZY(f1) FROM test1

SELECT SUM(min(f1,f2)) FROM test1

SELECT SUM(min(f1)) FROM test1


     SELECT min(f1) AS m FROM test1 GROUP BY f1 HAVING max(m+5)<10
  


     SELECT coalesce(min(f1)+5,11) AS m FROM test1
      GROUP BY f1
     HAVING max(m+5)<10
  


    CREATE TABLE tkt2526(a,b,c PRIMARY KEY);
    INSERT INTO tkt2526 VALUES('x','y',NULL);
    INSERT INTO tkt2526 VALUES('x','z',NULL);
  

    SELECT count(a) AS cn FROM tkt2526 GROUP BY a HAVING cn<max(cn)
  
