

  CREATE TABLE t16a(a,b,c);
  INSERT INTO t16a VALUES(1,2,3);
  CREATE TABLE t16b(x);
  INSERT INTO t16b(x) VALUES(1);
  CREATE TRIGGER t16r AFTER UPDATE ON t16b BEGIN
     UPDATE t16a SET (a,b,c)=(SELECT new.x,new.x+1,new.x+2);
  END;
  UPDATE t16b SET x=7;
  SELECT * FROM t16a;



  UPDATE t16b SET x=97;
  SELECT * FROM t16a;



  CREATE TABLE t16c(a, b, c, d, e);
  INSERT INTO t16c VALUES(1, 'a', 'b', 'c', 'd');
  CREATE TRIGGER t16c1 AFTER INSERT ON t16c BEGIN
    UPDATE t16c SET (c, d) = (SELECT 'A', 'B'), (e, b) = (SELECT 'C', 'D')
      WHERE a = new.a-1;
  END;

  SELECT * FROM t16c;



  INSERT INTO t16c VALUES(2, 'w', 'x', 'y', 'z');
  SELECT * FROM t16c;



  DROP TRIGGER t16c1;
  PRAGMA recursive_triggers = 1;
  INSERT INTO t16c VALUES(3, 'i', 'ii', 'iii', 'iv');
  CREATE TRIGGER t16c1 AFTER UPDATE ON t16c WHEN new.a>1 BEGIN
    UPDATE t16c SET (e, d) = (
      SELECT b, c FROM t16c WHERE a = new.a-1
    ), (c, b) = (
      SELECT d, e FROM t16c WHERE a = new.a-1
    ) WHERE a = new.a-1;
  END;

  UPDATE t16c SET a=a WHERE a=3;
  SELECT * FROM t16c;

