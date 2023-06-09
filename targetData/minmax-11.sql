

    CREATE INDEX t1i2 ON t1(y,x);
    SELECT min(x) FROM t1 WHERE y=5;
  


    SELECT max(x) FROM t1 WHERE y=5;
  


    SELECT min(x) FROM t1 WHERE y=6;
  


    SELECT max(x) FROM t1 WHERE y=6;
  


    SELECT min(x) FROM t1 WHERE y=1;
  


    SELECT max(x) FROM t1 WHERE y=1;
  


    SELECT min(x) FROM t1 WHERE y=0;
  


    SELECT max(x) FROM t1 WHERE y=0;
  


    SELECT min(x) FROM t1 WHERE y=5 AND x>=17.5;
  


    SELECT max(x) FROM t1 WHERE y=5 AND x>=17.5;
  
