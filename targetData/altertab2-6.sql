

  CREATE TABLE t3(a,b,c,d);
  CREATE TRIGGER r3 AFTER INSERT ON t3 WHEN new.a NOT NULL BEGIN
    SELECT a,b,c FROM t3 EXCEPT SELECT a,b,c FROM t3 ORDER BY a;
    SELECT rowid, * FROM t3;
  END;



  ALTER TABLE t3 RENAME TO t3x;
  SELECT sql FROM sqlite_master WHERE name = 'r3';



  ALTER TABLE t3x RENAME a TO abcd;
  SELECT sql FROM sqlite_master WHERE name = 'r3';

