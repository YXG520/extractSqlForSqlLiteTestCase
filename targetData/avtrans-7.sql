
BEGIN
INSERT INTO t2 VALUES($r1,$r2,$r3)
COMMIT
SELECT md5sum(x,y,z) FROM t2
SELECT md5sum(type,name,tbl_name,rootpage,sql) FROM sqlite_master
SELECT count(*) FROM t2

SELECT md5sum(x,y,z) FROM t2

SELECT md5sum(type,name,tbl_name,rootpage,sql) FROM sqlite_master


    BEGIN;
    DELETE FROM t2;
    ROLLBACK;
    SELECT md5sum(x,y,z) FROM t2;
  


    BEGIN;
    INSERT INTO t2 SELECT * FROM t2;
    ROLLBACK;
    SELECT md5sum(x,y,z) FROM t2;
  


    BEGIN;
    DELETE FROM t2;
    ROLLBACK;
    SELECT md5sum(x,y,z) FROM t2;
  


    BEGIN;
    INSERT INTO t2 SELECT * FROM t2;
    ROLLBACK;
    SELECT md5sum(x,y,z) FROM t2;
  


    BEGIN;
    CREATE TABLE t3 AS SELECT * FROM t2;
    INSERT INTO t2 SELECT * FROM t3;
    ROLLBACK;
    SELECT md5sum(x,y,z) FROM t2;
  

SELECT md5sum(type,name,tbl_name,rootpage,sql) FROM sqlite_master


      BEGIN;
      CREATE TEMP TABLE t3 AS SELECT * FROM t2;
      INSERT INTO t2 SELECT * FROM t3;
      ROLLBACK;
      SELECT md5sum(x,y,z) FROM t2;
    

SELECT md5sum(type,name,tbl_name,rootpage,sql) FROM sqlite_master


      BEGIN;
      CREATE TEMP TABLE t3 AS SELECT * FROM t2;
      INSERT INTO t2 SELECT * FROM t3;
      DROP INDEX i2x;
      DROP INDEX i2y;
      CREATE INDEX i3a ON t3(x);
      ROLLBACK;
      SELECT md5sum(x,y,z) FROM t2;
    

SELECT md5sum(type,name,tbl_name,rootpage,sql) FROM sqlite_master


      BEGIN;
      DROP TABLE t2;
      ROLLBACK;
      SELECT md5sum(x,y,z) FROM t2;
    

SELECT md5sum(type,name,tbl_name,rootpage,sql) FROM sqlite_master

    PRAGMA default_cache_size=20;
    BEGIN;
    CREATE TABLE t3 AS SELECT * FROM t2;
    DELETE FROM t2;
  
