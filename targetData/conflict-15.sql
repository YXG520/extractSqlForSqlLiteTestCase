

  CREATE TABLE t1(
    x PRIMARY KEY,
    UNIQUE(x,x),
    UNIQUE(x,x) ON CONFLICT REPLACE
  );
  INSERT INTO t1(x) VALUES(1);
  SELECT * FROM t1;



  INSERT INTO t1(x) VALUES(1);



  SELECT * FROM t1;

