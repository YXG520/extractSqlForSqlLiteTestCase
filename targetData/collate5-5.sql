

  CREATE TABLE t1(a, b COLLATE nocase);
  CREATE TABLE t2(c, d);
  INSERT INTO t2 VALUES(1, 'bbb');



  SELECT * FROM (
      SELECT a, b FROM t1 UNION ALL SELECT c, d FROM t2
  ) WHERE b='BbB';



  CREATE TABLE t1(a,b,c COLLATE NOCASE);
  INSERT INTO t1 VALUES(NULL,'C','c');
  CREATE VIEW v2 AS
    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,b FROM t1
    WHERE 'eT"3qRkL+oJMJjQ9z0'>=b
    ORDER BY a,b,c;



  SELECT * FROM v2;



  SELECT * FROM v2 WHERE c='c';

