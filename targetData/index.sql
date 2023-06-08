CREATE TABLE test1(f1 int, f2 int, f3 int)
CREATE INDEX index1 ON test1(f1)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
SELECT name, sql, tbl_name, type FROM sqlite_master 
           WHERE name='index1'
SELECT name, sql, tbl_name, type FROM sqlite_master 
           WHERE name='index1'
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
DROP TABLE test1
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
CREATE INDEX index1 ON test1(f1)
CREATE TABLE test1(f1 int, f2 int, f3 int)
CREATE INDEX index1 ON test1(f4)
CREATE INDEX index1 ON test1(f1, f2, f4, f3)
DROP TABLE test1
CREATE TABLE test1(f1 int, f2 int, f3 int, f4 int, f5 int)
($i%5)+1
SELECT name FROM sqlite_master 
           WHERE type='index' AND tbl_name='test1'
           ORDER BY name
DROP TABLE test1
SELECT name FROM sqlite_master 
           WHERE type='index' AND tbl_name='test1'
           ORDER BY name
CREATE TABLE test1(cnt int, power int)
1<<$i
CREATE INDEX index9 ON test1(cnt)
CREATE INDEX indext ON test1(power)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
SELECT cnt FROM test1 WHERE power=4
SELECT cnt FROM test1 WHERE power=1024
SELECT power FROM test1 WHERE cnt=6
DROP INDEX indext
SELECT power FROM test1 WHERE cnt=6
SELECT cnt FROM test1 WHERE power=1024
CREATE INDEX indext ON test1(cnt)
SELECT power FROM test1 WHERE cnt=6
SELECT cnt FROM test1 WHERE power=1024
DROP INDEX index9
SELECT power FROM test1 WHERE cnt=6
SELECT cnt FROM test1 WHERE power=1024
DROP INDEX indext
SELECT power FROM test1 WHERE cnt=6
SELECT cnt FROM test1 WHERE power=1024
DROP TABLE test1
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
CREATE INDEX index1 ON sqlite_master(name)
SELECT name FROM sqlite_master WHERE type!='meta'
CREATE TABLE test1(f1 int, f2 int)
CREATE TABLE test2(g1 real, g2 real)
CREATE INDEX index1 ON test1(f1)
CREATE INDEX index1 ON test2(g1)
CREATE INDEX [index1] ON test2(g1)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
CREATE INDEX IF NOT EXISTS index1 ON test1(f1)
CREATE INDEX test1 ON test2(g1)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
DROP TABLE test1
DROP TABLE test2
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
CREATE TABLE test1(a,b);
    CREATE INDEX index1 ON test1(a);
    CREATE INDEX index2 ON test1(b);
    CREATE INDEX index3 ON test1(a,b);
    DROP TABLE test1;
    SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name;
  
CREATE TABLE test1(f1 int, f2 int primary key)
1<<$i
SELECT count(*) FROM test1
SELECT f1 FROM test1 WHERE f2=65536
SELECT name FROM sqlite_master 
    WHERE type='index' AND tbl_name='test1'
  
DROP table test1
SELECT name FROM sqlite_master WHERE type!='meta'
DROP INDEX index1
CREATE TABLE tab1(a int)
EXPLAIN CREATE INDEX idx1 ON tab1(a)
SELECT name FROM sqlite_master WHERE tbl_name='tab1'
CREATE INDEX idx1 ON tab1(a)
SELECT name FROM sqlite_master WHERE tbl_name='tab1' ORDER BY name
CREATE TABLE t1(a int, b int);
    CREATE INDEX i1 ON t1(a);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(2,4);
    INSERT INTO t1 VALUES(3,8);
    INSERT INTO t1 VALUES(1,12);
    SELECT b FROM t1 WHERE a=1 ORDER BY b;
  
SELECT b FROM t1 WHERE a=2 ORDER BY b;
  
DELETE FROM t1 WHERE b=12;
    SELECT b FROM t1 WHERE a=1 ORDER BY b;
  
