

  CREATE TABLE t1(a);
  CREATE TABLE t2(b,c);
  CREATE TABLE t4(b,c);
  INSERT INTO t2 VALUES(1,2),(1,3),(2,5);
  INSERT INTO t4 VALUES(1,2),(1,3),(2,5);

  CREATE VIEW v3 AS 
    WITH RECURSIVE t3(x,y,z) AS (
        SELECT b,c,NULL FROM t4
        UNION
        SELECT x,y,NULL FROM t3, t2
    )
  SELECT * FROM t3 AS xyz;



  SELECT * FROM v3



  ALTER TABLE t1 RENAME a TO a2; -- fails in v3



  ALTER TABLE t2 RENAME TO t5;



  SELECT sql FROM sqlite_schema WHERE name='v3'

