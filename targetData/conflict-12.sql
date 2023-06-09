

    CREATE TABLE t5(a INTEGER PRIMARY KEY, b text);
    INSERT INTO t5 VALUES(1,'one');
    INSERT INTO t5 VALUES(2,'two');
    SELECT * FROM t5
  


    UPDATE OR IGNORE t5 SET a=a+1 WHERE a=1;
    SELECT * FROM t5;
  


    UPDATE t5 SET a=a+1 WHERE a=1;
  


    UPDATE OR REPLACE t5 SET a=a+1 WHERE a=1;
    SELECT * FROM t5;
  


    CREATE TABLE t5b(x);
    INSERT INTO t5b(rowid, x) VALUES(1,10),(2,11);
    UPDATE t5b SET rowid=rowid+1 WHERE x=10;
  
