

  CREATE TABLE t1(a, b);
  CREATE TABLE log(x);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);
  CREATE VIEW v1 AS SELECT a, b FROM t1;

  CREATE TRIGGER tr1 INSTEAD OF DELETE ON v1 BEGIN
    INSERT INTO log VALUES('delete');
  END;

  CREATE TRIGGER tr2 INSTEAD OF UPDATE ON v1 BEGIN
    INSERT INTO log VALUES('update');
  END;

  CREATE TRIGGER tr3 INSTEAD OF INSERT ON v1 BEGIN
    INSERT INTO log VALUES('insert');
  END;



  DELETE FROM v1 WHERE rowid=1;



  UPDATE v1 SET a=b WHERE rowid=2;
