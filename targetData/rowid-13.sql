

  CREATE TABLE t13(x);
  INSERT INTO t13(rowid,x) VALUES(1234,5);
  SELECT rowid, x, addrow(rowid+1000), '|' FROM t13 LIMIT 3;
  SELECT last_insert_rowid();

