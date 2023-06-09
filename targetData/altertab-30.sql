

  CREATE TABLE t1(a,b,c,d,e,f);
  CREATE TABLE t2(a,b,c);
  CREATE INDEX t1abc ON t1(a,b,c+d+e);
  CREATE VIEW v1(x,y) AS 
    SELECT t1.b,t2.b FROM t1,t2 WHERE t1.a=t2.a 
      GROUP BY 1 HAVING t2.c NOT NULL LIMIT 10;
  CREATE TRIGGER r1 AFTER INSERT ON t1 WHEN 'no' NOT NULL BEGIN
    INSERT INTO t2(a,a,b,c) VALUES(new.b,new.a,new.c-7);
    WITH c1(x) AS (
      VALUES(0) 
        UNION ALL 
      SELECT current_time+x FROM c1 WHERE x 
        UNION ALL 
      SELECT 1+x FROM c1 WHERE x<1
    ), c2(x) AS (VALUES(0),(1))
    SELECT * FROM c1 AS x1, c2 AS x2, (
      SELECT x+1 FROM c1 WHERE x IS NOT TRUE 
        UNION ALL 
      SELECT 1+x FROM c1 WHERE 1<x
    ) AS x3, c2 x5;
  END;



  ALTER TABLE t1 RENAME TO t1x;



  SELECT sql FROM sqlite_schema ORDER BY rowid

