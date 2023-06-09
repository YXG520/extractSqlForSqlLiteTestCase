

      BEGIN;
      CREATE TABLE t3(x);
      INSERT INTO t3 SELECT x FROM t1 ORDER BY x LIMIT 10 OFFSET 1;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      INSERT INTO t3 SELECT x+(SELECT max(x) FROM t3) FROM t3;
      END;
      SELECT count(*) FROM t3;
    

      BEGIN;
      CREATE TABLE t3(x);
      INSERT INTO t3 SELECT x FROM t1 ORDER BY x LIMIT 10 OFFSET 1;
    
SELECT max(x) FROM t3
INSERT INTO t3 SELECT x+$max_x_t3 FROM t3;

      END;
      SELECT count(*) FROM t3;
    


    SELECT x FROM t3 LIMIT 2 OFFSET 10000
  


    CREATE TABLE t4 AS SELECT x,
       'abcdefghijklmnopqrstuvwyxz ABCDEFGHIJKLMNOPQRSTUVWYXZ' || x ||
       'abcdefghijklmnopqrstuvwyxz ABCDEFGHIJKLMNOPQRSTUVWYXZ' || x ||
       'abcdefghijklmnopqrstuvwyxz ABCDEFGHIJKLMNOPQRSTUVWYXZ' || x ||
       'abcdefghijklmnopqrstuvwyxz ABCDEFGHIJKLMNOPQRSTUVWYXZ' || x ||
       'abcdefghijklmnopqrstuvwyxz ABCDEFGHIJKLMNOPQRSTUVWYXZ' || x AS y
    FROM t3 LIMIT 1000;
    SELECT x FROM t4 ORDER BY y DESC LIMIT 1 OFFSET 999;
  
