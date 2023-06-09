

  CREATE TABLE t3(x, y);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<400)
   INSERT INTO t3(x, y) SELECT x, randomblob(1000) FROM c;
  PRAGMA quick_check;


ATTACH ':memory:' AS aux1

     SELECT x, y FROM main.t3 EXCEPT SELECT x, y FROM aux1.t3;
  
