

  CREATE TABLE t4(x);
  CREATE TRIGGER tr4 AFTER INSERT ON t4 BEGIN
    SELECT 0x2147483648e0e0099 AS y WHERE y;
  END;



  INSERT INTO t4 VALUES(1);

