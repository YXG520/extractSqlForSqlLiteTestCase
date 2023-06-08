set s $::sqlite_sync_count
  set res [execsql $sql]
  concat [expr $::sqlite_sync_count-$s] $res

uplevel [list do_test $tn [list execsql_sync $sql] [list {*
CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);

INSERT INTO t1 VALUES(3, 4) 
PRAGMA main.synchronous = NORMAL 
PRAGMA main.synchronous 
INSERT INTO t1 VALUES(5, 6) 
PRAGMA main.synchronous = OFF 
PRAGMA main.synchronous 
INSERT INTO t1 VALUES(7, 8) 
PRAGMA main.synchronous = FULL 
PRAGMA main.synchronous 
INSERT INTO t1 VALUES(9, 10) 
wal
INSERT INTO t1 VALUES(11, 12) 
INSERT INTO t1 VALUES(13, 14) 
PRAGMA main.synchronous = NORMAL 
PRAGMA main.synchronous 
INSERT INTO t1 VALUES(15, 16) 
2 0 3 3
PRAGMA main.synchronous = OFF 
PRAGMA main.synchronous 
INSERT INTO t1 VALUES(17, 18) 
db close
  sqlite3 db test.db

  # Wal mode, sync=normal. The first transaction does one sync on directory,
  # one on the wal file. The second does no syncs.
  do_execsql_sync_test 1.11.1 { INSERT INTO t1 VALUES(19, 20) 
INSERT INTO t1 VALUES(21, 22) 
PRAGMA main.synchronous 
2 0 2 2
INSERT INTO t1 VALUES(22, 23) 
INSERT INTO t1 VALUES(24, 25) 
delete
INSERT INTO t1 VALUES(26, 27) 
INSERT INTO t1 VALUES(28, 29) 
PRAGMA main.synchronous 
wal
INSERT INTO t1 VALUES(30, 31) 
INSERT INTO t1 VALUES(32, 33) 
PRAGMA main.synchronous 
PRAGMA main.synchronous=off 
delete
INSERT INTO t1 VALUES(34, 35) 
INSERT INTO t1 VALUES(36, 37) 
PRAGMA main.synchronous 
INSERT INTO t1 VALUES(38, 39) 
INSERT INTO t1 VALUES(40, 41) 
PRAGMA main.synchronous 
