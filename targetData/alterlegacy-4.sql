

  PRAGMA legacy_alter_table = 1;
  CREATE table t1(x, y);
  CREATE table t2(a, b);

  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    SELECT t1.x, * FROM t1, t2;
    INSERT INTO t2 VALUES(new.x, new.y);
  END;



  INSERT INTO t1 VALUES(1, 1);
  ALTER TABLE t1 RENAME TO t11;



  INSERT INTO t11 VALUES(2, 2);



  ALTER TABLE t11 RENAME TO t1;
  ALTER TABLE t2 RENAME TO t22;



  INSERT INTO t1 VALUES(3, 3);


 SELECT squish(sql) FROM sqlite_master WHERE name = 'tr1' 
