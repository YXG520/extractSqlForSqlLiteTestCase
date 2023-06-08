CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(3,4);
    SELECT * FROM t1;
  
CREATE TABLE t2(x,y);
    INSERT INTO t2 VALUES(1,'x');
    INSERT INTO t2 VALUES(2,'y');
    SELECT * FROM t2;
  
ATTACH DATABASE 'test2.db' AS two;
    SELECT * FROM two.t2;
  
SELECT * FROM t2;
  
DETACH DATABASE two;
    SELECT * FROM t1;
  
SELECT * FROM t2;
  
SELECT * FROM two.t2;
  
ATTACH DATABASE 'test3.db' AS three;
  
SELECT * FROM three.sqlite_master;
  
DETACH DATABASE [three];
  
ATTACH 'test.db' AS db2;
    ATTACH 'test.db' AS db3;
    ATTACH 'test.db' AS db4;
    ATTACH 'test.db' AS db5;
    ATTACH 'test.db' AS db6;
    ATTACH 'test.db' AS db7;
    ATTACH 'test.db' AS db8;
    ATTACH 'test.db' AS db9;
  
lappend list $idx $name
  
ATTACH 'test.db' as db2;
  
ATTACH 'test.db' as db5;
  
ATTACH 'test.db' as db9;
  
ATTACH 'test.db' as main;

ATTACH 'test.db' as temp;
    
ATTACH 'test.db' as MAIN;

ATTACH 'test.db' as db10;
    ATTACH 'test.db' as db11;
  
