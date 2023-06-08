set fd [open tf_main.tcl w]
  puts $fd [subst -nocommands {
    sqlite3_test_control_pending_byte 0x0010000
    sqlite3 db test.db
    set rc [catch { db eval {$sql
CREATE TABLE t1(a, b);
    BEGIN;
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES(3, 4)
INSERT INTO t1 VALUES(3, 4)
INSERT INTO t1 VALUES(1, 2)
BEGIN;
    SELECT * FROM t1 ORDER BY a;
  
INSERT INTO t1 VALUES(5, 6)
