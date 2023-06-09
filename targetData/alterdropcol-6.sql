

  CREATE TABLE t1(a,b,c);
  CREATE TABLE t2(x,y,z);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema SET sql='CREATE INDEX t1b ON t1(b)' WHERE name='t2';
  PRAGMA writable_schema=OFF;
  ALTER TABLE t2 DROP COLUMN z;



  CREATE TABLE t1(a,b,c);
  CREATE TABLE t2(x,y,z);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema SET sql='CREATE VIEW t2(x,y,z) AS SELECT b,a,c FROM t1'
   WHERE name='t2';
  PRAGMA writable_schema=OFF;
  ALTER TABLE t2 DROP COLUMN z;

