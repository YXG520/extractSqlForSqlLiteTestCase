

  PRAGMA legacy_alter_table = 1;
  ATTACH 'test.db2' AS aux;
  PRAGMA foreign_keys = on;
  CREATE TABLE aux.p1(a INTEGER PRIMARY KEY, b);
  CREATE TABLE aux.c1(x INTEGER PRIMARY KEY, y REFERENCES p1(a));
  INSERT INTO aux.p1 VALUES(1, 1);
  INSERT INTO aux.p1 VALUES(2, 2);
  INSERT INTO aux.c1 VALUES(NULL, 2);
  CREATE TABLE aux.c2(x INTEGER PRIMARY KEY, y REFERENCES c1(a));



  ALTER TABLE aux.p1 RENAME TO ppp;



  INSERT INTO aux.c1 VALUES(NULL, 1);
  SELECT sql FROM aux.sqlite_master WHERE name = 'c1';

