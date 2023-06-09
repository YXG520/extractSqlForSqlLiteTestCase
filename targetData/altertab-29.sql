

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('a', 'b', 'c');

  CREATE VIEW v0 AS
    WITH p AS ( SELECT 1 FROM t1 ),
         g AS ( SELECT 1 FROM p, t1 )
    SELECT 1 FROM g;



  SELECT * FROM v0



  ALTER TABLE t1 RENAME TO t2



  SELECT sql FROM sqlite_schema WHERE name='v0'



  CREATE VIEW v2 AS
    WITH p AS ( SELECT 1 FROM t2 ),
         g AS ( SELECT 1 FROM (
           WITH i AS (SELECT 1 FROM p, t2)
           SELECT * FROM i
         )
    )
    SELECT 1 FROM g;



    SELECT * FROM v2;



  ALTER TABLE t2 RENAME TO t3;



  SELECT sql FROM sqlite_schema WHERE name='v2'

