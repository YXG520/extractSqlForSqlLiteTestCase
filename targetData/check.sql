CREATE TABLE t1(
      x INTEGER CHECK( x<5 ),
      y REAL CHECK( y>x )
    );
  
INSERT INTO t1 VALUES(3,4);
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES(6,7);
  
SELECT * FROM t1;
  
INSERT INTO t1 VALUES(4,3);
  
SELECT * FROM t1;
  
INSERT INTO t1 VALUES(NULL,6);
  
SELECT * FROM t1;
  
INSERT INTO t1 VALUES(2,NULL);
  
SELECT * FROM t1;
  
DELETE FROM t1 WHERE x IS NULL OR x!=3;
    UPDATE t1 SET x=2 WHERE x==3;
    SELECT * FROM t1;
  
UPDATE t1 SET x=7 WHERE x==2
  
SELECT * FROM t1;
  
UPDATE t1 SET x=5 WHERE x==2
  
SELECT * FROM t1;
  
UPDATE t1 SET x=4, y=11 WHERE x==2
  
SELECT * FROM t1;
  
PRAGMA writable_schema = 1;
    CREATE TABLE t2(
      x INTEGER CONSTRAINT one CHECK( typeof(coalesce(x,0))=="integer" ),
      y REAL CONSTRAINT two CHECK( typeof(coalesce(y,0.1))=='real' ),
      z TEXT CONSTRAINT three CHECK( typeof(coalesce(z,''))=='text' )
    );
    CREATE TABLE t2n(
      x INTEGER CONSTRAINT one CHECK( typeof(coalesce(x,0))=="integer" ),
      y NUMERIC CONSTRAINT two CHECK( typeof(coalesce(y,0.1))=='real' ),
      z TEXT CONSTRAINT three CHECK( typeof(coalesce(z,''))=='text' )
    );
    PRAGMA writable_schema = 0;
  
INSERT INTO t2 VALUES(1,2.2,'three');
    SELECT * FROM t2;
  
INSERT INTO t2 VALUES(NULL, NULL, NULL);
    SELECT * FROM t2;
  
INSERT INTO t2 VALUES(1.1, NULL, NULL);
  
INSERT INTO t2 VALUES(NULL, 5, NULL);
  
INSERT INTO t2n VALUES(NULL, 5, NULL);
  
INSERT INTO t2 VALUES(NULL, NULL, 3.14159);
  
CREATE TABLE t2b(
      x INTEGER CHECK( typeof(coalesce(x,0))=='integer' ) CONSTRAINT one,
      y TEXT PRIMARY KEY constraint two,
      z INTEGER,
      UNIQUE(x,z) constraint three
    );
  
INSERT INTO t2b VALUES('xyzzy','hi',5);
  
CREATE TABLE t2c(
      x INTEGER CONSTRAINT x_one CONSTRAINT x_two
          CHECK( typeof(coalesce(x,0))=='integer' )
          CONSTRAINT x_two CONSTRAINT x_three,
      y INTEGER, z INTEGER,
      CONSTRAINT u_one UNIQUE(x,y,z) CONSTRAINT u_two
    );
  
INSERT INTO t2c VALUES('xyzzy',7,8);
  
DROP TABLE IF EXISTS t2b;
    DROP TABLE IF EXISTS t2c;
    DROP TABLE IF EXISTS t2n;
  
CREATE TABLE t3(
        x, y, z,
        CHECK( x<(SELECT min(x) FROM t1) )
      );
    
SELECT name FROM sqlite_master ORDER BY name
  
CREATE TABLE t3(
      x, y, z,
      CHECK( q<x )
    );
  
SELECT name FROM sqlite_master ORDER BY name
  
CREATE TABLE t3(
      x, y, z,
      CHECK( t2.x<x )
    );
  
SELECT name FROM sqlite_master ORDER BY name
  
CREATE TABLE t3(
      x, y, z,
      CHECK( t3.x<25 )
    );
  
INSERT INTO t3 VALUES(1,2,3);
    SELECT * FROM t3;
  
INSERT INTO t3 VALUES(111,222,333);
  
CREATE TABLE t4(x, y,
      CHECK (
           x+y==11
        OR x*y==12
        OR x/y BETWEEN 5 AND 8
        OR -x==y+10
      )
    );
  
INSERT INTO t4 VALUES(1,10);
    SELECT * FROM t4
  
UPDATE t4 SET x=4, y=3;
    SELECT * FROM t4
  
UPDATE t4 SET x=12, y=2;
    SELECT * FROM t4
  
UPDATE t4 SET x=12, y=-22;
    SELECT * FROM t4
  
UPDATE t4 SET x=0, y=1;
  
SELECT * FROM t4;
  
PRAGMA ignore_check_constraints=ON;
    UPDATE t4 SET x=0, y=1;
    SELECT * FROM t4;
    PRAGMA integrity_check;
  
PRAGMA ignore_check_constraints=OFF;
  PRAGMA integrity_check;

UPDATE t4 SET x=0, y=2;
  
VACUUM
    
CREATE TABLE t5(x, y,
      CHECK( x*y<:abc )
    );
  
