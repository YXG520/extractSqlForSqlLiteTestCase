

  CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES (0);
  CREATE VIEW v1(c0, c1) AS 
    SELECT CAST(0.0 AS NUMERIC), COUNT(*) OVER () FROM t0;
  SELECT v1.c0 FROM v1, t0 WHERE v1.c0=0; 



  CREATE TABLE dual(dummy TEXT);
  INSERT INTO dual VALUES('X');
  SELECT CAST(4 AS NUMERIC);



  SELECT CAST(4.0 AS NUMERIC);



  SELECT CAST(4.5 AS NUMERIC);



  SELECT x, typeof(x) FROM (SELECT CAST(4 AS NUMERIC) AS x) JOIN dual;



  SELECT x, typeof(x) FROM dual CROSS JOIN (SELECT CAST(4 AS NUMERIC) AS x);



  SELECT x, typeof(x) FROM (SELECT CAST(4.0 AS NUMERIC) AS x) JOIN dual;



  SELECT x, typeof(x) FROM dual CROSS JOIN (SELECT CAST(4.0 AS NUMERIC) AS x);



  SELECT x, typeof(x) FROM (SELECT CAST(4.5 AS NUMERIC) AS x) JOIN dual;



  SELECT x, typeof(x) FROM dual CROSS JOIN (SELECT CAST(4.5 AS NUMERIC) AS x);
