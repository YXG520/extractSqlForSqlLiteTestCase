

  CREATE TABLE t0(a INT, b TEXT);

  INSERT INTO t0 VALUES(1,'one');

  CREATE VIEW t1      AS SELECT a, b FROM t0 UNION ALL SELECT 2, 2;
  CREATE VIEW t2(a,b) AS SELECT a, b FROM t0 UNION ALL SELECT 2, 2;



    PRAGMA table_info = t1;
  


    PRAGMA table_info = t2;
  
