

    CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  
INSERT INTO t1(a,b) VALUES($i,$b)

    CREATE TABLE t2(x INTEGER PRIMARY KEY, y);
    INSERT INTO t2 SELECT * FROM t1;
    SELECT b FROM t1 WHERE a IN (12,34,56,78) ORDER BY a
  


    SELECT type, name FROM temp.sqlite_master
     ORDER BY name
  

DROP TABLE ia1


    SELECT b FROM t1 WHERE a IN ia3 ORDER BY a
  


    SELECT b FROM t1 WHERE a IN ia3 ORDER BY a
  


    SELECT count(b) FROM t1 WHERE a NOT IN ia3 ORDER BY a
  


    REPLACE INTO t1 SELECT * FROM t2;
    DELETE FROM t1 WHERE a NOT IN ia1;
    SELECT count(*) FROM t1;
  


    DELETE FROM t1 WHERE a IN ia1;
    SELECT count(*) FROM t1;
  