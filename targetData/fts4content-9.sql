

  CREATE TABLE tbl1(a, b);
  INSERT INTO tbl1 VALUES('a b', 'c d');
  INSERT INTO tbl1 VALUES('e f', 'a b');
  CREATE VIRTUAL TABLE e1 USING echo(tbl1);
  CREATE VIRTUAL TABLE ft1 USING fts4(content=e1);
  INSERT INTO ft1(ft1) VALUES('rebuild');



  SELECT rowid, * FROM ft1 WHERE ft1 MATCH 'e'



  SELECT rowid, * FROM ft1 WHERE ft1 MATCH 'a'




  SELECT rowid, * FROM ft1 WHERE ft1 MATCH 'a'



  INSERT INTO ft1(ft1) VALUES('rebuild');
  SELECT rowid, * FROM ft1 WHERE ft1 MATCH 'a'

