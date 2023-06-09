

    CREATE TABLE t6(x);
    INSERT INTO t6 VALUES(1);
    INSERT INTO t6 VALUES(2);
    INSERT INTO t6 VALUES(NULL);
    SELECT coalesce(min(x),-1) FROM t6;
  


    SELECT max(x) FROM t6;
  


    CREATE INDEX i6 ON t6(x);
    SELECT coalesce(min(x),-1) FROM t6;
  


    SELECT max(x) FROM t6;
  


    DELETE FROM t6 WHERE x NOT NULL;
    SELECT count(*) FROM t6;
  


    SELECT count(x) FROM t6;
  


      SELECT (SELECT min(x) FROM t6), (SELECT max(x) FROM t6);
    


    SELECT min(x), max(x) FROM t6;
  


    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    SELECT count(*) FROM t6;
  


    SELECT count(x) FROM t6;
  


      SELECT (SELECT min(x) FROM t6), (SELECT max(x) FROM t6);
    


    SELECT min(x), max(x) FROM t6;
  
