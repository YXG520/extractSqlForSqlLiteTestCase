

    BEGIN;
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
    INSERT INTO t1 VALUES(NULL,randstr(10,100),randstr(5,50));
    INSERT INTO t1 VALUES(123456,randstr(10,100),randstr(5,50));
    INSERT INTO t1 SELECT NULL, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT NULL, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT NULL, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT NULL, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT NULL, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT NULL, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT NULL, b||'-'||rowid, c||'-'||rowid FROM t1;
    CREATE INDEX i1 ON t1(b,c);
    CREATE UNIQUE INDEX i2 ON t1(c,a);
    CREATE TABLE t2 AS SELECT * FROM t1;
    COMMIT;
    DROP TABLE t2;
  

SELECT substr(name,1,3) FROM sqlite_master


    VACUUM;
  



    BEGIN;
    CREATE TABLE t2 AS SELECT * FROM t1;
    CREATE TABLE t3 AS SELECT * FROM t1;
    CREATE VIEW v1 AS SELECT b, c FROM t3;
    CREATE TRIGGER r1 AFTER DELETE ON t2 BEGIN SELECT 1; END;
    COMMIT;
    DROP TABLE t2;
  
-- CREATE VIEW
-- CREATE TRIGGER


    VACUUM;
  

