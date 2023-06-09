

  CREATE TABLE k1(x REFERENCES s1);
  PRAGMA foreign_key_check(k1);



  INSERT INTO k1 VALUES(NULL);
  PRAGMA foreign_key_check(k1);



  INSERT INTO k1 VALUES(1);
  PRAGMA foreign_key_check(k1);



  CREATE TABLE k2(x, y, FOREIGN KEY(x, y) REFERENCES s1(a, b));
  PRAGMA foreign_key_check(k2);



  INSERT INTO k2 VALUES(NULL, 'five');
  PRAGMA foreign_key_check(k2);



  INSERT INTO k2 VALUES('one', NULL);
  PRAGMA foreign_key_check(k2);



  INSERT INTO k2 VALUES('six', 'seven');
  PRAGMA foreign_key_check(k2);

