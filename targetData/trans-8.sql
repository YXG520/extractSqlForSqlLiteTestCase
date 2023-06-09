
SELECT md5sum(x,y,z) FROM t2

SELECT md5sum(type,name,tbl_name,rootpage,sql) FROM sqlite_master

    PRAGMA journal_mode=persist;
    PRAGMA default_cache_size=20;
    BEGIN;
    CREATE TABLE t3 AS SELECT * FROM t2;
    DELETE FROM t2;
  

SELECT md5sum(x,y,z) FROM t2

SELECT md5sum(type,name,tbl_name,rootpage,sql) FROM sqlite_master
