CREATE TABLE t1(x INTEGER PRIMARY KEY, y BOOLEAN);
  INSERT INTO t1 VALUES(1, true),(2, false),(3, null);
  SELECT x FROM t1 WHERE y IS TRUE;

SELECT x FROM t1 WHERE y IS FALSE;

SELECT x FROM t1 WHERE y IS NULL;

SELECT x FROM t1 WHERE y IS NOT TRUE;

SELECT x FROM t1 WHERE y IS NOT FALSE;

SELECT x FROM t1 WHERE y IS NOT NULL;

SELECT x FROM t1 WHERE y IS TRUE OR (8==$X)

SELECT x FROM t1 WHERE y IS FALSE OR (8==$X)

SELECT x FROM t1 WHERE y IS NULL OR (8==$X);

SELECT x FROM t1 WHERE y IS NOT TRUE OR (8==$X);

SELECT x FROM t1 WHERE y IS NOT FALSE OR (8==$X);

SELECT x FROM t1 WHERE y IS NOT NULL OR (8==$X);

SELECT x,
         y IS TRUE, y IS FALSE, y is NULL,
         y IS NOT TRUE, y IS NOT FALSE, y IS NOT NULL, '|'
    FROM t1 ORDER BY x;

SELECT x FROM t1 WHERE true;

SELECT x FROM t1 WHERE false;

CREATE TABLE t2(
     a INTEGER PRIMARY KEY,
     b BOOLEAN DEFAULT true,
     c BOOLEAN DEFAULT(true),
     d BOOLEAN DEFAULT false,
     e BOOLEAN DEFAULT(false)
  );
  INSERT INTO t2 DEFAULT VALUES;
  SELECT * FROM t2;

DROP TABLE t2;
  CREATE TABLE t2(
     a INTEGER PRIMARY KEY,
     b BOOLEAN DEFAULT(not true),
     c BOOLEAN DEFAULT(not false)
  );
  INSERT INTO t2(a) VALUES(99);
  SELECT * FROM t2;

DROP TABLE t2;
  CREATE TABLE t2(
     a INTEGER PRIMARY KEY,
     b BOOLEAN CHECK(b IS TRUE),
     c BOOLEAN CHECK(c IS FALSE),
     d BOOLEAN CHECK(d IS NOT TRUE),
     e BOOLEAN CHECK(e IS NOT FALSE)
  );
  INSERT INTO t2 VALUES(1,true,false,null,null);
  SELECT * FROM t2;

INSERT INTO t2 VALUES(2,false,false,null,null);

INSERT INTO t2 VALUES(2,true,true,null,null);

INSERT INTO t2 VALUES(2,true,false,true,null);

INSERT INTO t2 VALUES(2,true,false,null,false);

DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(x);
  
SELECT x IS TRUE FROM t1;
  
SELECT x IS FALSE FROM t1;
  
CREATE TABLE t7(
      a INTEGER PRIMARY KEY,
      b BOOLEAN DEFAULT false,
      c BOOLEAN DEFAULT true
    );
    INSERT INTO t7(a) VALUES(1);
    INSERT INTO t7(a,b,c) VALUES(2,true,false);
    ALTER TABLE t7 ADD COLUMN d BOOLEAN DEFAULT false;
    ALTER TABLE t7 ADD COLUMN e BOOLEAN DEFAULT true;
    INSERT INTO t7(a,b,c) VALUES(3,true,false);
    INSERT INTO t7 VALUES(4,false,true,true,false);
    SELECT *,'x' FROM t7 ORDER BY a;
  
SELECT 0.5 IS TRUE COLLATE NOCASE;
  SELECT 0.5 IS TRUE COLLATE RTRIM;
  SELECT 0.5 IS TRUE COLLATE BINARY;

  SELECT 0.5 IS TRUE;
  SELECT 0.5 COLLATE NOCASE IS TRUE;
  SELECT 0.0 IS FALSE;

  SELECT 0.0 IS FALSE COLLATE NOCASE;
  SELECT 0.0 IS FALSE COLLATE RTRIM;
  SELECT 0.0 IS FALSE COLLATE BINARY;

SELECT 9 IN (false.false);

CREATE TABLE t8(a INT, true INT, false INT, d INT);
  INSERT INTO t8(a,true,false,d) VALUES(5,6,7,8),(4,3,2,1),('a','b','c','d');
  SELECT * FROM t8 ORDER BY false;

SELECT 9 IN (false.false) FROM t8;

CREATE TABLE false(true INT, false INT, x INT CHECK (5 IN (false.false)));

INSERT INTO False VALUES(4,5,6);

INSERT INTO False VALUES(5,6,7);

SELECT 9 IN (false.false) FROM false;

SELECT 5 IN (false.false) FROM false;

