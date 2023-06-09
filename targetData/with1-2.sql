

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(1);
  INSERT INTO t1 VALUES(2);
  WITH tmp AS ( SELECT * FROM t1 ) SELECT x FROM tmp;



  WITH tmp(a) AS ( SELECT * FROM t1 ) SELECT a FROM tmp;



  SELECT * FROM (
    WITH tmp(a) AS ( SELECT * FROM t1 ) SELECT a FROM tmp
  );



  WITH tmp1(a) AS ( SELECT * FROM t1 ),
       tmp2(x) AS ( SELECT * FROM tmp1)
  SELECT * FROM tmp2;



  WITH tmp2(x) AS ( SELECT * FROM tmp1),
       tmp1(a) AS ( SELECT * FROM t1 )
  SELECT * FROM tmp2;

