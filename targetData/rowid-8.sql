

    CREATE TABLE t3(a integer primary key);
    CREATE TABLE t4(x);
    INSERT INTO t4 VALUES(1);
    CREATE TRIGGER r3 AFTER INSERT on t3 FOR EACH ROW BEGIN
      INSERT INTO t4 VALUES(NEW.a+10);
    END;
    SELECT * FROM t3;
  


    SELECT rowid, * FROM t4;
  


    INSERT INTO t3 VALUES(123);
    SELECT last_insert_rowid();
  


    SELECT * FROM t3;
  


    SELECT rowid, * FROM t4;
  


    INSERT INTO t3 VALUES(NULL);
    SELECT last_insert_rowid();
  


    SELECT * FROM t3;
  


    SELECT rowid, * FROM t4;
  

    CREATE TABLE t3(a integer primary key);
    INSERT INTO t3 VALUES(123);
    INSERT INTO t3 VALUES(124);
  
