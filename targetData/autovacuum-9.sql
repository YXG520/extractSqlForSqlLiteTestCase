

    DROP TABLE t1;
    DROP TABLE t2;
    DROP TABLE t3;
    DROP TABLE t4;
    DROP TABLE t5;
    PRAGMA page_count;
  



    CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
    INSERT INTO t1 VALUES(NULL, randstr(50,50));
  
 INSERT INTO t1 SELECT NULL, randstr(50,50) FROM t1 

 INSERT INTO t1 SELECT NULL, randstr(50,50) FROM t1 

 DELETE FROM t1 WHERE rowid > (SELECT max(a)/2 FROM t1) 
