

  CREATE TABLE t2(x);
  CREATE TRIGGER AFTER INSERT ON t2 BEGIN
    UPDATE t1 SET b=c1.b, c=c2.c
      FROM dual, c1 NATURAL RIGHT JOIN c2
     WHERE x=a;
  END;



  BEGIN;
  SELECT * FROM t1 ORDER BY a;
  INSERT INTO t2(x) VALUES(1);
  SELECT * FROM t1 ORDER BY a;
  ROLLBACK;

