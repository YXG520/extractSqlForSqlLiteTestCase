CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    CREATE TABLE [t1'x1](c UNIQUE, b PRIMARY KEY);
    INSERT INTO [t1'x1] VALUES(3,4);
    CREATE INDEX t1i1 ON T1(B);
    CREATE INDEX t1i2 ON t1(a,b);
    CREATE INDEX i3 ON [t1'x1](b,c);
    CREATE $::temp TABLE "temp table"(e,f,g UNIQUE);
    CREATE INDEX i2 ON [temp table](f);
    INSERT INTO [temp table] VALUES(5,6,7);
  
SELECT 't1', * FROM t1;
    SELECT 't1''x1', * FROM "t1'x1";
    SELECT * FROM [temp table];
  
CREATE $::temp TABLE objlist(type, name, tbl_name);
    INSERT INTO objlist SELECT type, name, tbl_name 
        FROM sqlite_master WHERE NAME!='objlist';
  
INSERT INTO objlist SELECT type, name, tbl_name 
          FROM temp.sqlite_master WHERE NAME!='objlist';
    
SELECT type, name, tbl_name FROM objlist ORDER BY tbl_name, type desc, name;
  
temp table
ALTER TABLE [T1] RENAME to [-t1-];
    ALTER TABLE "t1'x1" RENAME TO T2;
    ALTER TABLE [temp table] RENAME to TempTab;
  
SELECT 't1', * FROM [-t1-];
    SELECT 't2', * FROM t2;
    SELECT * FROM temptab;
  
DELETE FROM objlist;
    INSERT INTO objlist SELECT type, name, tbl_name
        FROM sqlite_master WHERE NAME!='objlist';
  
INSERT INTO objlist SELECT type, name, tbl_name 
        FROM sqlite_temp_master WHERE NAME!='objlist';
  
SELECT type, name, tbl_name FROM objlist ORDER BY tbl_name, type desc, name;
  
TempTab
CREATE TEMP TABLE objlist(type, name, tbl_name);
      INSERT INTO objlist SELECT type, name, tbl_name FROM sqlite_master;
      INSERT INTO objlist 
          SELECT type, name, tbl_name FROM temp.sqlite_master 
          WHERE NAME!='objlist';
      SELECT type, name, tbl_name FROM objlist 
          ORDER BY tbl_name, type desc, name;
    
DROP TABLE TempTab;
  
SELECT substr(name,1,3) FROM sqlite_master
ALTER TABLE [-t1-] RENAME to [*t1*];
    ALTER TABLE T2 RENAME TO [<t2>];
  
DELETE FROM objlist;
    INSERT INTO objlist SELECT type, name, tbl_name
        FROM sqlite_master WHERE NAME!='objlist';
  
INSERT INTO objlist SELECT type, name, tbl_name 
        FROM sqlite_temp_master WHERE NAME!='objlist';
  
SELECT type, name, tbl_name FROM objlist ORDER BY tbl_name, type desc, name;
  
ATTACH 'test2.db' AS aux;
    
CREATE TABLE t4(a PRIMARY KEY, b, c);
      CREATE TABLE aux.t4(a PRIMARY KEY, b, c);
      CREATE INDEX i4 ON t4(b);
      CREATE INDEX aux.i4 ON t4(b);
    
INSERT INTO t4 VALUES('main', 'main', 'main');
      INSERT INTO aux.t4 VALUES('aux', 'aux', 'aux');
      SELECT * FROM t4 WHERE a = 'main';
    
ALTER TABLE t4 RENAME TO t5;
      SELECT * FROM t4 WHERE a = 'aux';
    
SELECT * FROM t5;
    
SELECT * FROM t5 WHERE b = 'main';
    
ALTER TABLE aux.t4 RENAME TO t5;
      SELECT * FROM aux.t5 WHERE b = 'aux';
    
CREATE TABLE tbl1   (a, b, c);
    INSERT INTO tbl1 VALUES(1, 2, 3);
  
SELECT * FROM tbl1;
  
ALTER TABLE tbl1 RENAME TO tbl2;
    SELECT * FROM tbl2;
  
DROP TABLE tbl2;
  
ALTER TABLE none RENAME TO hi;
  
CREATE TABLE t3(p,q,r);
  
ALTER TABLE [<t2>] RENAME TO t3;
  
ALTER TABLE [<t2>] RENAME TO i3;
  
ALTER TABLE SqLiTe_master RENAME TO master;
  
ALTER TABLE t3 RENAME TO sqlite_t3;
  
ALTER TABLE t3 ADD COLUMN (ALTER TABLE t3 ADD COLUMN);
  
CREATE TABLE t6(a, b, c);
    -- Different case for the table name in the trigger.
    CREATE TRIGGER trig1 AFTER INSERT ON T6 BEGIN
      SELECT trigfunc('trig1', new.a, new.b, new.c);
    END;
  
INSERT INTO t6 VALUES(1, 2, 3);
  
ALTER TABLE t6 RENAME TO t7;
    INSERT INTO t7 VALUES(4, 5, 6);
  
DROP TRIGGER trig1;
  
CREATE TRIGGER trig2 AFTER INSERT ON main.t7 BEGIN
      SELECT trigfunc('trig2', new.a, new.b, new.c);
    END;
    INSERT INTO t7 VALUES(1, 2, 3);
  
ALTER TABLE t7 RENAME TO t8;
    INSERT INTO t8 VALUES(4, 5, 6);
  
DROP TRIGGER trig2;
  
CREATE TRIGGER trig3 AFTER INSERT ON main.'t8'BEGIN
      SELECT trigfunc('trig3', new.a, new.b, new.c);
    END;
    INSERT INTO t8 VALUES(1, 2, 3);
  
ALTER TABLE t8 RENAME TO t9;
    INSERT INTO t9 VALUES(4, 5, 6);
  
ATTACH 'test3.db' AS ON;
    
ATTACH 'test3.db' AS 'ON';
    
CREATE TABLE ON.t1(a, b, c); 
    
CREATE TABLE 'ON'.t1(a, b, c); 
    
CREATE TABLE 'ON'.ON(a, b, c); 
    
CREATE TABLE 'ON'.'ON'(a, b, c); 
    
CREATE TABLE t10(a, ON, c);
  
CREATE TABLE t10(a, 'ON', c);
  
CREATE TRIGGER trig4 AFTER INSERT ON ON BEGIN SELECT 1; END;
  
CREATE TRIGGER 'on'.trig4 AFTER INSERT ON 'ON' BEGIN SELECT 1; END;
    
DROP TABLE t10;
  
CREATE TABLE tbl1(a, b, c);
    CREATE $::temp TRIGGER trig1 AFTER INSERT ON tbl1 BEGIN
      SELECT trigfunc('trig1', new.a, new.b, new.c);
    END;
  
INSERT INTO tbl1 VALUES('a', 'b', 'c');
  
ALTER TABLE tbl1 RENAME TO tbl2;
    INSERT INTO tbl2 VALUES('d', 'e', 'f');
  
CREATE $::temp TRIGGER trig2 AFTER UPDATE ON tbl2 BEGIN
      SELECT trigfunc('trig2', new.a, new.b, new.c);
    END;
  
ALTER TABLE tbl2 RENAME TO tbl3;
    INSERT INTO tbl3 VALUES('g', 'h', 'i');
  
UPDATE tbl3 SET a = 'G' where a = 'g';
  
DROP TABLE tbl3;
  
SELECT * FROM temp.sqlite_master WHERE type = 'trigger';
    
CREATE TABLE tbl1(a INTEGER PRIMARY KEY AUTOINCREMENT);
    INSERT INTO tbl1 VALUES(10);
  
INSERT INTO tbl1 VALUES(NULL);
    SELECT a FROM tbl1;
  
ALTER TABLE tbl1 RENAME TO tbl2;
    DELETE FROM tbl2;
    INSERT INTO tbl2 VALUES(NULL);
    SELECT a FROM tbl2;
  
DROP TABLE tbl2;
  
CREATE TABLE tbl1(a, b, c);
    INSERT INTO tbl1 VALUES('x', 'y', 'z');
  
ALTER TABLE tbl1 RENAME TO tbl2;
    SELECT * FROM tbl2;
  
SELECT name FROM sqlite_master
   WHERE type='table' AND name NOT GLOB 'sqlite*'

SELECT max(oid) FROM sqlite_master
CREATE TABLE t1(a TEXT COLLATE BINARY);
    ALTER TABLE t1 ADD COLUMN b INTEGER COLLATE NOCASE;
    INSERT INTO t1 VALUES(1,'-2');
    INSERT INTO t1 VALUES(5.4e-08,'5.4e-08');
    SELECT typeof(a), a, typeof(b), b FROM t1;
  
CREATE TABLE t2(a INTEGER);
    INSERT INTO t2 VALUES(1);
    INSERT INTO t2 VALUES(1);
    INSERT INTO t2 VALUES(2);
    ALTER TABLE t2 ADD COLUMN b INTEGER DEFAULT 9;
    SELECT sum(b) FROM t2;
  
SELECT a, sum(b) FROM t2 GROUP BY a;
  
SELECT SQLITE_RENAME_COLUMN(0,0,0,0,0,0,0,0,0)
1 { SELECT SQLITE_RENAME_TABLE(0,0,0,0,0,0,0) 
SELECT sqlite_rename_table(0,0,0,0,0,0,0);

SELECT name FROM sqlite_master WHERE name GLOB 'xyz*'
SELECT name FROM sqlite_master WHERE name GLOB 'sqlite_autoindex*'
SELECT name FROM sqlite_master WHERE name GLOB 'xyz*'
SELECT name FROM sqlite_master WHERE name GLOB 'sqlite_autoindex*'
CREATE TABLE t11(%c6%c6)
ALTER TABLE t11 ADD COLUMN abc;
  
ALTER TABLE t11 ADD COLUMN abc;
  
INSERT INTO t11 VALUES(1,2)
SELECT %c6%c6 AS xyz, abc FROM t11
CREATE TABLE t11b("%81%82%83" text)
ALTER TABLE t11b ADD COLUMN abc;
  
ALTER TABLE t11b ADD COLUMN abc;
  
INSERT INTO t11b VALUES(3,4)
SELECT %81%82%83 AS xyz, abc FROM t11b
SELECT [%81%82%83] AS xyz, abc FROM t11b
SELECT "%81%82%83" AS xyz, abc FROM t11b
CREATE TABLE t11c(%81%82%83 text)
ALTER TABLE t11c ADD COLUMN abc;
  
ALTER TABLE t11c ADD COLUMN abc;
  
INSERT INTO t11c VALUES(5,6)
SELECT %81%82%83 AS xyz, abc FROM t11c
SELECT [%81%82%83] AS xyz, abc FROM t11c
SELECT "%81%82%83" AS xyz, abc FROM t11c
CREATE TABLE t12(a, b, c);
    CREATE VIEW v1 AS SELECT * FROM t12;
  
ALTER TABLE v1 RENAME TO v2;
  
SELECT * FROM v1; 
SELECT * FROM v1; 
ALTER TABLE v1 ADD COLUMN new_column;
  
CREATE TABLE /* hi */ t3102a(x);
    CREATE TABLE t3102b -- comment
    (y);
    CREATE INDEX t3102c ON t3102a(x);
    SELECT name FROM sqlite_master WHERE name GLOB 't3102*' ORDER BY 1;
  
ALTER TABLE t3102a RENAME TO t3102a_rename;
    SELECT name FROM sqlite_master WHERE name GLOB 't3102*' ORDER BY 1;
  
ALTER TABLE t3102b RENAME TO t3102b_rename;
    SELECT name FROM sqlite_master WHERE name GLOB 't3102*' ORDER BY 1;
  
CREATE TABLE t3651(a UNIQUE);
    INSERT INTO t3651 VALUES(5);
    ALTER TABLE t3651 ADD COLUMN b UNIQUE;
  
ALTER TABLE t3651 ADD COLUMN b PRIMARY KEY;
  
CREATE TABLE t16a(a TEXT, b REAL, c INT, PRIMARY KEY(a,b)) WITHOUT rowid;
  INSERT INTO t16a VALUES('abc',1.25,99);
  ALTER TABLE t16a ADD COLUMN d TEXT DEFAULT 'xyzzy';
  INSERT INTO t16a VALUES('cba',5.5,98,'fizzle');
  SELECT * FROM t16a ORDER BY a;

ALTER TABLE t16a RENAME TO t16a_rn;
  SELECT * FROM t16a_rn ORDER BY a;

CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
    CREATE VIRTUAL TABLE t2 USING rtree(id,x0,x1);
    INSERT INTO t1 VALUES(1,'apple'),(2,'fig'),(3,'pear');
    INSERT INTO t2 VALUES(1,1.0,2.0),(2,2.0,3.0),(3,1.5,3.5);
    CREATE TRIGGER r1 AFTER UPDATE ON t1 BEGIN
      DELETE FROM t2 WHERE id = OLD.a;
    END;
    ALTER TABLE t1 RENAME TO t3;
    UPDATE t3 SET b='peach' WHERE a=2;
    SELECT * FROM t2 ORDER BY 1;
  
CREATE TABLE t1(a,b,c);
  CREATE TABLE log(a INTEGER PRIMARY KEY,b,c);
  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    INSERT INTO logx(a,b,c) VALUES(new.a,new.b,new.c)
    ON CONFLICT(a) DO UPDATE SET c=excluded.c, b=new.b;
  END;
  ALTER TABLE log RENAME COLUMN a TO x;

CREATE TABLE t1(x);
  CREATE TABLE t2(c);
  CREATE TRIGGER r1 AFTER INSERT ON t2 BEGIN
    UPDATE t2 SET (c)=(
       EXISTS(SELECT 1 WHERE (WITH cte1(a) AS (SELECT 1 FROM t1 WHERE (SELECT 1 WHERE (WITH cte2(b) AS (VALUES(1))SELECT b FROM cte2)))SELECT a FROM cte1))
    );
  END;
  ALTER TABLE t2 RENAME TO t3;

SELECT name FROM sqlite_schema WHERE sql LIKE '%t2%';

SELECT name FROM sqlite_schema WHERE sql LIKE '%t3%' ORDER BY name;

