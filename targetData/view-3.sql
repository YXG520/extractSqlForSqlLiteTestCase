

    SELECT * FROM v1 LIMIT 1
  


    SELECT * FROM v2 LIMIT 1
  


    DROP VIEW v1;
    CREATE VIEW v1 AS SELECT a AS 'xyz', b+c AS 'pqr', c-b FROM t1;
    SELECT * FROM v1 LIMIT 1
  


    CREATE VIEW v1b AS SELECT t1.a, b+c, t1.c FROM t1;
    SELECT * FROM v1b LIMIT 1
  


    CREATE VIEW v1c(x,y,z) AS SELECT a, b+c, c-b FROM t1;
    SELECT * FROM v1c LIMIT 1;
  


  CREATE VIEW v1err(x,y DESC,z) AS SELECT a, b+c, c-b FROM t1;



  DROP VIEW IF EXISTS v1err;
  CREATE VIEW v1err(x,y) AS SELECT a, b+c, c-b FROM t1;
  SELECT * FROM v1err;



  DROP VIEW IF EXISTS v1err;
  CREATE VIEW v1err(w,x,y,z) AS SELECT a, b+c, c-b FROM t1;
  SELECT * FROM v1err;



    CREATE VIEW v3 AS SELECT a FROM t1 UNION SELECT b FROM t1 ORDER BY b;
    SELECT * FROM v3 LIMIT 4;
  


    CREATE VIEW v4 AS 
      SELECT a, b FROM t1 
      UNION
      SELECT b AS 'x', a AS 'y' FROM t1
      ORDER BY x, y;
    SELECT b FROM v4 ORDER BY b LIMIT 4;
  
