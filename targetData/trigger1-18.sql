

  CREATE TABLE t18(a PRIMARY KEY,b,c);
  INSERT INTO t18(a,b,c) VALUES(1,2,3);
  CREATE TRIGGER t18r1 BEFORE UPDATE ON t18 BEGIN
    UPDATE t18 SET b=1000 WHERE a=old.a;
  END;
  UPDATE t18 SET c=b WHERE a=1;
  SELECT * FROM t18;



  DELETE FROM t18;
  INSERT INTO t18(a,b,c) VALUES(1,2,3);
  UPDATE t18 SET c=b, b=b+1 WHERE a=1;
  SELECT * FROM t18;

