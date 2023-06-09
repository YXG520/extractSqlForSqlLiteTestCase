

  CREATE TABLE t1(a,b,c);
  INSERT INTO t1(a,b,c)
      /*  123456789 123456789 123456789 123456789 123456789 123456789 */ 
  VALUES('In_the_beginning_was_the_Word',1,1),
        ('and_the_Word_was_with_God',1,2),
        ('and_the_Word_was_God',1,3),
        ('The_same_was_in_the_beginning_with_God',2,1),
        ('All_things_were_made_by_him',3,1),
        ('and_without_him_was_not_any_thing_made_that_was_made',3,2);
  CREATE INDEX t1a1 ON t1(substr(a,1,12));



  SELECT b, c, '|' FROM t1 WHERE substr(a,1,12)=='and_the_Word' ORDER BY b, c;



  EXPLAIN QUERY PLAN
  SELECT b, c, '|' FROM t1 WHERE substr(a,1,12)=='and_the_Word' ORDER BY b, c;



  SELECT b, c, '|' FROM t1 WHERE 'and_the_Word'==substr(a,1,12) ORDER BY b, c;



  EXPLAIN QUERY PLAN
  SELECT b, c, '|' FROM t1 WHERE 'and_the_Word'==substr(a,1,12) ORDER BY b, c;



  CREATE INDEX t1ba ON t1(b,substr(a,2,3),c);
  SELECT c FROM t1 WHERE b=1 AND substr(a,2,3)='nd_' ORDER BY c;



  EXPLAIN QUERY PLAN
  SELECT c FROM t1 WHERE b=1 AND substr(a,2,3)='nd_' ORDER BY c;



  SELECT rowid, substr(a,b,3), '|' FROM t1 ORDER BY 2;



  CREATE INDEX t1abx ON t1(substr(a,b,3));
  SELECT rowid FROM t1 WHERE substr(a,b,3)<='and' ORDER BY +rowid;



  EXPLAIN QUERY PLAN
  SELECT rowid FROM t1 WHERE substr(a,b,3)<='and' ORDER BY +rowid;



  SELECT rowid FROM t1 WHERE +substr(a,b,3)<='and' ORDER BY +rowid;



  SELECT rowid FROM t1 WHERE substr(a,b,3) IN ('and','l_t','xyz')
   ORDER BY +rowid;



  EXPLAIN QUERY PLAN
  SELECT rowid FROM t1 WHERE substr(a,b,3) IN ('and','l_t','xyz')
   ORDER BY +rowid;



    ALTER TABLE t1 ADD COLUMN d;
    UPDATE t1 SET d=length(a);
    CREATE INDEX t1a2 ON t1(SUBSTR(a, 27, 3)) WHERE d>=29;
    SELECT rowid, b, c FROM t1
      WHERE substr(a,27,3)=='ord' AND d>=29;
  


    EXPLAIN QUERY PLAN
      SELECT rowid, b, c FROM t1
      WHERE substr(a,27,3)=='ord' AND d>=29;
  


  CREATE INDEX t1alen ON t1(length(a));
  SELECT length(a) FROM t1 ORDER BY length(a);



  EXPLAIN QUERY PLAN
  SELECT length(a) FROM t1 ORDER BY length(a);



  SELECT length(a) FROM t1 ORDER BY length(a) DESC;



  EXPLAIN QUERY PLAN
  SELECT length(a) FROM t1 ORDER BY length(a) DESC;



  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(a,b,t);
  CREATE INDEX i ON t0(a in(0,1));
  INSERT INTO t0 VALUES(0,1,2),(2,3,4),(5,6,7);
  UPDATE t0 SET b=99 WHERE (a in(0,1))=0;
  SELECT *, '|' FROM t0 ORDER BY +a;



  UPDATE t0 SET b=88 WHERE (a in(0,1))=1;
  SELECT *, '|' FROM t0 ORDER BY +a;



  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(NULL),(1);
  SELECT '1:', typeof(a), a FROM t1 WHERE a<10;
  SELECT '2:', typeof(a), a FROM t1 WHERE a+0<10;
  CREATE INDEX t1x1 ON t1(a);
  CREATE INDEX t1x2 ON t1(a+0);
  SELECT '3:', typeof(a), a FROM t1 WHERE a<10;
  SELECT '4:', typeof(a), a FROM t1 WHERE a+0<10;



  CREATE TABLE t10(a int, b int, c int, d int);
  INSERT INTO t10(a, b, c, d) VALUES(0, 0, 2, 2);
  INSERT INTO t10(a, b, c, d) VALUES(0, 0, 0, 0);
  INSERT INTO t10(a, b, c, d) VALUES(0, 0, 1, 1);
  INSERT INTO t10(a, b, c, d) VALUES(1, 1, 1, 1);
  INSERT INTO t10(a, b, c, d) VALUES(1, 1, 0, 0);
  INSERT INTO t10(a, b, c, d) VALUES(2, 2, 0, 0);

  SELECT a+b, c+d FROM t10 ORDER BY a+b, c+d;



  CREATE TABLE t1400(x TEXT);
  CREATE INDEX t1400x ON t1400(1);  -- Index on a constant
  SELECT 1 IN (SELECT 2) FROM t1400;



  INSERT INTO t1400 VALUES('a'),('b');
  SELECT 1 IN (SELECT 2) FROM t1400;



  SELECT 1 IN (SELECT 2 UNION ALL SELECT 1) FROM t1400;



  DROP INDEX t1400x;
  CREATE INDEX t1400x ON t1400(abs(15+3));
  SELECT abs(15+3) IN (SELECT 17 UNION ALL SELECT 18) FROM t1;



  CREATE TABLE t1500(a INT PRIMARY KEY, b INT UNIQUE);
  CREATE INDEX t1500ab ON t1500(a*b);
  INSERT INTO t1500(a,b) VALUES(1,2);
  REPLACE INTO t1500(a,b) VALUES(1,3);  -- formerly caused assertion fault
  SELECT * FROM t1500;



  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a PRIMARY KEY,b UNIQUE);
  REPLACE INTO t1 VALUES(2, 1);
  REPLACE INTO t1 SELECT 6,1;
  CREATE INDEX t1aa ON t1(a-a);
  REPLACE INTO t1 SELECT a, randomblob(a) FROM t1



  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1 (a INTEGER, b);
  CREATE INDEX idx1 ON t1 (lower(a));
  INSERT INTO t1 VALUES('0001234',3);
  PRAGMA integrity_check;



  INSERT INTO t1 VALUES('1234',0),('001234',2),('01234',1);
  SELECT b FROM t1 WHERE lower(a)='1234' ORDER BY +b;



  SELECT b FROM t1 WHERE lower(a)='01234' ORDER BY +b;



  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES (0);
  CREATE INDEX i0 ON t0(NULL > c0) WHERE (NULL NOT NULL);
  SELECT * FROM t0 WHERE ((NULL IS FALSE) IS FALSE);



    DROP TABLE IF EXISTS t0;
    CREATE TABLE t0(c0 REAL, c1 TEXT);
    CREATE INDEX i0 ON t0(+c0, c0);
    INSERT INTO t0(c0) VALUES(0);
    SELECT CAST(+ t0.c0 AS BLOB) LIKE 0 FROM t0; 
  


    SELECT CAST(+ t0.c0 AS BLOB) LIKE '0.0' FROM t0; 
  


    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(x REAL);
    CREATE INDEX t1x ON t1(x, +x);
    INSERT INTO t1(x) VALUES(2);
    SELECT +x FROM t1 WHERE x=2;
  


  CREATE TABLE t1(x TEXT PRIMARY KEY, y TEXT, z INT);
  INSERT INTO t1(x,y,z) VALUES('alpha','ALPHA',1),('bravo','charlie',1);
  CREATE INDEX i1 ON t1(+y COLLATE NOCASE);
  SELECT * FROM t1;



  DELETE FROM t1 INDEXED BY i1 
   WHERE x IS +y COLLATE NOCASE IN (SELECT z FROM t1)
  RETURNING *;



  SELECT * FROM t1;

