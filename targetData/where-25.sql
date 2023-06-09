

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  CREATE UNIQUE INDEX i1 ON t1(c);
  INSERT INTO t1 VALUES(1, 'one', 'i');
  INSERT INTO t1 VALUES(2, 'two', 'ii');

  CREATE TABLE t2(a INTEGER PRIMARY KEY, b, c);
  CREATE UNIQUE INDEX i2 ON t2(c);
  INSERT INTO t2 VALUES(1, 'one', 'i');
  INSERT INTO t2 VALUES(2, 'two', 'ii');
  INSERT INTO t2 VALUES(3, 'three', 'iii');

  PRAGMA writable_schema = 1;
  UPDATE sqlite_schema SET rootpage = (
    SELECT rootpage FROM sqlite_schema WHERE name = 'i2'
  ) WHERE name = 'i1';



  DELETE FROM t1 WHERE c='iii'



  INSERT INTO t1 VALUES(4, 'four', 'iii') 
    ON CONFLICT(c) DO UPDATE SET b=NULL



  CREATE TABLE t1(a PRIMARY KEY, b, c) WITHOUT ROWID;
  CREATE UNIQUE INDEX i1 ON t1(c);
  INSERT INTO t1 VALUES(1, 'one', 'i');
  INSERT INTO t1 VALUES(2, 'two', 'ii');

  CREATE TABLE t2(a INTEGER PRIMARY KEY, b, c);
  CREATE UNIQUE INDEX i2 ON t2(c);
  INSERT INTO t2 VALUES(1, 'one', 'i');
  INSERT INTO t2 VALUES(2, 'two', 'ii');
  INSERT INTO t2 VALUES(3, 'three', 'iii');

  PRAGMA writable_schema = 1;
  UPDATE sqlite_schema SET rootpage = (
    SELECT rootpage FROM sqlite_schema WHERE name = 'i2'
  ) WHERE name = 'i1';



  SELECT * FROM t1 WHERE c='iii'



  INSERT INTO t1 VALUES(4, 'four', 'iii') 
    ON CONFLICT(c) DO UPDATE SET b=NULL

