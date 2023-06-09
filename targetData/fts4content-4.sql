

  CREATE TABLE t4(x);
  CREATE VIRTUAL TABLE ft4 USING fts4(content=t4);
  CREATE VIRTUAL TABLE ft4x USING fts4(x);



  INSERT INTO ft4x(ft4x) VALUES('rebuild');
  INSERT INTO ft4(ft4) VALUES('rebuild');



  SELECT id, quote(value) FROM ft4_stat



  SELECT id, quote(value) FROM ft4x_stat



  INSERT INTO ft4x VALUES('M G M F T');
  INSERT INTO ft4x VALUES('Z Q C A U');
  INSERT INTO ft4x VALUES('N L L V');
  INSERT INTO ft4x VALUES('T F D X D');
  INSERT INTO ft4x VALUES('Z H I S D');

  SELECT id, quote(value) FROM ft4x_stat



  INSERT INTO ft4(rowid, x) SELECT rowid, * FROM ft4x;
  SELECT id, quote(value) FROM ft4_stat





