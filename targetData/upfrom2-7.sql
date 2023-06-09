

  CREATE TABLE t1(a);
  INSERT INTO t1(a) VALUES(11),(22),(33),(44),(55);
  CREATE VIEW t2(b,c) AS SELECT a, COUNT(*) OVER () FROM t1;
  CREATE TABLE t3(x,y);
  CREATE TRIGGER t2r1 INSTEAD OF UPDATE ON t2 BEGIN
    INSERT INTO t3(x,y) VALUES(new.b,new.c);
  END;
  SELECT * FROM t2;



  UPDATE t2 SET c=t1.a FROM t1 WHERE t2.b=t1.a;
  SELECT * FROM t3;

