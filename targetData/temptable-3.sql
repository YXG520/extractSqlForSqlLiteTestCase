

    CREATE INDEX i2 ON t2(x);
    SELECT name FROM sqlite_master WHERE type='index';
  


    SELECT y FROM t2 WHERE x=1;
  


    DROP INDEX i2;
    SELECT y FROM t2 WHERE x=1;
  


    CREATE INDEX i2 ON t2(x);
    DROP TABLE t2;
  
DROP INDEX i2
