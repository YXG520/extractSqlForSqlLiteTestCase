

  CREATE TABLE t1(a,b,c,d);
  CREATE VIEW v2(a,b,c,d) AS SELECT * FROM t1;
  CREATE TRIGGER v2ins INSTEAD OF INSERT ON v2 BEGIN
    INSERT INTO t1(a,b,c,d) VALUES(new.a, new.b, new.c, new.d);
  END;
  INSERT INTO v2(a,d) VALUES(11,14);
  SELECT * FROM t1;

