return SQLITE_DENY
    
CREATE TABLE t1(a,b,c)
SELECT x;
  
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
CREATE TABLE t1(a,b,c)
SELECT name FROM sqlite_master
return SQLITE_DENY
      
CREATE TEMP TABLE t1(a,b,c)
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
CREATE TEMP TABLE t1(a,b,c)
SELECT name FROM sqlite_temp_master
return SQLITE_IGNORE
    
CREATE TABLE t1(a,b,c)
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
CREATE TABLE t1(a,b,c)
SELECT name FROM sqlite_master
return SQLITE_IGNORE
      
CREATE TEMP TABLE t1(a,b,c)
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
CREATE TEMP TABLE t1(a,b,c)
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
CREATE TEMP TABLE t1(a,b,c)
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
CREATE TABLE t2(a,b,c)
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
DROP TABLE t2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
DROP TABLE t2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
DROP TABLE t1
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
DROP TABLE t1
SELECT name FROM sqlite_temp_master
return SQLITE_DENY
    
INSERT INTO t2 VALUES(1,2,3)
SELECT * FROM t2
return SQLITE_IGNORE
    
INSERT INTO t2 VALUES(1,2,3)
SELECT * FROM t2
return SQLITE_IGNORE
    
INSERT INTO t2 VALUES(1,2,3)
SELECT * FROM t2
return SQLITE_DENY
    
SELECT * FROM t2
ATTACH DATABASE 'test.db' AS two
SELECT * FROM two.t2
DETACH DATABASE two
return SQLITE_IGNORE
    
SELECT * FROM t2
return SQLITE_IGNORE
    
SELECT * FROM t2 WHERE b=2
return SQLITE_IGNORE
    
SELECT * FROM t2 WHERE b=2
return SQLITE_IGNORE
    
SELECT * FROM t2 WHERE b IS NULL
return SQLITE_DENY
    
SELECT a,c FROM t2 WHERE b IS NULL
return SQLITE_DENY
    
UPDATE t2 SET a=11
SELECT * FROM t2
return SQLITE_DENY
    
UPDATE t2 SET b=22, c=33
SELECT * FROM t2
return SQLITE_IGNORE
    
UPDATE t2 SET b=22, c=33
SELECT * FROM t2
return SQLITE_DENY
    
DELETE FROM t2 WHERE a=11
SELECT * FROM t2
return SQLITE_IGNORE
    
DELETE FROM t2 WHERE a=11
SELECT * FROM t2
INSERT INTO t2 VALUES(11, 2, 33)
return SQLITE_DENY
    
SELECT * FROM t2
return SQLITE_IGNORE
    
SELECT * FROM t2
return SQLITE_OK
    
SELECT * FROM t2
INSERT INTO t2 VALUES(7, 8, 9);
SELECT * FROM t2
return SQLITE_DENY
    
DROP TABLE t2
SELECT name FROM sqlite_master
return SQLITE_DENY
    
DROP TABLE t2
SELECT name FROM sqlite_master
return SQLITE_DENY
      
DROP TABLE t1
SELECT name FROM sqlite_temp_master
return SQLITE_DENY
      
DROP TABLE t1
SELECT name FROM sqlite_temp_master
return SQLITE_IGNORE
    
DROP TABLE t2
SELECT name FROM sqlite_master
return SQLITE_IGNORE
    
DROP TABLE t2
SELECT name FROM sqlite_master
return SQLITE_IGNORE
      
DROP TABLE t1
SELECT name FROM sqlite_temp_master
return SQLITE_IGNORE
      
DROP TABLE t1
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4] 
      return SQLITE_DENY
    
CREATE VIEW v1 AS SELECT a+1,b+1 FROM t2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4] 
      return SQLITE_IGNORE
    
CREATE VIEW v1 AS SELECT a+1,b+1 FROM t2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4] 
        return SQLITE_DENY
      
CREATE TEMPORARY VIEW v1 AS SELECT a+1,b+1 FROM t2
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4] 
        return SQLITE_IGNORE
      
CREATE TEMPORARY VIEW v1 AS SELECT a+1,b+1 FROM t2
SELECT name FROM temp.sqlite_master
return SQLITE_DENY
    
CREATE VIEW v1 AS SELECT a+1,b+1 FROM t2
SELECT name FROM sqlite_master
return SQLITE_IGNORE
    
CREATE VIEW v1 AS SELECT a+1,b+1 FROM t2
SELECT name FROM sqlite_master
return SQLITE_DENY
      
CREATE TEMPORARY VIEW v1 AS SELECT a+1,b+1 FROM t2
SELECT name FROM sqlite_temp_master
return SQLITE_IGNORE
      
