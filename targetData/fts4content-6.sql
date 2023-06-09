

  CREATE VIRTUAL TABLE ft7 USING fts4(content=t7);



  CREATE TABLE t7(one, two);
  CREATE VIRTUAL TABLE ft7 USING fts4(content=t7);
  INSERT INTO t7 VALUES('A B', 'B A');
  INSERT INTO t7 VALUES('C D', 'A A');
  SELECT * FROM ft7;



  DROP TABLE t7;
  SELECT * FROM ft7;



  SELECT name FROM sqlite_master WHERE name LIKE '%t7%'



  SELECT * FROM ft7;



  CREATE TABLE t7(x, y);
  INSERT INTO t7 VALUES('A B', 'B A');
  INSERT INTO t7 VALUES('C D', 'A A');
  SELECT * FROM ft7;



  INSERT INTO ft7(ft7) VALUES('rebuild');
  SELECT rowid FROM ft7 WHERE ft7 MATCH '"A A"';



  DROP TABLE t7;
  CREATE TABLE t7(x);



  SELECT * FROM ft7 WHERE ft7 MATCH '"A A"';



  SELECT * FROM ft7 WHERE ft7 MATCH '"A A"';



  SELECT rowid FROM ft7 WHERE ft7 MATCH '"A A"';



  SELECT rowid, * FROM ft7 WHERE ft7 MATCH '"A A"';

