

  CREATE TABLE t7(x);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE TABLE [M%s%s%s%s%s%s%s%s%s%s%s%s%s';
  VACUUM;



  CREATE TABLE t0(a,b);
  INSERT INTO t0 VALUES(1,0),(2,0);
  UPDATE t0 SET b=9 WHERE a AND (SELECT a FROM t0 WHERE a);
  SELECT * FROM t0 ORDER BY +a;

