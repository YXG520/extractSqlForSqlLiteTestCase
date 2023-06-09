

  CREATE TABLE t5(m CHAR(2));
  INSERT INTO t5 VALUES('ax');
  INSERT INTO t5 VALUES('bx');
  INSERT INTO t5 VALUES('cy');
  SELECT count(*), substr(m,2,1) AS m FROM t5 GROUP BY m ORDER BY 1, 2;



  SELECT count(*), substr(m,2,1) AS mx FROM t5 GROUP BY m ORDER BY 1, 2;



  SELECT count(*), substr(m,2,1) AS mx FROM t5 GROUP BY mx ORDER BY 1, 2;



  SELECT count(*), substr(m,2,1) AS mx FROM t5
   GROUP BY substr(m,2,1) ORDER BY 1, 2;

