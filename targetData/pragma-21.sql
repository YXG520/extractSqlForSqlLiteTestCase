
 
      PRAGMA page_size = 1024;
      PRAGMA auto_vacuum = 0;
      CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1, 1);
    
 INSERT INTO t1 SELECT a + (1 << $i), b + (1 << $i) FROM t1 
