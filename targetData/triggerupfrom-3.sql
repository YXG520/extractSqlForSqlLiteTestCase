

  CREATE TABLE mmm(x, y);
  INSERT INTO mmm VALUES(1, 'one');
  INSERT INTO mmm VALUES(2, 'two');
  INSERT INTO mmm VALUES(3, 'three');

  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t1(a, b);
  CREATE TABLE aux.mmm(x, y);
  INSERT INTO aux.mmm VALUES(1, 'ONE');
  INSERT INTO aux.mmm VALUES(2, 'TWO');
  INSERT INTO aux.mmm VALUES(3, 'THREE');

  CREATE TRIGGER aux.ttt AFTER INSERT ON t1 BEGIN
    UPDATE t1 SET b=y FROM mmm WHERE x=new.a AND a=new.a;
  END;
  
  INSERT INTO t1(a) VALUES (2);
  SELECT * FROM t1;

