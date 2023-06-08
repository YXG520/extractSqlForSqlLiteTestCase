set S [sqlite3_prepare_v2 $db $sql -1 DUMMY]

  set cols [list]
  for {set i 0
lappend cols [sqlite3_column_name $S $i]
  
set r [list]
    for {set i 0
lappend r [list [sqlite3_column_type $S $i] [sqlite3_column_text $S $i]]
    
set sql [te_read_sql db "SELECT * FROM $sqljoin"]
  set te  [te_tbljoin db {*
CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b);
  CREATE TABLE t3(b COLLATE nocase);

  INSERT INTO t1 VALUES(2, 'B');
  INSERT INTO t1 VALUES(1, 'A');
  INSERT INTO t1 VALUES(4, 'D');
  INSERT INTO t1 VALUES(NULL, NULL);
  INSERT INTO t1 VALUES(3, NULL);

  INSERT INTO t2 VALUES(1, 'A');
  INSERT INTO t2 VALUES(2, NULL);
  INSERT INTO t2 VALUES(5, 'E');
  INSERT INTO t2 VALUES(NULL, NULL);
  INSERT INTO t2 VALUES(3, 'C');

  INSERT INTO t3 VALUES('a');
  INSERT INTO t3 VALUES('c');
  INSERT INTO t3 VALUES('b');

DROP INDEX i1 
DROP INDEX i2 
DROP INDEX i3 
CREATE TABLE t4(x TEXT COLLATE nocase);
  CREATE TABLE t5(y INTEGER, z TEXT COLLATE binary);

  INSERT INTO t4 VALUES('2.0');
  INSERT INTO t4 VALUES('TWO');
  INSERT INTO t5 VALUES(2, 'two');

