

    CREATE TABLE t5(a INTEGER PRIMARY KEY, b text) WITHOUT rowid;
    INSERT INTO t5 VALUES(1,'one');
    INSERT INTO t5 VALUES(2,'two');
    SELECT * FROM t5
  


    UPDATE OR IGNORE t5 SET a=a+1 WHERE a=1;
    SELECT * FROM t5;
  


    UPDATE t5 SET a=a+1 WHERE a=1;
  


    UPDATE OR REPLACE t5 SET a=a+1 WHERE a=1;
    SELECT * FROM t5;
  
