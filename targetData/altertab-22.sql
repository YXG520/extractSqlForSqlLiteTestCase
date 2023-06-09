

  CREATE TABLE t1(a INT, b TEXT NOT NULL);
  INSERT INTO t1 VALUES(1,2),('a','b');
  BEGIN;
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema SET sql='CREATE TABLE t1(a INT, b TEXT)' WHERE name LIKE 't1';
  PRAGMA schema_version=1234;
  COMMIT;
  PRAGMA integrity_check;



  ALTER TABLE t1 ADD COLUMN c INT DEFAULT 78;
  SELECT * FROM t1;

