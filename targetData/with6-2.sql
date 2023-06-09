

  CREATE TABLE t1(x);
  INSERT INTO t1(x) VALUES(4);
  CREATE VIEW t2(y) AS
    WITH c(z) AS (VALUES(4),(5),(6))
    SELECT c1.z+c2.z*100+t1.x*10000
      FROM t1,
           (SELECT z FROM c LIMIT 5) AS c1,
           (SELECT z FROM c LIMIT 5) AS c2;
  SELECT y FROM t2 ORDER BY y;



  DROP VIEW t2;
  CREATE VIEW t2(y) AS
    WITH c(z) AS NOT MATERIALIZED (VALUES(4),(5),(6))
    SELECT c1.z+c2.z*100+t1.x*10000
      FROM t1,
           (SELECT z FROM c LIMIT 5) AS c1,
           (SELECT z FROM c LIMIT 5) AS c2;
  SELECT y FROM t2 ORDER BY y;


S
Q


  DROP VIEW t2;
  CREATE VIEW t2(y) AS
    WITH c(z) AS MATERIALIZED (VALUES(4),(5),(6))
    SELECT c1.z+c2.z*100+t1.x*10000
      FROM t1,
           (SELECT z FROM c LIMIT 5) AS c1,
           (SELECT z FROM c LIMIT 5) AS c2;
  SELECT y FROM t2 ORDER BY y;

