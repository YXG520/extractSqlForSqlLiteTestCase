

  DELETE FROM t1;
  CREATE TABLE t2(x);
  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
    INSERT INTO t2(x) SELECT f3(new.a);
  END;



  INSERT INTO t1 VALUES(7,6,5);



  SELECT * FROM t1;
  SELECT * FROM t2;



  DROP TRIGGER r1;
  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
    INSERT INTO t2(x) SELECT f2(new.a)+100;
  END;
  PRAGMA trusted_schema=ON;
  INSERT INTO t1 VALUES(7,6,5);
  SELECT * FROM t1, t2;



  DELETE FROM t1;
  DELETE FROM t2;
  PRAGMA trusted_schema=OFF;
  INSERT INTO t1 VALUES(7,6,5);



  SELECT * FROM t1;
  SELECT * FROM t2;

