

  CREATE VIRTUAL TABLE u1 USING unionvtab("VALUES(NULL, 't1', 1, 100)");



  CREATE VIRTUAL TABLE main.u1 USING unionvtab("VALUES('', 't1', 1, 100)");



  CREATE VIRTUAL TABLE aux.u1 USING unionvtab("VALUES('', 't1', 1, 100)");



  CREATE VIRTUAL TABLE temp.u1 USING unionvtab("VALUES(NULL, 't555', 1, 100)");



  CREATE VIRTUAL TABLE temp.u1 USING unionvtab("VALUES('aux', 't555', 1, 100)");



  CREATE VIRTUAL TABLE temp.u1 USING unionvtab("VALUES('xua', 't555', 1, 100)");



  CREATE TABLE wr1(a, b, c PRIMARY KEY) WITHOUT ROWID;
  CREATE VIEW v1 AS SELECT * FROM t1;
  CREATE VIEW v2 AS SELECT _rowid_, * FROM t1;

  CREATE TABLE wr2(a, _rowid_ INTEGER, c PRIMARY KEY) WITHOUT ROWID;
  CREATE TABLE wr3(a, b, _rowid_ PRIMARY KEY) WITHOUT ROWID;



  CREATE VIRTUAL TABLE temp.u1 USING unionvtab("VALUES('main', 'wr1', 1, 2)");



  CREATE VIRTUAL TABLE temp.u1 USING unionvtab("VALUES(NULL, 'v1', 1, 2)");



  CREATE VIRTUAL TABLE temp.u1 USING unionvtab("VALUES(NULL, 'v2', 1, 2)");



  CREATE VIRTUAL TABLE temp.u1 USING unionvtab("VALUES(NULL, 'wr2', 1, 2)");



  CREATE VIRTUAL TABLE temp.u1 USING unionvtab("VALUES(NULL, 'wr3', 1, 2)");



  CREATE TABLE x1(a BLOB, b);
  CREATE TABLE x2(a BLOB, b);
  CREATE TEMP TABLE x3(a BLOB, b);

  CREATE TABLE aux.y1(one, two, three INTEGER PRIMARY KEY);
  CREATE TEMP TABLE y2(one, two, three INTEGER PRIMARY KEY);
  CREATE TABLE y3(one, two, three INTEGER PRIMARY KEY);

CREATE VIRTUAL TABLE temp.a1 USING unionvtab(\


  CREATE VIRTUAL TABLE temp.b1 USING unionvtab(
    [SELECT 'main', 'b1', 0, 100 WHERE 0]
  )


  1 { VALUES('main', 't1', 10, 20), ('main', 't2', 30, 29) 


  CREATE VIRTUAL TABLE temp.b1 USING unionvtab(1, 2, 3, 4)

