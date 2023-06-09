

  WITH tmp2(x) AS ( SELECT * FROM tmp1 ),
       tmp1(a) AS ( SELECT * FROM tmp2 )
  SELECT * FROM tmp1;



  CREATE TABLE t2(x INTEGER);
  WITH tmp(a) AS (SELECT * FROM t1),
       tmp(a) AS (SELECT * FROM t1)
  SELECT * FROM tmp;



  CREATE TABLE t3(x);
  CREATE TABLE t4(x);

  INSERT INTO t3 VALUES('T3');
  INSERT INTO t4 VALUES('T4');

  WITH t3(a) AS (SELECT * FROM t4)
  SELECT * FROM t3;



  WITH tmp  AS ( SELECT * FROM t3 ),
       tmp2 AS ( WITH tmp AS ( SELECT * FROM t4 ) SELECT * FROM tmp )
  SELECT * FROM tmp2;



  WITH tmp  AS ( SELECT * FROM t3 ),
       tmp2 AS ( WITH xxxx AS ( SELECT * FROM t4 ) SELECT * FROM tmp )
  SELECT * FROM tmp2;



  WITH tmp AS ( SELECT * FROM t3 ),
  SELECT * FROM tmp;