CREATE TEMPORARY VIEW v1 AS SELECT a+1,b+1 FROM t2
SELECT name FROM sqlite_temp_master
return SQLITE_DENY
    
CREATE VIEW v2 AS SELECT a+1,b+1 FROM t2;
    DROP VIEW v2
  
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
DROP VIEW v2
SELECT name FROM sqlite_master
return SQLITE_IGNORE
    
DROP VIEW v2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
DROP VIEW v2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
DROP VIEW v2
SELECT name FROM sqlite_master
return SQLITE_DENY
      
CREATE TEMP VIEW v1 AS SELECT a+1,b+1 FROM t1;
      DROP VIEW v1
    
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
DROP VIEW v1
SELECT name FROM sqlite_temp_master
return SQLITE_IGNORE
      
DROP VIEW v1
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
DROP VIEW v1
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_OK
      
DROP VIEW v1
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
CREATE TRIGGER r2 DELETE on t2 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM sqlite_master
return SQLITE_DENY
    
CREATE TRIGGER r2 DELETE on t2 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
CREATE TRIGGER r2 DELETE on t2 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM sqlite_master
return SQLITE_IGNORE
    
CREATE TRIGGER r2 DELETE on t2 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
CREATE TABLE tx(id);
    CREATE TRIGGER r2 AFTER INSERT ON t2 BEGIN
       INSERT INTO tx VALUES(NEW.rowid);
    END;
  
SELECT name FROM sqlite_master WHERE type='trigger'
  
INSERT INTO t2 VALUES(1,2,3);
  

SELECT * FROM tx;
  
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM temp.sqlite_master
return SQLITE_DENY
    
CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM temp.sqlite_master
return SQLITE_IGNORE
    
CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  
SELECT name FROM temp.sqlite_master
return SQLITE_DENY
    
DROP TRIGGER r2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
DROP TRIGGER r2
SELECT name FROM sqlite_master
return SQLITE_IGNORE
    
DROP TRIGGER r2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
DROP TRIGGER r2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
DROP TRIGGER r2
DROP TABLE tx;
    DELETE FROM t2 WHERE a=1 AND b=2 AND c=3;
    SELECT name FROM sqlite_master;
  
return SQLITE_DENY
    
DROP TRIGGER r1
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
DROP TRIGGER r1
SELECT name FROM sqlite_temp_master
return SQLITE_IGNORE
    
DROP TRIGGER r1
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
DROP TRIGGER r1
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
DROP TRIGGER r1
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
CREATE INDEX i2 ON t2(a)
SELECT name FROM sqlite_master
return SQLITE_DENY
    
CREATE INDEX i2 ON t2(a)
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
CREATE INDEX i2 ON t2(b)
SELECT name FROM sqlite_master
return SQLITE_IGNORE
    
CREATE INDEX i2 ON t2(b)
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
CREATE INDEX i2 ON t2(a)
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
CREATE INDEX i1 ON t1(a)
SELECT name FROM sqlite_temp_master
return SQLITE_DENY
      
CREATE INDEX i1 ON t1(b)
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
CREATE INDEX i1 ON t1(b)
SELECT name FROM sqlite_temp_master
return SQLITE_IGNORE
      
CREATE INDEX i1 ON t1(c)
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_OK
      
CREATE INDEX i1 ON t1(a)
SELECT name FROM temp.sqlite_master
return SQLITE_DENY
    
DROP INDEX i2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
DROP INDEX i2
DROP INDEX di205.t1x;

SELECT name FROM sqlite_master
return SQLITE_IGNORE
    
DROP INDEX i2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
DROP INDEX i2
SELECT name FROM sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
DROP INDEX i2
SELECT name FROM sqlite_master
return SQLITE_DENY
      
DROP INDEX i1
SELECT name FROM sqlite_temp_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
DROP INDEX i1
SELECT name FROM sqlite_temp_master
return SQLITE_IGNORE
      
DROP INDEX i1
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
DROP INDEX i1
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_OK
      
DROP INDEX i1
SELECT name FROM temp.sqlite_master
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
PRAGMA full_column_names=on
SELECT a FROM t2
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
PRAGMA full_column_names=on
SELECT a FROM t2
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
PRAGMA full_column_names=on
SELECT a FROM t2
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
PRAGMA full_column_names=OFF
SELECT a FROM t2
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
BEGIN
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
BEGIN; INSERT INTO t2 VALUES(44,55,66); COMMIT
SELECT * FROM t2
ROLLBACK
END TRANSACTION
ROLLBACK
SELECT * FROM t2
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      
ATTACH DATABASE ':memory:' AS test1
    
