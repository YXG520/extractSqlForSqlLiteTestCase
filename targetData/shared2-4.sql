

    CREATE TABLE t0(a, b);
    CREATE TABLE t1(a, b DEFAULT 'hello world');
  

 SELECT a, b FROM t0 
 INSERT INTO t1(a) VALUES(1) 

