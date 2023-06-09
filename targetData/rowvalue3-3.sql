

  CREATE TABLE c1(a, b, c, d);
  INSERT INTO c1(rowid, a, b) VALUES(1,   NULL, 1);
  INSERT INTO c1(rowid, a, b) VALUES(2,   2, NULL);
  INSERT INTO c1(rowid, a, b) VALUES(3,   2, 2);
  INSERT INTO c1(rowid, a, b) VALUES(4,   3, 3);

  INSERT INTO c1(rowid, a, b, c, d) VALUES(101, 'a', 'b', 1, 1);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(102, 'a', 'b', 1, 2);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(103, 'a', 'b', 1, 3);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(104, 'a', 'b', 2, 1);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(105, 'a', 'b', 2, 2);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(106, 'a', 'b', 2, 3);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(107, 'a', 'b', 3, 1);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(108, 'a', 'b', 3, 2);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(109, 'a', 'b', 3, 3);


    1 "SELECT (1, 2) IN (SELECT a, b FROM c1)" {0