CREATE TABLE t5(x, y,
      CHECK( x*y<? )
    );
  
SELECT * FROM t1
UPDATE OR IGNORE t1 SET x=5;
    SELECT * FROM t1;
  
INSERT OR IGNORE INTO t1 VALUES(5,4.0);
    SELECT * FROM t1;
  
INSERT OR IGNORE INTO t1 VALUES(2,20.0);
    SELECT * FROM t1;
  
UPDATE OR FAIL t1 SET x=7-x, y=y+1;
  
SELECT * FROM t1;
  
BEGIN;
    INSERT INTO t1 VALUES(1,30.0);
    INSERT OR ROLLBACK INTO t1 VALUES(8,40.0);
  
COMMIT;
  
SELECT * FROM t1
  
SELECT * FROM t1
REPLACE INTO t1 VALUES(6,7);
  
SELECT * FROM t1
INSERT OR IGNORE INTO t1 VALUES(6,7);
  
SELECT * FROM t1
CREATE TABLE t6(a CHECK (myfunc(a))) 
INSERT INTO t6 VALUES(9)  
INSERT INTO t6 VALUES(11) 
SELECT * FROM t6 
INSERT INTO t6 VALUES(8) 
CREATE TABLE t7(a CHECK (myfunc(a))) 
INSERT INTO t6 VALUES(8) 
INSERT INTO t6 VALUES(12) 
CREATE TABLE t810(a, CHECK( main.t810.a>0 ));
  CREATE TABLE t811(b, CHECK( xyzzy.t811.b BETWEEN 5 AND 10 ));

CREATE TABLE t1(
    a INTEGER PRIMARY KEY,
    b INTEGER NOT NULL CONSTRAINT 'b-check' CHECK( b>a ),
    c INTEGER NOT NULL CONSTRAINT 'c-check' CHECK( c>rowid*2 ),
    d INTEGER NOT NULL CONSTRAINT 'd-check' CHECK( d BETWEEN b AND c )
  );
  INSERT INTO t1(a,b,c,d) VALUES(1,2,4,3),(2,4,6,5),(3,10,30,20);

UPDATE t1 SET b=0 WHERE a=1;

UPDATE t1 SET c=a*2 WHERE a=1;

CREATE TABLE t1(x);
  CREATE VIEW v1(y) AS SELECT x FROM t1;
  PRAGMA integrity_check;

CREATE TABLE t1 (Col0 CHECK(1 COLLATE BINARY BETWEEN 1 AND 1) ) ;

INSERT INTO t1 VALUES (NULL);

INSERT  INTO t1 VALUES (NULL);

CREATE TABLE t2(b, a CHECK(
      CASE 'abc' COLLATE nocase WHEN a THEN 1 ELSE 0 END)
  );

INSERT INTO t2(a) VALUES('abc');

INSERT INTO t2(b, a) VALUES(1, 'abc'||'');

INSERT INTO t2(b, a) VALUES(2, 'abc');

CREATE TABLE t1(a TEXT, CHECK(a=+a));
  INSERT INTO t1(a) VALUES(NULL),('xyz'),(5),(x'303132'),(4.75);
  SELECT quote(a) FROM t1 ORDER BY rowid;

DROP TABLE t1;
  CREATE TABLE t1(a TEXT, CHECK(a<>+a));
  INSERT INTO t1(a) VALUES(NULL);

INSERT INTO t1(a) VALUES('xyz');

INSERT INTO t1(a) VALUES(123);

DROP TABLE t1;
  CREATE TABLE t1(a TEXT, CHECK(NOT(a=+a)));
  INSERT INTO t1(a) VALUES(NULL);

INSERT INTO t1(a) VALUES('xyz');

INSERT INTO t1(a) VALUES(123);

DROP TABLE t1;
  CREATE TABLE t1(a TEXT, CHECK(NOT(a<>+a)));
  INSERT INTO t1(a) VALUES(NULL),('xyz'),(5),(x'303132'),(4.75);
  SELECT quote(a) FROM t1 ORDER BY rowid;

DROP TABLE t1;
  CREATE TABLE t1(a TEXT, CHECK(a BETWEEN 0 AND +a));
  INSERT INTO t1(a) VALUES(NULL),('xyz'),(5),(x'303132'),(4.75);
  SELECT quote(a) FROM t1 ORDER BY rowid;

DROP TABLE t1;
  CREATE TABLE t1(a TEXT, CHECK(a NOT BETWEEN 0 AND +a));
  INSERT INTO t1(a) VALUES(NULL);
  SELECT quote(a) FROM t1 ORDER BY rowid;

INSERT INTO t1(a) VALUES(456);

DROP TABLE t1;
  CREATE TABLE t1(a TEXT, CHECK(a BETWEEN +a AND 999999));
  INSERT INTO t1(a) VALUES(NULL),(5);
  SELECT quote(a) FROM t1 ORDER BY rowid;

DROP TABLE t1;
  CREATE TABLE t1(a TEXT, CHECK(a NOT BETWEEN +a AND 999999));
  INSERT INTO t1(a) VALUES(NULL);
  SELECT quote(a) FROM t1 ORDER BY rowid;

INSERT INTO t1(a) VALUES(456);

