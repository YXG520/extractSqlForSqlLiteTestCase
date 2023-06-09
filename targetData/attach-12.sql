

  CREATE TABLE Table1 (col TEXT NOT NULL PRIMARY KEY);
  ATTACH ':memory:' AS db2;
  CREATE TABLE db2.Table2(col1 INTEGER, col2 INTEGER, col3 INTEGER, col4);
  CREATE UNIQUE INDEX db2.idx_col1_unique ON Table2 (col1);
  CREATE UNIQUE INDEX db2.idx_col23_unique ON Table2 (col2, col3);
  CREATE INDEX db2.idx_col2 ON Table2 (col2);
  INSERT INTO Table2 VALUES(1,2,3,4);
  PRAGMA integrity_check;

