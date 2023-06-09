

    CREATE TABLE t1(a,b);
    CREATE INDEX t1a ON t1(a);
    CREATE INDEX t1b ON t1(b);
    INSERT INTO t1 VALUES(1,NULL);
    INSERT INTO t1 SELECT a+1, b FROM t1;
    INSERT INTO t1 SELECT a+2, b FROM t1;
    INSERT INTO t1 SELECT a+4, b FROM t1;
    INSERT INTO t1 SELECT a+8, b FROM t1;
    INSERT INTO t1 SELECT a+16, b FROM t1;
    INSERT INTO t1 SELECT a+32, b FROM t1;
    INSERT INTO t1 SELECT a+64, b FROM t1;
    ANALYZE;
  
EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE a=5 AND b IS NULL


    SELECT idx, stat FROM sqlite_stat1 WHERE tbl='t1' ORDER BY idx;
  


    UPDATE t1 SET b='x' WHERE a%2;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 WHERE tbl='t1' ORDER BY idx;
  


    UPDATE t1 SET b=NULL;
    ALTER TABLE t1 ADD COLUMN c;
    ALTER TABLE t1 ADD COLUMN d;
    UPDATE t1 SET c=a/4, d=a/2;
    CREATE INDEX t1bcd ON t1(b,c,d);
    CREATE INDEX t1cdb ON t1(c,d,b);
    CREATE INDEX t1cbd ON t1(c,b,d);
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 WHERE tbl='t1' ORDER BY idx;
  
