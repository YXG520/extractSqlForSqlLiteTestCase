

  DROP TABLE t1;
  CREATE TABLE t1(
    a UNIQUE ON CONFLICT REPLACE, 
    b UNIQUE ON CONFLICT IGNORE,
    c INTEGER PRIMARY KEY ON CONFLICT FAIL
  );
  INSERT INTO t1(a,b,c) VALUES(1,2,3), (2,3,4);
  SELECT a,b,c FROM t1 ORDER BY a;



  INSERT INTO t1(a,b,c) VALUES(3,2,5);
  SELECT a,b,c FROM t1 ORDER BY a;


INSERT INTO t1(a,b,c) VALUES(4,5,6), (5,6,4);


  SELECT a,b,c FROM t1 ORDER BY a;

