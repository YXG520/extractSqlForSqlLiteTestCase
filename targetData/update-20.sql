

  PRAGMA recursive_triggers = true;
  CREATE TABLE t1(a UNIQUE ON CONFLICT REPLACE, b);
  INSERT INTO t1(a,b) VALUES(4,12),(9,13);
  CREATE INDEX i0 ON t1(b);
  CREATE TRIGGER tr0 DELETE ON t1 BEGIN
    UPDATE t1 SET b = a;
  END;
  PRAGMA integrity_check;



  UPDATE t1 SET a=0;



  PRAGMA integrity_check;