DELETE FROM t1 WHERE b=2;
    SELECT b FROM t1 WHERE a=1 ORDER BY b;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES (1,1);
    INSERT INTO t1 VALUES (1,2);
    INSERT INTO t1 VALUES (1,3);
    INSERT INTO t1 VALUES (1,4);
    INSERT INTO t1 VALUES (1,5);
    INSERT INTO t1 VALUES (1,6);
    INSERT INTO t1 VALUES (1,7);
    INSERT INTO t1 VALUES (1,8);
    INSERT INTO t1 VALUES (1,9);
    INSERT INTO t1 VALUES (2,0);
    SELECT b FROM t1 WHERE a=1 ORDER BY b;
  
DELETE FROM t1 WHERE b IN (2, 4, 6, 8); 
DELETE FROM t1 WHERE b = 2 OR b = 4 OR b = 6 OR b = 8; 
SELECT b FROM t1 WHERE a=1 ORDER BY b;
  
DELETE FROM t1 WHERE b>2;
    SELECT b FROM t1 WHERE a=1 ORDER BY b;
  
DELETE FROM t1 WHERE b=1;
    SELECT b FROM t1 WHERE a=1 ORDER BY b;
  
SELECT b FROM t1 ORDER BY b;
  
CREATE TABLE t3(
      a text,
      b int,
      c float,
      PRIMARY KEY(b)
    );
  
i
SELECT c FROM t3 WHERE b==10
CREATE TABLE t4(a NUM,b);
    INSERT INTO t4 VALUES('0.0',1);
    INSERT INTO t4 VALUES('0.00',2);
    INSERT INTO t4 VALUES('abc',3);
    INSERT INTO t4 VALUES('-1.0',4);
    INSERT INTO t4 VALUES('+1.0',5);
    INSERT INTO t4 VALUES('0',6);
    INSERT INTO t4 VALUES('00000',7);
    SELECT a FROM t4 ORDER BY b;
  
SELECT a FROM t4 WHERE a==0 ORDER BY b
  
SELECT a FROM t4 WHERE a<0.5 ORDER BY b
  
SELECT a FROM t4 WHERE a>-0.5 ORDER BY b
  
CREATE INDEX t4i1 ON t4(a);
    SELECT a FROM t4 WHERE a==0 ORDER BY b
  
SELECT a FROM t4 WHERE a<0.5 ORDER BY b
  
SELECT a FROM t4 WHERE a>-0.5 ORDER BY b
  
CREATE TABLE t5(
      a int UNIQUE,
      b float PRIMARY KEY,
      c varchar(10),
      UNIQUE(a,c)
   );
   INSERT INTO t5 VALUES(1,2,3);
   SELECT * FROM t5;
  
SELECT name FROM sqlite_master WHERE type='index' AND tbl_name='t5';
  
INSERT INTO t5 VALUES('a','b','c');
    SELECT * FROM t5;
  
CREATE TABLE t6(a,b,c);
    CREATE INDEX t6i1 ON t6(a,b);
    INSERT INTO t6 VALUES('','',1);
    INSERT INTO t6 VALUES('',NULL,2);
    INSERT INTO t6 VALUES(NULL,'',3);
    INSERT INTO t6 VALUES('abc',123,4);
    INSERT INTO t6 VALUES(123,'abc',5);
    SELECT c FROM t6 ORDER BY a,b;
  
SELECT c FROM t6 WHERE a='';
  
SELECT c FROM t6 WHERE b='';
  
SELECT c FROM t6 WHERE a>'';
  
SELECT c FROM t6 WHERE a>='';
  
SELECT c FROM t6 WHERE a>123;
  
SELECT c FROM t6 WHERE a>=123;
  
SELECT c FROM t6 WHERE a<'abc';
  
SELECT c FROM t6 WHERE a<='abc';
  
SELECT c FROM t6 WHERE a<='';
  
SELECT c FROM t6 WHERE a<'';
  
