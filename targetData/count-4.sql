

    CREATE TABLE t4(a, b);
    INSERT INTO t4 VALUES('a', 'b');
    CREATE INDEX t4i1 ON t4(b, a);
    SELECT count(*) FROM t4;
  


    CREATE INDEX t4i2 ON t4(b);
    SELECT count(*) FROM t4;
  


    DROP INDEX t4i1;
    CREATE INDEX t4i1 ON t4(b, a);
    SELECT count(*) FROM t4;
  