DETACH DATABASE test1
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
ATTACH DATABASE ':memory:' AS test1;
    
PRAGMA database_list
DETACH DATABASE test1
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
ATTACH DATABASE ':memory:' AS test1;
    
PRAGMA database_list
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_OK
      
ATTACH DATABASE ':memory:' AS test1
DETACH DATABASE test1;
    
PRAGMA database_list
ATTACH DATABASE ':memory:' AS test1
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
DETACH DATABASE test1;
    
PRAGMA database_list
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
          return SQLITE_DENY
        
DETACH DATABASE test1;
      
PRAGMA database_list
DETACH DATABASE test1
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
            return SQLITE_OK
          
ALTER TABLE t1 RENAME TO t1x
        
SELECT name FROM sqlite_temp_master WHERE type='table'
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
            return SQLITE_IGNORE
          
ALTER TABLE t1x RENAME TO t1
        
SELECT name FROM temp.sqlite_master WHERE type='table'
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
            return SQLITE_DENY
          
ALTER TABLE t1x RENAME TO t1
        
SELECT name FROM sqlite_temp_master WHERE type='table'
ALTER TABLE t1x RENAME TO t1
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_OK
    
ALTER TABLE t2 RENAME TO t2x
  
SELECT name FROM sqlite_master WHERE type='table'
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_IGNORE
    
ALTER TABLE t2x RENAME TO t2
  
SELECT name FROM sqlite_master WHERE type='table'
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
      return SQLITE_DENY
    
ALTER TABLE t2x RENAME TO t2
  
SELECT name FROM sqlite_master WHERE type='table'
ALTER TABLE t2x RENAME TO t2
set ::authargs [concat $::authargs [lrange $args 0 3]]
  
CREATE TABLE t3(a PRIMARY KEY, b, c);
    CREATE INDEX t3_idx1 ON t3(c COLLATE BINARY);
    CREATE INDEX t3_idx2 ON t3(b COLLATE NOCASE);
  
REINDEX t3_idx1;
  
REINDEX BINARY;
  

REINDEX NOCASE;
  
REINDEX t3;
  

DROP TABLE t3;
  
CREATE TEMP TABLE t3(a PRIMARY KEY, b, c);
      CREATE INDEX t3_idx1 ON t3(c COLLATE BINARY);
      CREATE INDEX t3_idx2 ON t3(b COLLATE NOCASE);
    
REINDEX temp.t3_idx1;
    
REINDEX BINARY;
    

REINDEX NOCASE;
    
REINDEX temp.t3;
    

set ::authargs [concat $::authargs [lrange $args 0 3]]
      return SQLITE_DENY
    
REINDEX temp.t3;
    
DROP TABLE t3;
    
set ::authargs [concat $::authargs [lrange $args 0 3]]
    
CREATE TABLE t4(a,b,c);
      CREATE INDEX t4i1 ON t4(a);
      CREATE INDEX t4i2 ON t4(b,a,c);
      INSERT INTO t4 VALUES(1,2,3);
      ANALYZE;
    
SELECT count(*) FROM sqlite_stat1;
    
set ::authargs [concat $::authargs $args]
      return SQLITE_DENY
    
ANALYZE;
    
SELECT count(*) FROM sqlite_stat1;
    
CREATE TABLE t5(x)
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_OK
      
ALTER TABLE t5 ADD COLUMN new_col_1;
    
SELECT sql FROM sqlite_master WHERE name='t5'
ALTER TABLE t5 DROP COLUMN new_col_1;
  
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
ALTER TABLE t5 ADD COLUMN new_col_2;
    
SELECT sql FROM sqlite_master WHERE name='t5'
ALTER TABLE t5 DROP COLUMN new_col_1;
     SELECT 1 FROM sqlite_schema WHERE name='t5' AND sql LIKE '%new_col_1%';
  
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
ALTER TABLE t5 ADD COLUMN new_col_3
    
SELECT sql FROM temp.sqlite_master WHERE type='t5'
ALTER TABLE t5 DROP COLUMN new_col_1;
  
SELECT 1 FROM sqlite_schema WHERE name='t5' AND sql LIKE '%new_col_1%';
  
DROP TABLE t5
return SQLITE_DENY
      
WITH
       auth1311(x,y) AS (SELECT a+b, b-a FROM t1)
    SELECT * FROM auth1311 ORDER BY x;
  
WITH RECURSIVE
       auth1312(x,y) AS (SELECT a+b, b-a FROM t1)
    SELECT x, y FROM auth1312 ORDER BY x;
  
