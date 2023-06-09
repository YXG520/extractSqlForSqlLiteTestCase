

  CREATE TABLE t1(__hidden__a, b);
  INSERT INTO t1 VALUES('1');
  INSERT INTO t1(__hidden__a, b) VALUES('x', 'y');



  SELECT * FROM t1;



  SELECT __hidden__a, * FROM t1;

