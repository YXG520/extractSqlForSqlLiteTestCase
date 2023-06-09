

    CREATE TABLE t7(a,b,c);
    INSERT INTO t7 SELECT y, x, x*y FROM t1;
    INSERT INTO t7 SELECT y, x, x*y+1000 FROM t1;
    CREATE INDEX t7i1 ON t7(a,b,c);
    SELECT min(a) FROM t7;
  


    SELECT max(a) FROM t7;
  


    SELECT max(a) FROM t7 WHERE a=5;
  


    SELECT min(b) FROM t7 WHERE a=5;
  


    SELECT max(b) FROM t7 WHERE a=5;
  


    SELECT min(b) FROM t7 WHERE a=4;
  


    SELECT max(b) FROM t7 WHERE a=4;
  


    SELECT min(c) FROM t7 WHERE a=4 AND b=10;
  


    SELECT max(c) FROM t7 WHERE a=4 AND b=10;
  


    SELECT min(rowid) FROM t7;
  


    SELECT max(rowid) FROM t7;
  


    SELECT min(rowid) FROM t7 WHERE a=3;
  


    SELECT max(rowid) FROM t7 WHERE a=3;
  


    SELECT min(rowid) FROM t7 WHERE a=3 AND b=5;
  


    SELECT max(rowid) FROM t7 WHERE a=3 AND b=5;
  


    SELECT min(rowid) FROM t7 WHERE a=3 AND b=5 AND c=1015;
  


    SELECT max(rowid) FROM t7 WHERE a=3 AND b=5 AND c=15;
  
