

    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(3);
    CREATE TABLE t2(y);
    INSERT INTO t2 VALUES(1);
    INSERT INTO t2 VALUES(2);
    CREATE VIRTUAL TABLE echo_t2 USING echo(t2);
    SELECT * FROM t1 WHERE x IN (SELECT rowid FROM t2);
  


    SELECT rowid FROM echo_t2
  


    SELECT * FROM t1 WHERE x IN (SELECT rowid FROM t2);
  


    SELECT * FROM t1 WHERE x IN (SELECT rowid FROM echo_t2);
  


    SELECT * FROM t1 WHERE x IN (SELECT y FROM t2);
  


    SELECT * FROM t1 WHERE x IN (SELECT y FROM echo_t2);
  
