

  PRAGMA foreign_keys = 1;
  CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
  CREATE TABLE t2(x REFERENCES t1 ON UPDATE CASCADE ON DELETE CASCADE);


  INSERT INTO t1 VALUES('aaa', 1);
  INSERT INTO t2 VALUES('aaa');
  UPDATE t1 SET a = 'bbb';
  DELETE FROM t1;
  PRAGMA foreign_key_check;
