

  CREATE TABLE t5(a);
  CREATE TABLE t6(x);

  CREATE TRIGGER t5tr AFTER DELETE ON t5 BEGIN
    DELETE FROM t6 WHERE t6.x REGEXP old.a;
  END;

  INSERT INTO t5 VALUES ('^a.*'), ('^b.*'), ('^c.*');
  INSERT INTO t6 VALUES ('eab'), ('abc'), ('bcd'), ('cde'), ('dea');

  DELETE FROM t5;
  SELECT * FROM t6;

