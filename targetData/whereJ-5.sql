

    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(a,b,c,d,e,f,g,h);
    CREATE INDEX t1abc ON t1(a,b,c);
    CREATE INDEX t1abe ON t1(a,b,e);
    CREATE INDEX t1abf ON t1(a,b,f);
    ANALYZE;
    DROP TABLE IF EXISTS sqlite_stat4;
    DROP TABLE IF EXISTS sqlite_stat3;
    DELETE FROM sqlite_stat1;
    INSERT INTO sqlite_stat1(tbl,idx,stat)
      VALUES('t1','t1abc','2000000 8000 1600 800'),
            ('t1','t1abe','2000000 8000 1600 150'),
            ('t1','t1abf','2000000 8000 1600 150');
    ANALYZE sqlite_master;
  
    EXPLAIN QUERY PLAN
    SELECT * FROM t1
     WHERE (a=1 OR a=2)
       AND (b=3 OR b=4)
       AND (d>=5 AND d<=5)
       AND ((e>=7 AND e<=7) OR (f>=8 AND f<=8))
       AND g>0;
  


