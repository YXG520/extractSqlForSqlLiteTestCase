

  PRAGMA integrity_check;



  CREATE TABLE t4(a,b);
  INSERT INTO t4 VALUES('hello','world!');
  PRAGMA integrity_check;
  SELECT * FROM t4;



  PRAGMA journal_mode=TRUNCATE;
  PRAGMA journal_mode=OFF;
  PRAGMA journal_mode=DELETE;
  PRAGMA journal_mode=WAL;
  PRAGMA journal_mode=PERSIST;
  PRAGMA journal_mode=MEMORY;
  PRAGMA journal_mode=OFF;
  PRAGMA journal_mode=DELETE;

