

  CREATE VIEW t1(a) AS SELECT 1;
  CREATE TRIGGER t1r1 INSTEAD OF INSERT ON t1 BEGIN
     SELECT 2;
  END;



  INSERT INTO t1 VALUES(3) ON CONFLICT(x) DO NOTHING;
