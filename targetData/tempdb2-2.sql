

  PRAGMA cache_size = -100;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  WITH c(x) AS ( VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100 ) 
    INSERT INTO t1 SELECT x, int2str(x) FROM c;



  INSERT INTO t1 VALUES(10001, int2str(1001) || int2str(1001) || int2str(1001));



  SELECT b FROM t1 WHERE a = 10001;

