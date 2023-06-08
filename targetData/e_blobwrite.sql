CREATE TABLE t1(a INTEGER PRIMARY KEY, t TEXT);
  INSERT INTO t1 VALUES(-1, $dots);
  INSERT INTO t1 VALUES(-2, $dots);
  INSERT INTO t1 VALUES(-3, $dots);
  INSERT INTO t1 VALUES(-4, $dots);
  INSERT INTO t1 VALUES(-5, $dots);
  INSERT INTO t1 VALUES(-6, $dots);

set ret ""
    set isError 0
  
error "test proc misuse!" 
CREATE TABLE t2(a TEXT, b INTEGER PRIMARY KEY);
  INSERT INTO t2 VALUES($dots, 43);
  INSERT INTO t2 VALUES($dots, 44);
  INSERT INTO t2 VALUES($dots, 45);

attempt to write a readonly database
SQL logic error
not an error
SQL logic error
not an error
SQL logic error
DELETE FROM t2 WHERE b=43 
query aborted
SELECT 1, 2, 3 
query aborted
CREATE TABLE t3(i INTEGER PRIMARY KEY, j TEXT, k TEXT);
  INSERT INTO t3 VALUES(1, $dots, $dots);
  INSERT INTO t3 VALUES(2, $dots, $dots);
  SELECT * FROM t3 WHERE i=1;

not an error
UPDATE t3 SET k = 'xyz' WHERE i=1;
  SELECT * FROM t3 WHERE i=1;

query aborted
SELECT * FROM t3 WHERE i=1;

not an error
UPDATE t3 SET j = 'xyz' WHERE i=2;
  SELECT * FROM t3 WHERE i=2;

query aborted
SELECT * FROM t3 WHERE i=2;

