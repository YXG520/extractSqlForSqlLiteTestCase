

    INSERT INTO t1(a,b,c) VALUES(1,'abcdef',5.5),(3,'cantaloupe',NULL);
    SELECT w, x, y, '|' FROM t1 ORDER BY a;
  


    SELECT w, x, y, '|' FROM t1 ORDER BY w;
  


    SELECT a FROM t1 WHERE w=30;
  


    SELECT a FROM t1 WHERE x='real';
  


    SELECT a FROM t1 WHERE y LIKE '%tal%' OR x='real' ORDER BY b;
  


    CREATE INDEX t1w ON t1(w);
    SELECT a FROM t1 WHERE w=10;
  


    CREATE INDEX t1x ON t1(x) WHERE w BETWEEN 20 AND 40;
    SELECT a FROM t1 WHERE x='null' AND w BETWEEN 20 AND 40;
  


    SELECT a FROM t1 WHERE x='real';
  


    VACUUM;
    PRAGMA integrity_check;
  


    UPDATE t1 SET a=a+100 WHERE w<20;
    SELECT a, w, '|' FROM t1 ORDER BY w;
  


    INSERT INTO t1 VALUES(4,'jambalaya','Chef John'),(15,87719874135,0);
    SELECT w, x, y, '|' FROM t1 ORDER BY w;
  
