
 
    BEGIN; 
    CREATE TABLE t1(a, b, c); 
    INSERT INTO t1 VALUES(1, randstr(50,50), randstr(50,50)); 
    INSERT INTO t1 SELECT a+2, b||'-'||rowid, c||'-'||rowid FROM t1; 
    INSERT INTO t1 SELECT a+4, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT a+8, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT a+16, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT a+32, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT a+64, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 SELECT a+128, b||'-'||rowid, c||'-'||rowid FROM t1;
    INSERT INTO t1 VALUES(1, randstr(600,600), randstr(600,600));
    CREATE TABLE t2 AS SELECT * FROM t1;
    CREATE TABLE t3 AS SELECT * FROM t1;
    COMMIT;
    DROP TABLE t2;
  

    VACUUM;
  
pragma auto_vacuum
