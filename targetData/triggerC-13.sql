

  PRAGMA recursive_triggers = ON;
  CREATE TABLE t12(a, b);
  INSERT INTO t12 VALUES(1, 2);
  CREATE TRIGGER tr12 AFTER UPDATE ON t12 BEGIN
    UPDATE t12 SET a=new.a+1, b=new.b+1;
  END;



  UPDATE t12 SET a=a+1, b=b+1;

