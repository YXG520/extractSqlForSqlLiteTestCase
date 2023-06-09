

  ATTACH 'test.db2' AS aux;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  CREATE TABLE t2(a INTEGER PRIMARY KEY, b TEXT);
  CREATE TABLE aux.t3(a INTEGER PRIMARY KEY, b TEXT);


  INSERT INTO t1 VALUES(1, 'one'), (2, 'two'), (3, 'three');
  INSERT INTO t2 VALUES(10, 'ten'), (11, 'eleven'), (12, 'twelve');
  INSERT INTO t3 VALUES(20, 'twenty'), (21, 'twenty-one'), (22, 'twenty-two');



  CREATE VIRTUAL TABLE temp.uuu USING unionvtab(
    "VALUES(NULL, 't1', 1, 9),  ('main', 't2', 10, 19), ('aux', 't3', 20, 29)"
  );
  SELECT * FROM uuu;



  PRAGMA table_info(uuu);



  SELECT * FROM uuu WHERE rowid = 3;
  SELECT * FROM uuu WHERE rowid = 11;



  SELECT * FROM uuu WHERE rowid IN (12, 10, 2);



  SELECT * FROM uuu WHERE rowid BETWEEN 3 AND 11;



  SELECT * FROM uuu WHERE rowid BETWEEN 11 AND 15;



  SELECT * FROM uuu WHERE rowid BETWEEN -46 AND 1500;



  CREATE TABLE src(db, tbl, min, max);
  INSERT INTO src VALUES(NULL, 't1', 1, 9);
  INSERT INTO src VALUES('main', 't2', 10, 19);
  INSERT INTO src VALUES('aux', 't3', 20, 29);
  CREATE VIRTUAL TABLE temp.opp USING unionvtab(src);
  SELECT * FROM opp;



  CREATE VIRTUAL TABLE temp.qll USING unionvtab(
    'SELECT * FROM src WHERE db!=''xyz'''
  );
  SELECT * FROM qll WHERE rowid BETWEEN 10 AND 21;

