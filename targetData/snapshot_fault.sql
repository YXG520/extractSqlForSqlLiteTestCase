if {$msg != "SQLITE_ERROR_SNAPSHOT" && $msg != "SQLITE_BUSY"
if {$msg != "SQLITE_ERROR_SNAPSHOT" && $msg != "SQLITE_BUSY"
error $msg
  
1 SQLITE_NOMEM
1 SQLITE_IOERR_READ
PRAGMA journal_mode = wal;
  CREATE TABLE t1(zzz);
  INSERT INTO t1 VALUES('abc');
  INSERT INTO t1 VALUES('def');

1 SQLITE_IOERR_NOMEM
PRAGMA page_size = 512;
  PRAGMA journal_mode = wal;
  PRAGMA wal_autocheckpoint = 0;
  CREATE TABLE t1(zzz);
  INSERT INTO t1 VALUES(randomblob( 500 * 9500 ));
  PRAGMA user_version = 211;

PRAGMA page_size = 512;
  PRAGMA journal_mode = wal;
  PRAGMA wal_autocheckpoint = 0;
  CREATE TABLE t1(zzz);
  INSERT INTO t1 VALUES(randomblob( 5000 ));
  PRAGMA user_version = 211;

SELECT count(*) FROM sqlite_master 
1 SQLITE_NOMEM
