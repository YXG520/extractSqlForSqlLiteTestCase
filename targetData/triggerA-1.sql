

    CREATE TABLE t1(x INTEGER PRIMARY KEY, y TEXT UNIQUE);
    CREATE TABLE t2(a INTEGER PRIMARY KEY, b INTEGER UNIQUE, c TEXT);
  

       INSERT INTO t1 VALUES($i,$word);
       INSERT INTO t2 VALUES(20-$i,$j,$word);
    

    SELECT count(*) FROM t1 UNION ALL SELECT count(*) FROM t2;
  


     CREATE VIEW v1 AS SELECT y, x FROM t1;
     SELECT * FROM v1 ORDER BY 1;
  


     CREATE VIEW v2 AS SELECT x, y FROM t1 WHERE y GLOB '*e*';
     SELECT * FROM v2 ORDER BY 1;
  


     CREATE VIEW v3 AS
       SELECT CAST(x AS TEXT) AS c1 FROM t1 UNION SELECT y FROM t1;
     SELECT * FROM v3 ORDER BY c1;
  


     CREATE VIEW v4 AS
        SELECT CAST(x AS TEXT) AS c1 FROM t1
        UNION SELECT y FROM t1 WHERE x BETWEEN 3 and 5;
     SELECT * FROM v4 ORDER BY 1;
  


     CREATE VIEW v5 AS SELECT x, b FROM t1, t2 WHERE y=c;
     SELECT * FROM v5 ORDER BY x DESC;
  