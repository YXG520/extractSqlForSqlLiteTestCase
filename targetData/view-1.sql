

    CREATE TABLE t1(a,b,c);
    INSERT INTO t1 VALUES(1,2,3);
    INSERT INTO t1 VALUES(4,5,6);
    INSERT INTO t1 VALUES(7,8,9);
    SELECT * FROM t1;
  


    BEGIN;
    CREATE VIEW IF NOT EXISTS v1 AS SELECT a,b FROM t1;
    SELECT * FROM v1 ORDER BY a;
  


    SELECT * FROM v1 ORDER BY a;
  


  CREATE TEMP VIEW v1temp AS SELECT a, b FROM t1;
  SELECT * FROM v1temp ORDER BY a;



    SELECT * FROM v1 ORDER BY a;
    SELECT * FROM v1temp ORDER BY a;
  


    SELECT name, type FROM pragma_table_list('v1');
  


    ROLLBACK;
    SELECT * FROM v1 ORDER BY a;
  


    CREATE VIEW v1 AS SELECT a,b FROM t1;
    SELECT * FROM v1 ORDER BY a;
  


    SELECT * FROM v1 ORDER BY a;
  


    DROP VIEW IF EXISTS v1;
    SELECT * FROM v1 ORDER BY a;
  


    CREATE VIEW v1 AS SELECT a,b FROM t1;
    SELECT * FROM v1 ORDER BY a;
  


    DROP TABLE t1;
    SELECT * FROM v1 ORDER BY a;
  


    CREATE TABLE t1(x,a,b,c);
    INSERT INTO t1 VALUES(1,2,3,4);
    INSERT INTO t1 VALUES(4,5,6,7);
    INSERT INTO t1 VALUES(7,8,9,10);
    SELECT * FROM v1 ORDER BY a;
  


    SELECT * FROM v1 ORDER BY a;
  


  CREATE TABLE t9(x INTEGER);
  CREATE VIEW v9a AS SELECT x FROM t9;
  CREATE VIEW v9b AS SELECT * FROM t9;
  CREATE VIEW v9c(x) AS SELECT x FROM t9;
  CREATE VIEW v9d(x) AS SELECT * FROM t9;



  PRAGMA table_info(v9a);



  PRAGMA table_info(v9b);



  PRAGMA table_info(v9c);



  PRAGMA table_info(v9d);

