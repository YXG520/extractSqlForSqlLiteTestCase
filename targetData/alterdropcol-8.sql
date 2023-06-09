

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  PRAGMA writable_schema = 1;
  UPDATE sqlite_schema 
  SET sql = 'CREATE TABLE t1(a INTEGER PRIMARY KEY AUTOINCREMENT, b)'



  ALTER TABLE t1 DROP COLUMN b;                



  SELECT sql FROM sqlite_schema;

