

    PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b);
    CREATE INDEX i1 ON t1(a, b);
    CREATE TRIGGER t1_t1 AFTER INSERT ON t1 BEGIN
      UPDATE t1 SET b = 'value: ' || a WHERE t1.rowid = new.rowid;
    END;
  


    INSERT INTO t1(a) VALUES(1);
    INSERT INTO t1(a) VALUES(2);
    SELECT * FROM t1;
  

 INSERT INTO t1(a) VALUES($i) 
