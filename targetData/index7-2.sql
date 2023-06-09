

    CREATE TABLE t2(a,b PRIMARY KEY) without rowid;
    INSERT INTO t2(a,b) SELECT value, value FROM nums WHERE value<1000;
    UPDATE t2 SET a=NULL WHERE b%5==0;
    CREATE INDEX t2a1 ON t2(a) WHERE a IS NOT NULL;
    SELECT count(*) FROM t2 WHERE a IS NOT NULL;
  


    EXPLAIN QUERY PLAN
    SELECT * FROM t2 WHERE a=5;
  


      EXPLAIN QUERY PLAN
      SELECT * FROM t2 WHERE a IS NOT NULL;
    


      EXPLAIN QUERY PLAN
      SELECT * FROM t2 WHERE a IS NOT NULL AND a>0;
    


    EXPLAIN QUERY PLAN
    SELECT * FROM t2 WHERE a IS NULL;
  


  DROP INDEX t2a1;
  UPDATE t2 SET a=b, b=b+10000;
  SELECT b FROM t2 WHERE a=15;



  CREATE INDEX t2a2 ON t2(a) WHERE a<100 OR a>200;
  SELECT b FROM t2 WHERE a=15;
  PRAGMA integrity_check;



  EXPLAIN QUERY PLAN
  SELECT b FROM t2 WHERE a=15;



  SELECT b FROM t2 WHERE a=15 AND a<100;



  EXPLAIN QUERY PLAN
  SELECT b FROM t2 WHERE a=15 AND a<100;



  SELECT b FROM t2 WHERE a=515 AND a>200;



  EXPLAIN QUERY PLAN
  SELECT b FROM t2 WHERE a=515 AND a>200;

