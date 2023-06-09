
 SELECT 
    1 IN (NULL, 1, 2),     -- The value 1 is a member of the set, return true.
    3 IN (NULL, 1, 2),     -- Ambiguous, return NULL.
    1 NOT IN (NULL, 1, 2), -- The value 1 is a member of the set, return false.
    3 NOT IN (NULL, 1, 2)  -- Ambiguous, return NULL.
  

 
    CREATE TABLE t7(a, b, c NOT NULL);
    INSERT INTO t7 VALUES(1,    1, 1);
    INSERT INTO t7 VALUES(2,    2, 2);
    INSERT INTO t7 VALUES(3,    3, 3);
    INSERT INTO t7 VALUES(NULL, 4, 4);
    INSERT INTO t7 VALUES(NULL, 5, 5);
  

 SELECT 2 IN (SELECT a FROM t7) 

 SELECT 6 IN (SELECT a FROM t7) 

 SELECT 2 IN (SELECT b FROM t7) 

 SELECT 6 IN (SELECT b FROM t7) 

 SELECT 2 IN (SELECT c FROM t7) 

 SELECT 6 IN (SELECT c FROM t7) 


    SELECT
      2 NOT IN (SELECT a FROM t7),
      6 NOT IN (SELECT a FROM t7),
      2 NOT IN (SELECT b FROM t7),
      6 NOT IN (SELECT b FROM t7),
      2 NOT IN (SELECT c FROM t7),
      6 NOT IN (SELECT c FROM t7)
  

 
    SELECT b IN (
      SELECT inside.a 
      FROM t7 AS inside 
      WHERE inside.b BETWEEN outside.b+1 AND outside.b+2
    )
    FROM t7 AS outside ORDER BY b;
  


    SELECT b NOT IN (
      SELECT inside.a 
      FROM t7 AS inside 
      WHERE inside.b BETWEEN outside.b+1 AND outside.b+2
    )
    FROM t7 AS outside ORDER BY b;
  


    CREATE INDEX i1 ON t7(a);
    CREATE INDEX i2 ON t7(b);
    CREATE INDEX i3 ON t7(c);
  

    SELECT
      2 IN (SELECT a FROM t7),
      6 IN (SELECT a FROM t7),
      2 IN (SELECT b FROM t7),
      6 IN (SELECT b FROM t7),
      2 IN (SELECT c FROM t7),
      6 IN (SELECT c FROM t7)
  


    SELECT
      2 NOT IN (SELECT a FROM t7),
      6 NOT IN (SELECT a FROM t7),
      2 NOT IN (SELECT b FROM t7),
      6 NOT IN (SELECT b FROM t7),
      2 NOT IN (SELECT c FROM t7),
      6 NOT IN (SELECT c FROM t7)
  


    BEGIN TRANSACTION;
    CREATE TABLE a(id INTEGER);
    INSERT INTO a VALUES(1);
    INSERT INTO a VALUES(2);
    INSERT INTO a VALUES(3);
    CREATE TABLE b(id INTEGER);
    INSERT INTO b VALUES(NULL);
    INSERT INTO b VALUES(3);
    INSERT INTO b VALUES(4);
    INSERT INTO b VALUES(5);
    COMMIT;
    SELECT * FROM a WHERE id NOT IN (SELECT id FROM b);
  


    CREATE INDEX i5 ON b(id);
    SELECT * FROM a WHERE id NOT IN (SELECT id FROM b);
  


    SELECT 0 WHERE (SELECT 0,0) OR (0 IN (1,2));
  

