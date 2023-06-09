

    CREATE TABLE t2(a, b, c);
    CREATE TABLE t3(a, b, c);
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 UNION ALL SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 UNION SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 EXCEPT SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 INTERSECT SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 UNION ALL SELECT a FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 UNION SELECT a FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 EXCEPT SELECT a FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 INTERSECT SELECT a FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a FROM t3 UNION ALL SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a FROM t3 UNION SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a FROM t3 EXCEPT SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a FROM t3 INTERSECT SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 UNION ALL SELECT a, b FROM t2
    );
  


    SELECT * FROM t2 WHERE a IN (
      SELECT a, b FROM t3 UNION ALL SELECT a FROM t2
    );
  