do_test attach-1.19 {
    catchsql {
      ATTACH 'test.db' as db12;
    
DETACH db5;
  
select * from temp.sqlite_master
ATTACH 'test.db' as db12;
  
do_test attach-1.22 {
    catchsql {
      ATTACH 'test.db' as db13;
    
DETACH "db14";
  
DETACH db12;
  
DETACH db12;
  
DETACH main;
  
DETACH Temp;
    
DETACH Temp;
    
DETACH db11;
    DETACH db10;
    DETACH db9;
    DETACH db8;
    DETACH db7;
    DETACH db6;
    DETACH db4;
    DETACH db3;
    DETACH db2;
  
CREATE TABLE tx(x1,x2,y1,y2);
    CREATE TRIGGER r1 AFTER UPDATE ON t2 FOR EACH ROW BEGIN
      INSERT INTO tx(x1,x2,y1,y2) VALUES(OLD.x,NEW.x,OLD.y,NEW.y);
    END;
    SELECT * FROM tx;
  
UPDATE t2 SET x=x+10;
    SELECT * FROM tx;
  
CREATE TABLE tx(x1,x2,y1,y2);
    SELECT * FROM tx;
  
ATTACH 'test2.db' AS db2;
  
UPDATE db2.t2 SET x=x+10;
    SELECT * FROM db2.tx;
  
SELECT * FROM main.tx;
  
SELECT type, name, tbl_name FROM db2.sqlite_master;
  
CREATE INDEX i2 ON t2(x);
    SELECT * FROM t2 WHERE x>5;
  
SELECT type, name, tbl_name FROM sqlite_master;
  
#    SELECT * FROM t2 WHERE x>5;
#  
SELECT * FROM t2 WHERE x>5;
  
SELECT type, name, tbl_name FROM sqlite_master;
  
SELECT type, name, tbl_name FROM db2.sqlite_master;
  
ATTACH 'test2.db' AS db2;
    SELECT type, name, tbl_name FROM db2.sqlite_master;
  
SELECT * FROM t1
  
SELECT * FROM t2
  
ATTACH DATABASE 'test2.db' AS db2;
    SELECT * FROM t2
  
SELECT * FROM t2;
  
SELECT * FROM t2
SELECT * FROM t2;
  
UPDATE t2 SET x=x+1 WHERE x=50;
  
SELECT * FROM t2;
  
SELECT * FROM t2
UPDATE t2 SET x=0 WHERE 0
SELECT * FROM t2
SELECT * FROM t2
SELECT * FROM t1
UPDATE t1 SET a=a+1
SELECT * FROM t1
UPDATE t2 SET x=x+1 WHERE x=50
ROLLBACK
SELECT * FROM t1
SELECT * FROM t1
DETACH db2
CREATE TABLE t3(x,y);
    CREATE UNIQUE INDEX t3i1 ON t3(x);
    INSERT INTO t3 VALUES(1,2);
    SELECT * FROM t3;
  
CREATE TABLE t3(a,b);
    CREATE UNIQUE INDEX t3i1b ON t3(a);
    INSERT INTO t3 VALUES(9,10);
    SELECT * FROM t3;
  
ATTACH DATABASE 'test2.db' AS db2;
    SELECT * FROM db2.t3;
  
SELECT * FROM main.t3;
  
INSERT INTO db2.t3 VALUES(9,10);
    SELECT * FROM db2.t3;
  
DETACH db2;

CREATE TABLE t4(x);
      CREATE TRIGGER t3r3 AFTER INSERT ON t3 BEGIN
        INSERT INTO t4 VALUES('db2.' || NEW.x);
      END;
      INSERT INTO t3 VALUES(6,7);
      SELECT * FROM t4;
    
CREATE TABLE t4(y);
      CREATE TRIGGER t3r3 AFTER INSERT ON t3 BEGIN
        INSERT INTO t4 VALUES('main.' || NEW.a);
      END;
      INSERT INTO main.t3 VALUES(11,12);
      SELECT * FROM main.t4;
    
CREATE TABLE t4(x);
    INSERT INTO t3 VALUES(6,7);
    INSERT INTO t4 VALUES('db2.6');
    INSERT INTO t4 VALUES('db2.13');
  
CREATE TABLE t4(y);
    INSERT INTO main.t3 VALUES(11,12);
    INSERT INTO t4 VALUES('main.11');
  
ATTACH DATABASE 'test2.db' AS db2;
    INSERT INTO db2.t3 VALUES(13,14);
    SELECT * FROM db2.t4 UNION ALL SELECT * FROM main.t4;
  
INSERT INTO main.t4 VALUES('main.15')
INSERT INTO main.t3 VALUES(15,16);
    SELECT * FROM db2.t4 UNION ALL SELECT * FROM main.t4;
  
INSERT INTO main.t4 VALUES('main.15')
ATTACH DATABASE 'test2.db' AS db2;
    INSERT INTO db2.t3 VALUES(13,14);
    INSERT INTO main.t3 VALUES(15,16);
  
DETACH DATABASE db2;
  
CREATE VIEW v3 AS SELECT x*100+y FROM t3;
    SELECT * FROM v3;
  
CREATE VIEW v3 AS SELECT a*100+b FROM t3;
    SELECT * FROM v3;
  
ATTACH DATABASE 'test2.db' AS db2;
    SELECT * FROM db2.v3;
  
SELECT * FROM main.v3;
  
ATTACH DATABASE 'test.db' AS orig;
    CREATE TRIGGER r1 AFTER INSERT ON orig.t1 BEGIN
      SELECT 'no-op';
    END;
  
CREATE TABLE t5(x,y);
    CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
      SELECT 'no-op';
    END;
  
DROP TRIGGER r5;
    CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
      SELECT 'no-op' FROM orig.t1;
    END;
  
CREATE TEMP TABLE t6(p,q,r);
      CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT 'no-op' FROM temp.t6;
      END;
    
CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT 'no-op' || (SELECT * FROM temp.t6);
      END;
    
CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT 'no-op' FROM t1 WHERE x<(SELECT min(x) FROM temp.t6);
      END;
    
CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT 'no-op' FROM t1 GROUP BY 1 HAVING x<(SELECT min(x) FROM temp.t6);
      END;
    
CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT max(1,x,(SELECT min(x) FROM temp.t6)) FROM t1;
      END;
    
CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        INSERT INTO t1 VALUES((SELECT min(x) FROM temp.t6),5);
      END;
    
CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        DELETE FROM t1 WHERE x<(SELECT min(x) FROM temp.t6);
      END;
    
ATTACH DATABASE 'no-such-file' AS nosuch;
  
ATTACH DATABASE 'cannot-read' AS noread;
    
CREATE TABLE no_such_db.t1(a, b, c);
  
DETACH RAISE ( IGNORE ) IN ( SELECT "AAAAAA" . * ORDER BY 
      REGISTER LIMIT "AAAAAA" . "AAAAAA" OFFSET RAISE ( IGNORE ) NOT NULL )
    
ATTACH 'test2.db' AS t2;
  
ATTACH 'test2.db' AS t2;
  
ATTACH 'test4.db' AS aux1;
    CREATE TABLE aux1.t1(a, b);
    INSERT INTO aux1.t1 VALUES(1, 2);
    ATTACH 'test4.db' AS aux2;
    SELECT * FROM aux2.t1;
  
BEGIN;
      INSERT INTO aux1.t1 VALUES(3, 4);
      INSERT INTO aux2.t1 VALUES(5, 6);
  
COMMIT;
    SELECT * FROM aux2.t1;
  
ATTACH '' AS noname;
    ATTACH ':memory:' AS inmem;
    BEGIN;
    CREATE TABLE noname.noname(x);
    CREATE TABLE inmem.inmem(y);
    CREATE TABLE main.main(z);
    COMMIT;
    SELECT name FROM noname.sqlite_master;
    SELECT name FROM inmem.sqlite_master;
  
PRAGMA database_list;
  
ATTACH printf('file:%09000x/x.db?mode=memory&cache=shared',1) AS aux1;
  CREATE TABLE aux1.t1(x,y);
  INSERT INTO aux1.t1(x,y) VALUES(1,2),(3,4);
  SELECT * FROM aux1.t1;

CREATE TABLE Table1 (col TEXT NOT NULL PRIMARY KEY);
  ATTACH ':memory:' AS db2;
  CREATE TABLE db2.Table2(col1 INTEGER, col2 INTEGER, col3 INTEGER, col4);
  CREATE UNIQUE INDEX db2.idx_col1_unique ON Table2 (col1);
  CREATE UNIQUE INDEX db2.idx_col23_unique ON Table2 (col2, col3);
  CREATE INDEX db2.idx_col2 ON Table2 (col2);
  INSERT INTO Table2 VALUES(1,2,3,4);
  PRAGMA integrity_check;

db eval "ATTACH ':memory:' AS a$i"
  
