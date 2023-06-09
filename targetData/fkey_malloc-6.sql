

  PRAGMA foreign_keys = 1;
  CREATE TABLE t1(
    x PRIMARY KEY, 
    y REFERENCES t1 ON DELETE RESTRICT ON UPDATE SET DEFAULT
  );
  INSERT INTO t1 VALUES('abc', 'abc');
  INSERT INTO t1 VALUES('def', 'def');


  INSERT INTO t1 VALUES('ghi', 'ghi');
  DELETE FROM t1 WHERE rowid>1;
  UPDATE t1 SET x='jkl', y='jkl';

