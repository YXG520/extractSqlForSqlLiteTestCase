CREATE TABLE test1 (
      one varchar(10),
      two text
    )
  
SELECT sql FROM sqlite_master WHERE type!='meta'
  
SELECT name, tbl_name, type FROM sqlite_master WHERE type!='meta'
SELECT name, tbl_name, type from sqlite_master WHERE type!='meta'
DROP TABLE test1
SELECT * FROM sqlite_master WHERE type!='meta'
SELECT name FROM sqlite_master WHERE type!='meta'
CREATE TABLE "create" (f1 int)
SELECT name FROM sqlite_master WHERE type!='meta'
DROP TABLE "create"
SELECT name FROM "sqlite_master" WHERE type!='meta'
CREATE TABLE test1("f1 ho" int)
SELECT name as "X" FROM sqlite_master WHERE type!='meta'
DROP TABLE "TEST1"
SELECT name FROM "sqlite_master" WHERE type!='meta'
CREATE TABLE TEST2(one text)
CREATE TABLE test2(two text default 'hi')
CREATE TABLE "test2" (two)
CREATE TABLE sqlite_master(two text)
CREATE TABLE sqlite_master(two text)
CREATE TABLE IF NOT EXISTS test2(x,y)
CREATE TABLE IF NOT EXISTS test2(x UNIQUE, y TEXT PRIMARY KEY)
DROP TABLE test2; SELECT name FROM sqlite_master WHERE type!='meta'
CREATE TABLE test2(one text)
CREATE INDEX test3 ON test2(one)
CREATE TABLE test3(two text)
CREATE TABLE test3(two text)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
DROP INDEX test3
CREATE TABLE test3(two text)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
DROP TABLE test2; DROP TABLE test3
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
SELECT sql FROM sqlite_master WHERE type=='table'
CREATE TABLE BIG(xyz foo)
CREATE TABLE biG(xyz foo)
CREATE TABLE bIg(xyz foo)
CREATE TABLE Big(xyz foo)
DROP TABLE big
SELECT name FROM sqlite_master WHERE type!='meta'
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
pragma vdbe_trace=on
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
DROP TABLE test009
DROP TABLE IF EXISTS test009
DROP TABLE IF EXISTS sqlite_master
EXPLAIN CREATE TABLE test1(f1 int)
SELECT name FROM sqlite_master WHERE type!='meta'
CREATE TABLE test1(f1 int)
EXPLAIN DROP TABLE test1
SELECT name FROM sqlite_master WHERE type!='meta'
CREATE TABLE 'Spaces In This Name!'(x int)
INSERT INTO 'spaces in this name!' VALUES(1)
CREATE TABLE weird(
      desc text,
      asc text,
      key int,
      [14_vac] boolean,
      fuzzy_dog_12 varchar(10),
      begin blob,
      end clob
    )
  
INSERT INTO weird VALUES('a','b',9,0,'xyz','hi','y''all');
    SELECT * FROM weird;
  
SELECT * FROM weird;
  
CREATE TABLE savepoint(release);
    INSERT INTO savepoint(release) VALUES(10);
    UPDATE savepoint SET release = 5;
    SELECT release FROM savepoint;
  
CREATE TABLE t2 AS SELECT * FROM weird;
    SELECT * FROM t2;
  
SELECT sql FROM sqlite_master WHERE name='t2';
  
