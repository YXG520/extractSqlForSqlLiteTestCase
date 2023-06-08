set ret [list]

  set stmt [$prepare db $sql -1 dummy]
  execsql $schema
  lappend ret [sqlite3_step $stmt]
  lappend ret [sqlite3_errmsg db]
  lappend ret [sqlite3_finalize $stmt]
  lappend ret [sqlite3_errmsg db]

  set ret

error_messages_worker sqlite3_prepare_v2 $sql $schema

error_messages_worker sqlite3_prepare $sql $schema

error $msg 
SQL logic error
custom message
custom message
custom message
CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
  INSERT INTO t1 VALUES('abc', 'def');

SQL logic error
UNIQUE constraint failed: t1.b
UNIQUE constraint failed: t1.b
UNIQUE constraint failed: t1.b
CREATE TABLE t2(a PRIMARY KEY, b UNIQUE);
  INSERT INTO t2 VALUES('abc', 'def');

SQL logic error
database schema has changed
CREATE TABLE t2(a PRIMARY KEY, b UNIQUE);
  INSERT INTO t2 VALUES('abc', 'def');

no such table: t2
no such table: t2
