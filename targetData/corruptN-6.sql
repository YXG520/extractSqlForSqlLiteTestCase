

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size=1024;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1(b) VALUES(zeroblob(300)),(zeroblob(300)),(zeroblob(300)),(zeroblob(300));
  CREATE TABLE t2(a);
  CREATE TRIGGER t1tr BEFORE UPDATE ON t1 BEGIN DELETE FROM t2; END;
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema SET rootpage=3 WHERE rowid=2;
  PRAGMA writable_schema=RESET;
  INSERT INTO t2 VALUES('active'),('boomer'),('atom'),('atomic'),
         ('alpha channel backup abandon test aback boomer atom alpha active');



  UPDATE t1 SET b=zeroblob(299);



  -- Make "t1" a large table. Large enough that the children of the root
  -- node are interior nodes.
  PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(x);
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<500
  )
  INSERT INTO t1 SELECT zeroblob(300) FROM s;
  
  CREATE TABLE t2(y);
  CREATE TRIGGER tr BEFORE UPDATE ON t1 BEGIN
    DELETE FROM t2;
  END;
  
  -- Set the root of table t2 to 137 - the leftmost child of the root of t1.
  PRAGMA writable_schema = ON;
  UPDATE sqlite_schema SET rootpage = 137 WHERE name='t2';
  PRAGMA writable_schema = RESET;



  -- Run an UPDATE on t1 that will hit a child of page 136. Have the trigger
  -- clear page 136 and its children. Assert fails.
  UPDATE t1 SET x='hello world' WHERE rowid=1;

