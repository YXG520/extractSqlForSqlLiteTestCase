set using_proxy value

CREATE TABLE t1(a,b);
       BEGIN;
       INSERT INTO t1 VALUES(1,2);
    
COMMIT;
       SELECT * FROM t1;
    