WITH RECURSIVE
       auth1313(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM auth1313 WHERE x<5)
    SELECT * FROM t1;
  
WITH RECURSIVE
       auth1314(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM auth1314 WHERE x<5)
    SELECT * FROM t1 LEFT JOIN auth1314;
  
puts "TEMP: $sql;"
puts "MAIN: $sql;"
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_OK
      
ALTER TABLE t1 RENAME COLUMN b TO bcdefg;
    
SELECT name FROM pragma_table_info('t1') ORDER BY cid;
  
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_IGNORE
      
ALTER TABLE t1 RENAME COLUMN bcdefg TO b;
    
SELECT name FROM pragma_table_info('t1') ORDER BY cid;
  
set ::authargs [list $arg1 $arg2 $arg3 $arg4]
        return SQLITE_DENY
      
ALTER TABLE t1 RENAME COLUMN bcdefg TO b;
    
SELECT name FROM pragma_table_info('t1') ORDER BY cid;
  
return SQLITE_DENY
      
SELECT * FROM pragma_table_list WHERE name='xyzzy';
return SQLITE_DENY
    
CREATE TABLE t3(x INTEGER PRIMARY KEY, y, z)
SELECT * FROM t3
SELECT y,z FROM t3
SELECT ROWID,y,z FROM t3
SELECT OID,y,z FROM t3
return SQLITE_IGNORE
    
INSERT INTO t3 VALUES(44,55,66)
SELECT * FROM t3
SELECT rowid,y,z FROM t3
return SQLITE_IGNORE
    
SELECT * FROM t3
SELECT ROWID,y,z FROM t3
return SQLITE_IGNORE
    
SELECT ROWID,b,c FROM t2
return bogus
    
SELECT ROWID,b,c FROM t2
return bogus
    
SELECT ROWID,b,c FROM t2
return SQLITE_IGNORE
    
SELECT * FROM t2, t3
return SQLITE_IGNORE
    
SELECT * FROM t2, t3
CREATE TABLE tx(a1,a2,b1,b2,c1,c2);
      CREATE TRIGGER r1 AFTER UPDATE ON t2 FOR EACH ROW BEGIN
        INSERT INTO tx VALUES(OLD.a,NEW.a,OLD.b,NEW.b,OLD.c,NEW.c);
      END;
      UPDATE t2 SET a=a+1;
      SELECT * FROM tx;
    
return SQLITE_IGNORE
      
DELETE FROM tx;
      UPDATE t2 SET a=a+100;
      SELECT * FROM tx;
    
UPDATE t2 SET a=a+1;
  



CREATE VIEW v1 AS SELECT a+b AS x FROM t2;
    CREATE TABLE v1chng(x1,x2);
    CREATE TRIGGER r2 INSTEAD OF UPDATE ON v1 BEGIN
      INSERT INTO v1chng VALUES(OLD.x,NEW.x);
    END;
    SELECT * FROM v1;
  
UPDATE v1 SET x=1 WHERE x=117
  




CREATE TRIGGER r3 INSTEAD OF DELETE ON v1 BEGIN
      INSERT INTO v1chng VALUES(OLD.x,NULL);
    END;
    SELECT * FROM v1;
  
DELETE FROM v1 WHERE x=117
  




SELECT count(a) AS cnt FROM t4 ORDER BY cnt
  
DROP TABLE tx;
    
DROP TABLE v1chng;
      
SELECT name FROM (
        SELECT * FROM sqlite_master UNION ALL SELECT * FROM temp.sqlite_master)
      WHERE type='table'
      ORDER BY name
    
stat4
CREATE TABLE t5 ( x );
      CREATE TRIGGER t5_tr1 AFTER INSERT ON t5 BEGIN 
        UPDATE t5 SET x = 1 WHERE NEW.x = 0;
      END;
    
INSERT INTO t5 (x) values(0) 

SELECT * FROM t5 
CREATE TABLE t6(a,b,c,d,e,f,g,h);
    INSERT INTO t6 VALUES(1,2,3,4,5,6,7,8);
  
UPDATE t6 SET rowID=rowID+100


SELECT rowid, * FROM t6
CREATE TABLE t7(a, b, c);
  CREATE VIEW v7 AS SELECT * FROM t7;

SELECT a, c FROM v7




SELECT a, c FROM t7



SELECT a, c FROM t7 AS v7



SELECT count(*) FROM t7



SELECT t6.a FROM t6, t7



return "SQLITE_DENY" 
SELECT count(*) FROM t7




