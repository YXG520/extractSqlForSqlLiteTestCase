# Build a map from root page to table/index name.
  db eval {
    SELECT name, rootpage FROM sqlite_master
  
if {$R(opcode)=="OpenWrite"
if {$R(opcode) == "Delete"
uplevel [list do_test $tn [list analyze_delete_program $sql] [list {*
CREATE TABLE t1(a PRIMARY KEY, b);

1 { DELETE FROM t1 WHERE a=?
CREATE TABLE t2(a, b, c);
  CREATE INDEX t2a ON t2(a);
  CREATE INDEX t2b ON t2(b);
  CREATE INDEX t2c ON t2(c);

1 { DELETE FROM t2 WHERE a=?
CREATE TABLE x1(a INTEGER PRIMARY KEY, b, c, d);
  CREATE TABLE x2(a INTEGER PRIMARY KEY, b, c, d);

CREATE TABLE log(x);
  CREATE TABLE p1(one PRIMARY KEY, two);

  CREATE TRIGGER tr_bd BEFORE DELETE ON p1 BEGIN
    INSERT INTO log VALUES('delete');
  END;
  INSERT INTO p1 VALUES('a', 'A'), ('b', 'B'), ('c', 'C');
  DELETE FROM p1 WHERE one = 'a';

BEGIN TRANSACTION;
  CREATE TABLE tbl(a PRIMARY KEY, b, c);
  CREATE TABLE log(a, b, c);
  INSERT INTO "tbl" VALUES(1,2,3);
  CREATE TRIGGER the_trigger BEFORE DELETE ON tbl BEGIN 
    INSERT INTO log VALUES(1, 2,3);
  END;
  COMMIT;
  DELETE FROM tbl WHERE a=1;

PRAGMA foreign_keys = 1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  CREATE TABLE t2(
      c INTEGER PRIMARY KEY,
      d INTEGER DEFAULT 1 REFERENCES t1 ON DELETE SET DEFAULT
  );

INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');
  INSERT INTO t2 VALUES(1, 2);
  SELECT * FROM t2;

DELETE FROM t1 WHERE a = 2;

