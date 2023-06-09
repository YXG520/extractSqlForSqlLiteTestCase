

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
  

CREATE TEMP TABLE t2 AS SELECT * FROM t1

      BEGIN;
      CREATE TABLE t3(a,b,c);
      INSERT INTO t1 SELECT * FROM t1;
      ROLLBACK;
    





      SELECT * FROM temp.t2;
    

DROP TABLE t2

