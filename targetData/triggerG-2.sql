

  DELETE FROM t1;
  INSERT INTO t1(a) VALUES(0),(2),(3),(8),(9);
  DELETE FROM t2;
  DELETE FROM t3;
  DROP TRIGGER tr;
  CREATE TRIGGER tr AFTER INSERT ON t3 BEGIN
    INSERT INTO t3 SELECT new.c+1 WHERE new.c<5;
    INSERT INTO t2 SELECT new.c*10000+xx.a*100+yy.a
                     FROM t1 AS xx, t1 AS yy
                    WHERE xx.a IN (1,2,3,4)
                      AND yy.a IN (2,3,4,5);
  END;

  INSERT INTO t3 VALUES(2);
  SELECT b FROM t2 ORDER BY b;

