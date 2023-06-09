

  CREATE TABLE p1(a PRIMARY KEY, b);
  CREATE TABLE c1(x REFERENCES p1);
  CREATE TABLE c2(x, FOREIGN KEY (x) REFERENCES p1);
  CREATE TABLE c3(x, FOREIGN KEY (x) REFERENCES p1(a));



  ALTER TABLE p1 RENAME TO p2;
  SELECT sql FROM sqlite_master WHERE name LIKE 'c%';



  PRAGMA legacy_alter_table = 1;
  ALTER TABLE p2 RENAME TO p3;
  SELECT sql FROM sqlite_master WHERE name LIKE 'c%';



  ALTER TABLE p3 RENAME TO p2;
  PRAGMA foreign_keys = 1;
  ALTER TABLE p2 RENAME TO p3;
  SELECT sql FROM sqlite_master WHERE name LIKE 'c%';