CREATE TABLE "t3""xyz"(a,b,c);
    INSERT INTO [t3"xyz] VALUES(1,2,3);
    SELECT * FROM [t3"xyz];
  
CREATE TABLE [t4"abc] AS SELECT count(*) as cnt, max(b+c) FROM [t3"xyz];
    SELECT * FROM [t4"abc];
  
SELECT sql FROM sqlite_master WHERE name='t4"abc'
  
CREATE TEMPORARY TABLE t5 AS SELECT count(*) AS [y'all] FROM [t3"xyz];
      SELECT * FROM t5;
    
SELECT * FROM [t4"abc];
  
SELECT * FROM t2;
  
SELECT * FROM t5;
  
CREATE TABLE t5 AS SELECT * FROM no_such_table;
  
CREATE TABLE t10("col.1" [char.3]);
    CREATE TABLE t11 AS SELECT * FROM t10;
    SELECT sql FROM sqlite_master WHERE name = 't11';
  
CREATE TABLE t12(
      a INTEGER,
      b VARCHAR(10),
      c VARCHAR(1,10),
      d VARCHAR(+1,-10),
      e VARCHAR (+1,-10),
      f "VARCHAR (+1,-10, 5)",
      g BIG INTEGER
    );
    CREATE TABLE t13 AS SELECT * FROM t12;
    SELECT sql FROM sqlite_master WHERE name = 't13';
  
CREATE TABLE t6(a,b,a);
  
CREATE TABLE t6(a varchar(100), b blob, a integer);
  
CREATE TABLE t6(a REFERENCES t4(a) NOT NULL);
    INSERT INTO t6 VALUES(NULL);
  
DROP TABLE t6;
    CREATE TABLE t6(a REFERENCES t4(a) MATCH PARTIAL);
  
DROP TABLE t6;
    CREATE TABLE t6(a REFERENCES t4 MATCH FULL ON DELETE SET NULL NOT NULL);
  
DROP TABLE t6;
    CREATE TABLE t6(a REFERENCES t4 MATCH FULL ON UPDATE SET DEFAULT DEFAULT 1);
  
DROP TABLE t6;
    CREATE TABLE t6(a NOT NULL NOT DEFERRABLE INITIALLY IMMEDIATE);
  
DROP TABLE t6;
    CREATE TABLE t6(a NOT NULL DEFERRABLE INITIALLY DEFERRED);
  
DROP TABLE t6;
    CREATE TABLE t6(a,
      FOREIGN KEY (a) REFERENCES t4(b) DEFERRABLE INITIALLY DEFERRED
    );
  
DROP TABLE t6;
    CREATE TABLE t6(a,b,c,
      FOREIGN KEY (b,c) REFERENCES t4(x,y) MATCH PARTIAL
        ON UPDATE SET NULL ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
    );
  
DROP TABLE t6;
    CREATE TABLE t6(a,b,c,
      FOREIGN KEY (b,c) REFERENCES t4(x)
    );
  
DROP TABLE t6
CREATE TABLE t6(a,b,c,
      FOREIGN KEY (b,c) REFERENCES t4(x,y,z)
    );
  
DROP TABLE t6
CREATE TABLE t6(a,b, c REFERENCES t4(x,y));
  
DROP TABLE t6
CREATE TABLE t6(a,b,c,
      FOREIGN KEY (b,x) REFERENCES t4(x,y)
    );
  
DROP TABLE t6
CREATE TABLE t6(a,b,c,
      FOREIGN KEY (x,b) REFERENCES t4(x,y)
    );
  
CREATE TABLE t7(
       a integer primary key,
       b number(5,10),
       c character varying (8),
       d VARCHAR(9),
       e clob,
       f BLOB,
       g Text,
       h
    );
    INSERT INTO t7(a) VALUES(1);
    SELECT typeof(a), typeof(b), typeof(c), typeof(d),
           typeof(e), typeof(f), typeof(g), typeof(h)
    FROM t7 LIMIT 1;
  
SELECT typeof(a+b), typeof(a||b), typeof(c+d), typeof(c||d)
    FROM t7 LIMIT 1;
  
CREATE TABLE t8 AS SELECT b, h, a as i, (SELECT f FROM t7) as j FROM t7;
    
CREATE TABLE t8 AS SELECT b, h, a as i, f as j FROM t7;
    
SELECT sql FROM sqlite_master WHERE tbl_name = 't8'
  
CREATE TABLE tablet8(
       a integer primary key,
       tm text DEFAULT CURRENT_TIME,
       dt text DEFAULT CURRENT_DATE,
       dttm text DEFAULT CURRENT_TIMESTAMP
    );
    SELECT * FROM tablet8;
  
ATTACH 'test2.db' as aux;
    
BEGIN
COMMIT
BEGIN
COMMIT
CREATE TABLE t16(x DEFAULT(max(1)));
  INSERT INTO t16(x) VALUES(123);
  SELECT rowid, x FROM t16;

INSERT INTO t16(rowid) VALUES(4);

DROP TABLE t16;
  CREATE TABLE t16(x DEFAULT(abs(1)));
  INSERT INTO t16(rowid) VALUES(4);
  SELECT rowid, x FROM t16;

DROP TABLE t16;
  CREATE TABLE t16(x DEFAULT(avg(1)));
  INSERT INTO t16(rowid) VALUES(123);
  SELECT rowid, x FROM t16;

DROP TABLE t16;
  CREATE TABLE t16(x DEFAULT(count()));
  INSERT INTO t16(rowid) VALUES(123);
  SELECT rowid, x FROM t16;

DROP TABLE t16;
  CREATE TABLE t16(x DEFAULT(group_concat('x',',')));
  INSERT INTO t16(rowid) VALUES(123);
  SELECT rowid, x FROM t16;

INSERT INTO t16 DEFAULT VALUES;

DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a TEXT);
  INSERT INTO t1(a) VALUES(1),(2);
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(x TEXT, y TEXT);
  INSERT INTO t2(x,y) VALUES(3,4);
  DROP TABLE IF EXISTS t3;
  CREATE TABLE t3 AS
    SELECT a AS p, coalesce(y,a) AS q FROM t1 LEFT JOIN t2 ON a=x;
  SELECT p, q, '|' FROM t3 ORDER BY p;

DROP TABLE IF EXISTS t1;
  BEGIN;
  CREATE TABLE t1 AS SELECT zeroblob(2e20);

COMMIT;
  PRAGMA integrity_check;

CREATE TABLE t19 AS SELECT * FROM sqlite_master;
  SELECT name FROM t19 ORDER BY name;

