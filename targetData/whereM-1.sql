

  CREATE TABLE t1(a, b INTEGER, c TEXT, d REAL, e BLOB);
  INSERT INTO t1 VALUES(10.0, 10.0, 10.0, 10.0, 10.0);
  SELECT * FROM t1;



  SELECT a=10, a = '10.0', a LIKE '10.0' FROM t1;



  SELECT count(*) FROM t1 WHERE a=10 AND a = '10.0'



  SELECT count(*) FROM t1 WHERE a=10 AND a LIKE '10.0'



  SELECT count(*) FROM t1 WHERE a='10.0' AND a LIKE '10.0'



  SELECT b=10, b = '10.0', b LIKE '10.0', b LIKE '10' FROM t1;



  SELECT count(*) FROM t1 WHERE b=10 AND b = '10.0'



  SELECT count(*) FROM t1 WHERE b=10 AND b LIKE '10.0'



  SELECT count(*) FROM t1 WHERE b='10.0' AND b LIKE '10.0'



  SELECT count(*) FROM t1 WHERE b=10 AND b LIKE '10'



  SELECT count(*) FROM t1 WHERE b='10.0' AND b LIKE '10'



  SELECT c=10, c = 10.0, c = '10.0', c LIKE '10.0' FROM t1;



  SELECT count(*) FROM t1 WHERE c=10 AND c = '10.0'



  SELECT count(*) FROM t1 WHERE c=10 AND c LIKE '10.0'



  SELECT count(*) FROM t1 WHERE c='10.0' AND c LIKE '10.0'



  SELECT count(*) FROM t1 WHERE c=10.0 AND c = '10.0'



  SELECT count(*) FROM t1 WHERE c=10.0 AND c LIKE '10.0'



  SELECT d=10, d = 10.0, d = '10.0', d LIKE '10.0', d LIKE '10' FROM t1;



  SELECT count(*) FROM t1 WHERE d=10 AND d = '10.0'



  SELECT count(*) FROM t1 WHERE d=10 AND d LIKE '10.0'



  SELECT count(*) FROM t1 WHERE d='10.0' AND d LIKE '10.0'



  SELECT count(*) FROM t1 WHERE d='10' AND d LIKE '10.0'



  SELECT e=10, e = '10.0', e LIKE '10.0', e LIKE '10' FROM t1;



  SELECT count(*) FROM t1 WHERE e=10 AND e = '10.0'



  SELECT count(*) FROM t1 WHERE e=10 AND e LIKE '10.0'



  SELECT count(*) FROM t1 WHERE e='10.0' AND e LIKE '10.0'



  SELECT count(*) FROM t1 WHERE e=10.0 AND e LIKE '10.0'

