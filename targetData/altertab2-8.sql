

  CREATE TABLE t1(a, b, c); 
  CREATE TABLE t2(a, b, c); 
  CREATE TABLE t3(d, e, f);
  CREATE VIEW v1 AS SELECT * FROM t1;
  CREATE TRIGGER tr AFTER INSERT ON t3 BEGIN
    UPDATE t2 SET a = new.d;
    SELECT a, b, c FROM v1;
  END;



  INSERT INTO t3 VALUES(1, 2, 3);



  ALTER TABLE t1 RENAME a TO aaa;



  INSERT INTO t3 VALUES(4, 5, 6);



  CREATE TABLE t4(a, b);
  CREATE VIEW v4 AS SELECT * FROM t4 WHERE (a=1 AND 0) OR b=2;



  ALTER TABLE t4 RENAME a TO c;
  SELECT sql FROM sqlite_master WHERE name = 'v4'



  CREATE TABLE t0(c0);
  CREATE INDEX i0 ON t0(likelihood(1,2) AND 0);
  ALTER TABLE t0 RENAME TO t1;
  SELECT sql FROM sqlite_master WHERE name='i0';

