

  CREATE TABLE t1(a, b, c);
  CREATE VIEW v1 AS SELECT * FROM t1;

  CREATE TABLE t2(x INTEGER PRIMARY KEY, y, z UNIQUE);
  CREATE INDEX t2y ON t2(y);

  CREATE TABLE t3(q, r, s);
  CREATE INDEX t3rs ON t3(r+s);



  ALTER TABLE nosuch DROP COLUMN z;



  ALTER TABLE v1 DROP COLUMN c;



    CREATE VIRTUAL TABLE ft1 USING fts5(one, two);
  


    ALTER TABLE ft1 DROP COLUMN two;
  


  ALTER TABLE sqlite_schema DROP COLUMN sql;



  ALTER TABLE t1 DROP COLUMN d;



  ALTER TABLE t1 DROP COLUMN b;



  SELECT sql FROM sqlite_schema WHERE name = 't1'



  ALTER TABLE t1 DROP COLUMN c;



  SELECT sql FROM sqlite_schema WHERE name = 't1'



  ALTER TABLE t1 DROP COLUMN a;



  ALTER TABLE t2 DROP COLUMN z



  ALTER TABLE t2 DROP COLUMN x



  ALTER TABLE t2 DROP COLUMN y



  ALTER TABLE t3 DROP COLUMN s

