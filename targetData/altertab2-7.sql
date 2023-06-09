

  CREATE TABLE t1(a,b,c,d,e,f);
  INSERT INTO t1 VALUES(1,2,3,4,5,6);
  CREATE TABLE t2(x,y,z);



  SELECT a,b,c FROM t1 UNION SELECT d,e,f FROM t1 ORDER BY b,c;



  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
    INSERT INTO t2
    SELECT a,b,c FROM t1 UNION SELECT d,e,f FROM t1 ORDER BY b,c;
  END;
  INSERT INTO t1 VALUES(2,3,4,5,6,7);
  SELECT * FROM t2;



  ALTER TABLE t1 RENAME TO xyzzy;
  SELECT sql FROM sqlite_master WHERE name='r1'



  ALTER TABLE xyzzy RENAME c TO ccc;
  SELECT sql FROM sqlite_master WHERE name='r1'

