

  CREATE TABLE t71(x1 INTEGER PRIMARY KEY, y1);
  CREATE TABLE t72(x2 INTEGER PRIMARY KEY, y2);
  CREATE TABLE t73(x3, y3);
  CREATE TABLE t74(x4, y4);
  INSERT INTO t71 VALUES(123,234);
  INSERT INTO t72 VALUES(234,345);
  INSERT INTO t73 VALUES(123,234);
  INSERT INTO t74 VALUES(234,345);
  INSERT INTO t74 VALUES(234,678);



    SELECT x1 FROM t71 LEFT JOIN t72 ON x2=y1;
  


    SELECT x1 FROM t71 LEFT JOIN t72 ON x2=y1 WHERE y2 IS NULL;
  


    SELECT x1 FROM t71 LEFT JOIN t72 ON x2=y1 WHERE y2 IS NOT NULL;
  


    SELECT x1 FROM t71 LEFT JOIN t72 ON x2=y1 AND y2 IS NULL;
  


    SELECT x1 FROM t71 LEFT JOIN t72 ON x2=y1 AND y2 IS NOT NULL;
  


    SELECT x3 FROM t73 LEFT JOIN t72 ON x2=y3;
  


    SELECT DISTINCT x3 FROM t73 LEFT JOIN t72 ON x2=y3;
  


    SELECT x3 FROM t73 LEFT JOIN t74 ON x4=y3;
  


    SELECT DISTINCT x3 FROM t73 LEFT JOIN t74 ON x4=y3;
  
