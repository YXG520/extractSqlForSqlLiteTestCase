

  PRAGMA auto_vacuum=0;
  CREATE TABLE t1(x PRIMARY KEY, y);
  INSERT INTO t1 VALUES('a', 'A');
  INSERT INTO t1 VALUES('b', 'A');
  INSERT INTO t1 VALUES('c', 'A');
  SELECT name FROM sqlite_master;



  PRAGMA writable_schema = 1;
  DELETE FROM sqlite_master WHERE name = 'sqlite_autoindex_t1_1';


 UPDATE t1 SET x='d' AND y='D' WHERE rowid = 2 
