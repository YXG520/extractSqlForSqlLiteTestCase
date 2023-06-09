

  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t3(x, y);
  INSERT INTO aux.t3 VALUES('x', 'y');



  CREATE TRIGGER tr2 AFTER INSERT ON t1 BEGIN
    UPDATE t1 SET b = y FROM aux.t3 WHERE k=new.a;
  END;



  CREATE TEMP TRIGGER tr2 AFTER INSERT ON t1 BEGIN
    UPDATE t1 SET b = y FROM aux.t3 WHERE a=new.a;
  END;
  INSERT INTO t1(a) VALUES(10), (20);
  SELECT * FROM t1;



  CREATE TABLE link(f, t);
  INSERT INTO link VALUES(5, 2), (20, 10), (2, 1);
  CREATE TRIGGER tr3 BEFORE DELETE ON t1 BEGIN
    UPDATE t1 SET b=coalesce(old.b,old.c) FROM main.link WHERE a=t AND old.a=f;
  END;
  DELETE FROM t1 WHERE a=2;
  SELECT * FROM t1;




  ATTACH 'test.db' AS yyy;
  SELECT * FROM t1;

