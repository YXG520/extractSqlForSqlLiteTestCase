BEGIN;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, randstr(1000,1000));
    INSERT INTO t1 SELECT a+ 1, randstr(1000,1000) FROM t1;
    INSERT INTO t1 SELECT a+ 2, randstr(1000,1000) FROM t1;
    INSERT INTO t1 SELECT a+ 4, randstr(1000,1000) FROM t1;
    INSERT INTO t1 SELECT a+ 8, randstr(1000,1000) FROM t1;
    INSERT INTO t1 SELECT a+16, randstr(1000,1000) FROM t1;
    INSERT INTO t1 SELECT a+32, randstr(1000,1000) FROM t1;
    CREATE INDEX i1 ON t1(b);
    COMMIT;
  
INSERT INTO t1 SELECT a+64, randstr(1000,1000) FROM t1 
do_test backup_ioerr-$iTest.$iError.1 {
      string match SQLITE_IOERR* $rc
    
not an error
UPDATE t1 SET b = randstr(1000,1000) WHERE a < 50 
# The IO error occurred while updating the source database. In this
    # case the backup should be able to continue.
    set rc [B step 5000]
    if { $rc != "SQLITE_IOERR_UNLOCK" 
do_test backup_ioerr-$iTest.$iError.12 {
      string match SQLITE_IOERR* $rc
    
not an error
