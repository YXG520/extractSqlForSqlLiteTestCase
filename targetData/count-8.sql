

  CREATE TABLE t7(a INT,b TEXT,c BLOB,d REAL);
  CREATE TABLE t8(a INT,b TEXT,c BLOB,d REAL);
  CREATE INDEX t8a ON t8(a);



  SELECT * FROM t8 WHERE (a, b) IN (
      SELECT count(t8.b), count(*) FROM t7 AS ra0 ORDER BY count(*)
  ) AND t8.b=0; 

