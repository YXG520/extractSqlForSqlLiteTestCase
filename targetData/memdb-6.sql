

    SELECT * FROM t2;
  


    BEGIN;
    DROP TABLE t2;
    SELECT name FROM sqlite_master WHERE type='table' ORDER BY 1;
  


    ROLLBACK;
    SELECT name FROM sqlite_master WHERE type='table' ORDER BY 1;
  


    SELECT * FROM t2;
  


    SELECT a FROM t2 UNION SELECT b FROM t2 ORDER BY 1;
  


    CREATE INDEX i2 ON t2(c);
    SELECT a FROM t2 ORDER BY c;
  


    SELECT a FROM t2 ORDER BY c DESC;
  


    BEGIN;
    CREATE TABLE t5(x,y);
    INSERT INTO t5 VALUES(1,2);
    SELECT * FROM t5;
  


    SELECT name FROM sqlite_master WHERE type='table' ORDER BY 1;
  


    ROLLBACK;
    SELECT name FROM sqlite_master WHERE type='table' ORDER BY 1;
  


    CREATE TABLE t5(x PRIMARY KEY, y UNIQUE);
    SELECT * FROM t5;
  


    SELECT * FROM t5 ORDER BY y DESC;
  


      INSERT INTO t5 VALUES(1,2);
      INSERT INTO t5 VALUES(3,4);
      REPLACE INTO t5 VALUES(1,4);
      SELECT rowid,* FROM t5;
    


      DELETE FROM t5 WHERE x>5;
      SELECT * FROM t5;
    


      DELETE FROM t5 WHERE y<3;
      SELECT * FROM t5;
    


    DELETE FROM t5 WHERE x>0;
    SELECT * FROM t5;
  
