

    CREATE INDEX t1i1 ON t1(a);
    ANALYZE main.t1;
    SELECT * FROM sqlite_stat1 ORDER BY idx;
  


    CREATE INDEX t1i2 ON t1(b);
    ANALYZE t1;
    SELECT * FROM sqlite_stat1 ORDER BY idx;
  


    CREATE INDEX t1i3 ON t1(a,b);
    ANALYZE main;
    SELECT * FROM sqlite_stat1 ORDER BY idx;
  
