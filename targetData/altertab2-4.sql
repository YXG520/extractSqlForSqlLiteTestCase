

  CREATE TABLE t1(a,b,c,d,e,f);
  CREATE TRIGGER r1 AFTER INSERT ON t1 WHEN new.a NOT NULL BEGIN
    UPDATE t1 SET (c,d)=(a,b);
  END;



  ALTER TABLE t1 RENAME TO t1x;
  SELECT sql FROM sqlite_master WHERE type = 'trigger';



  ALTER TABLE t1x RENAME a TO aaa;
  SELECT sql FROM sqlite_master WHERE type = 'trigger';



  ALTER TABLE t1x RENAME d TO ddd;
  SELECT sql FROM sqlite_master WHERE type = 'trigger';

