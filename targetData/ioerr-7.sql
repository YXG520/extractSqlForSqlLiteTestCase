

      PRAGMA synchronous = 0;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
      BEGIN;
      INSERT INTO t1 VALUES(3, 4);
    

      SELECT * FROM t1;
    
