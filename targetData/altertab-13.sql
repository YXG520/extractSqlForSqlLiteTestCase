

  CREATE TABLE t1(x, y);
  CREATE TABLE t2(a, b);
  CREATE TABLE log(c);
  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    INSERT INTO log SELECT y FROM t1, t2;
  END;



  INSERT INTO t1 VALUES(1, 2);



  ALTER TABLE t2 RENAME b TO y;

