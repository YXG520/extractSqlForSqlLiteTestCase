

    BEGIN;
    CREATE TABLE t2(a);
    INSERT INTO t2 VALUES(1);
    INSERT INTO t2 VALUES(2);
    INSERT INTO t2 SELECT a+2 FROM t2;
    INSERT INTO t2 SELECT a+4 FROM t2;
    INSERT INTO t2 SELECT a+8 FROM t2;
    INSERT INTO t2 SELECT a+16 FROM t2;
    INSERT INTO t2 SELECT a+32 FROM t2;
    INSERT INTO t2 SELECT a+64 FROM t2;
    INSERT INTO t2 SELECT a+128 FROM t2;
    INSERT INTO t2 SELECT a+256 FROM t2;
    INSERT INTO t2 SELECT a+512 FROM t2;
    INSERT INTO t2 SELECT a+1024 FROM t2;
    COMMIT;
    SELECT count(*) FROM t2;
  


    SELECT count(*) FROM t2 WHERE a=rowid;
  


    UPDATE t2 SET rowid=rowid-1;
    SELECT count(*) FROM t2 WHERE a=rowid+1;
  


    UPDATE t2 SET rowid=rowid+10000;
    UPDATE t2 SET rowid=rowid-9999;
    SELECT count(*) FROM t2 WHERE a=rowid;
  


    BEGIN;
    INSERT INTO t2 SELECT a+2048 FROM t2;
    INSERT INTO t2 SELECT a+4096 FROM t2;
    INSERT INTO t2 SELECT a+8192 FROM t2;
    SELECT count(*) FROM t2 WHERE a=rowid;
    COMMIT;
  


    UPDATE t2 SET rowid=rowid-1;
    SELECT count(*) FROM t2 WHERE a=rowid+1;
  
