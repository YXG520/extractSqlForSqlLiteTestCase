

    CREATE TABLE t2(a, b);
    CREATE TRIGGER t2_t AFTER UPDATE ON t2 BEGIN
      DELETE FROM t2 WHERE a = new.a + 1;
    END;
    INSERT INTO t2 VALUES(1, 2);
    INSERT INTO t2 VALUES(2, 3);
  

 
    UPDATE t2 SET b = 5 
  
