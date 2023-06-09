

  CREATE TABLE t1(a);
  CREATE TABLE t2(b);

  INSERT INTO t1 VALUES('x');
  INSERT INTO t2 VALUES(1);



  SELECT ( 
    SELECT t2.b FROM (SELECT t2.b AS c FROM t1) GROUP BY 1 HAVING t2.b
  )
  FROM t2 GROUP BY 'constant_string';



  SELECT ( 
    SELECT c FROM (SELECT t2.b AS c FROM t1) GROUP BY c HAVING t2.b
  )
  FROM t2 GROUP BY 'constant_string';



  UPDATE t2 SET b=0



  SELECT ( 
    SELECT t2.b FROM (SELECT t2.b AS c FROM t1) GROUP BY 1 HAVING t2.b
  )
  FROM t2 GROUP BY 'constant_string';



  SELECT ( 
    SELECT c FROM (SELECT t2.b AS c FROM t1) GROUP BY c HAVING t2.b
  )
  FROM t2 GROUP BY 'constant_string';

