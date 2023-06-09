

  CREATE TABLE t1_a(a, b);
  CREATE VIEW t1 AS SELECT a, b FROM t1_a;

  INSERT INTO t1_a VALUES('x', 'y');
  INSERT INTO t1_a VALUES('x', 'y');
  INSERT INTO t1_a VALUES('x', 'y');

  CREATE TABLE log(op, r, a, b);



  CREATE TRIGGER tr1 INSTEAD OF INSERT ON t1 BEGIN
    INSERT INTO log VALUES('insert', new.rowid, new.a, new.b);
  END;
  CREATE TRIGGER tr2 INSTEAD OF UPDATE ON t1 BEGIN
    INSERT INTO log VALUES('update', new.rowid, new.a, new.b);
  END;



  INSERT INTO t1(a, b) VALUES(1234, 5678) RETURNING rowid;



  UPDATE t1 SET a='z' WHERE b='y' RETURNING rowid;



  SELECT * FROM log;

