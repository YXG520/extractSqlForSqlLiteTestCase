CREATE TABLE t1(a, b);
  PRAGMA journal_mode = DELETE;

sqlite3 dbI test.db
      dbI timeout 100
      set rc 1
      set nBusy 0
      while {$rc
sqlite3 dbR test.db
      catch {
        dbR eval { SELECT count(*) FROM t1 
SELECT count(*) FROM t1 
SELECT count(*) FROM t1;

