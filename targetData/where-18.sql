

  CREATE TABLE t181(a);
  CREATE TABLE t182(b,c);
  INSERT INTO t181 VALUES(1);
  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY c IS NULL;



  SELECT DISTINCT a FROM t182 RIGHT JOIN t181 ON a=b ORDER BY c IS NULL;



  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY +c;



  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY c;



  SELECT DISTINCT a FROM t182 RIGHT JOIN t181 ON a=b ORDER BY c;



  INSERT INTO t181 VALUES(1),(1),(1),(1);
  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY +c;



  SELECT DISTINCT a FROM t182 RIGHT JOIN t181 ON a=b ORDER BY +c;



  INSERT INTO t181 VALUES(2);
  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY c IS NULL, +a;



  INSERT INTO t181 VALUES(2);
  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY +a, +c IS NULL;

