

  CREATE TABLE c0(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c1(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c2(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c3(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c4(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c5(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c6(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c7(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c8(one, two INTEGER PRIMARY KEY);
  CREATE TABLE c9(one, two INTEGER PRIMARY KEY);

  INSERT INTO c0 VALUES('zero', 0);
  INSERT INTO c1 VALUES('one', 1);
  INSERT INTO c2 VALUES('two', 2);
  INSERT INTO c3 VALUES('three', 3);
  INSERT INTO c4 VALUES('four', 4);
  INSERT INTO c5 VALUES('five', 5);
  INSERT INTO c6 VALUES('six', 6);
  INSERT INTO c7 VALUES('seven', 7);
  INSERT INTO c8 VALUES('eight', 8);
  INSERT INTO c9 VALUES('nine', 9);

  CREATE VIRTUAL TABLE temp.cc USING unionvtab([
    SELECT 'main', 'c9', 9, 9 UNION ALL
    SELECT 'main', 'c8', 8, 8 UNION ALL
    SELECT 'main', 'c7', 7, 7 UNION ALL
    SELECT 'main', 'c6', 6, 6 UNION ALL
    SELECT 'main', 'c5', 5, 5 UNION ALL
    SELECT 'main', 'c4', 4, 4 UNION ALL
    SELECT 'main', 'c3', 3, 3 UNION ALL
    SELECT 'main', 'c2', 2, 2 UNION ALL
    SELECT 'main', 'c1', 1, 1 UNION ALL
    SELECT 'main', 'c0', 0, 0
  ]);

  SELECT sum(two) FROM cc;



  SELECT one FROM cc WHERE one>='seven'



  SELECT y.one FROM cc AS x, cc AS y WHERE x.one=y.one AND x.rowid>5



  SELECT cc.one FROM c4, cc WHERE cc.rowid>c4.rowid



  SELECT * FROM cc WHERE two LIKE '6'

