

  CREATE TABLE t1(w, x, y, z, UNIQUE(w, x), UNIQUE(y, z));
  INSERT INTO t1 VALUES(1, 1, 1, 1);

  CREATE TABLE t1idx(x, y, i INTEGER, PRIMARY KEY(x)) WITHOUT ROWID;
  INSERT INTO t1idx VALUES(10, NULL, 5);

  PRAGMA writable_schema = 1;
  UPDATE sqlite_master SET rootpage = (
    SELECT rootpage FROM sqlite_master WHERE name='t1idx'
  ) WHERE type = 'index';



  PRAGMA writable_schema = ON;
  INSERT INTO t1(rowid, w, x, y, z) VALUES(5, 10, 11, 10, NULL);

