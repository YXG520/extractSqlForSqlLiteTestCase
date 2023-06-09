

  CREATE TABLE t5(a, b, c, d);
  CREATE VIRTUAL TABLE ft5 USING fts4(content=t5);
  SELECT name FROM sqlite_master WHERE name LIKE '%t5%';



  ALTER TABLE ft5 RENAME TO ft6;
  SELECT name FROM sqlite_master WHERE name LIKE '%t5%';



  SELECT name FROM sqlite_master WHERE name LIKE '%t6%';



  INSERT INTO t5 VALUES('a', 'b', 'c', 'd');
  INSERT INTO ft6(ft6) VALUES('rebuild');
  SELECT rowid FROM ft6 WHERE ft6 MATCH 'b';



  DROP TABLE ft6;
  SELECT * FROM t5;



  SELECT name FROM sqlite_master WHERE name LIKE '%t6%';



  CREATE VIRTUAL TABLE ft5 USING fts4(content=t5);
  CREATE TABLE t5_content(a, b);
  DROP TABLE ft5;
  SELECT name FROM sqlite_master WHERE name LIKE '%t5%';