DELETE FROM t1;
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES('1.234e5',1);
    INSERT INTO t1 VALUES('12.33e04',2);
    INSERT INTO t1 VALUES('12.35E4',3);
    INSERT INTO t1 VALUES('12.34e',4);
    INSERT INTO t1 VALUES('12.32e+4',5);
    INSERT INTO t1 VALUES('12.36E+04',6);
    INSERT INTO t1 VALUES('12.36E+',7);
    INSERT INTO t1 VALUES('+123.10000E+0003',8);
    INSERT INTO t1 VALUES('+',9);
    INSERT INTO t1 VALUES('+12347.E+02',10);
    INSERT INTO t1 VALUES('+12347E+02',11);
    INSERT INTO t1 VALUES('+.125E+04',12);
    INSERT INTO t1 VALUES('-.125E+04',13);
    INSERT INTO t1 VALUES('.125E+0',14);
    INSERT INTO t1 VALUES('.125',15);
    SELECT b FROM t1 ORDER BY a, b;
  
SELECT b FROM t1 WHERE typeof(a) IN ('integer','real') ORDER BY b;
  
CREATE TABLE t7(c UNIQUE PRIMARY KEY);
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  
DROP TABLE t7;
    CREATE TABLE t7(c UNIQUE PRIMARY KEY);
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  
DROP TABLE t7;
    CREATE TABLE t7(c PRIMARY KEY, UNIQUE(c) );
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  
DROP TABLE t7;
    CREATE TABLE t7(c, d , UNIQUE(c, d), PRIMARY KEY(c, d) );
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  
DROP TABLE t7;
    CREATE TABLE t7(c, d , UNIQUE(c), PRIMARY KEY(c, d) );
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  
DROP TABLE t7;
    CREATE TABLE t7(c, d UNIQUE, UNIQUE(c), PRIMARY KEY(c, d) );
    SELECT name FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  
DROP INDEX sqlite_autoindex_t7_1;
  
DROP INDEX IF EXISTS sqlite_autoindex_t7_1;
  
DROP INDEX IF EXISTS no_such_index;
  
CREATE TABLE sqlite_t1(a, b, c);
  
CREATE TABLE sqlite_t1(a, b, c);
  
CREATE INDEX sqlite_i1 ON t7(c);
  
CREATE VIEW sqlite_v1 AS SELECT * FROM t7;
  
CREATE TRIGGER sqlite_tr1 BEFORE INSERT ON t7 BEGIN SELECT 1; END;
    
DROP TABLE t7;
  
CREATE TABLE t7(a UNIQUE PRIMARY KEY);
      CREATE TABLE t8(a UNIQUE PRIMARY KEY ON CONFLICT ROLLBACK);
      INSERT INTO t7 VALUES(1);
      INSERT INTO t8 VALUES(1);
    
BEGIN;
      INSERT INTO t7 VALUES(1);
    
BEGIN;
    
INSERT INTO t8 VALUES(1);
    
BEGIN;
      COMMIT;
    
DROP TABLE t7;
      DROP TABLE t8;
      CREATE TABLE t7(
         a PRIMARY KEY ON CONFLICT FAIL, 
         UNIQUE(a) ON CONFLICT IGNORE
      );
    
CREATE INDEX "t6i2" ON t6(c);
    DROP INDEX "t6i2";
  
DROP INDEX "t6i1";
  
CREATE INDEX temp.i21 ON t6(c);
  
CREATE TEMP TABLE t6(x);
     INSERT INTO temp.t6 values(1),(5),(9);
     CREATE INDEX temp.i21 ON t6(x);
     SELECT x FROM t6 ORDER BY x DESC;
  
DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a, b TEXT);
  CREATE UNIQUE INDEX IF NOT EXISTS x1 ON t1(b==0);
  CREATE INDEX IF NOT EXISTS x2 ON t1(a || 0) WHERE b;
  INSERT INTO t1(a,b) VALUES('a',1),('a',0);
  SELECT a, b, '|' FROM t1;

DROP TABLE t1;
  CREATE TABLE t1(a TEXT, b REAL);
  CREATE UNIQUE INDEX t1x1 ON t1(a GLOB b);
  INSERT INTO t1(a,b) VALUES('0.0','1'),('1.0','1');
  SELECT * FROM t1;
  REINDEX;

DROP TABLE t1;
  CREATE TABLE t1(a REAL);
  CREATE UNIQUE INDEX index_0 ON t1(TYPEOF(a));
  INSERT OR IGNORE INTO t1(a) VALUES (0.1),(FALSE);
  SELECT * FROM t1;
  REINDEX;

