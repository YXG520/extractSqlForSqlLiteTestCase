

  } {1 {database disk image is malformed}}
}

ifcapable autovacuum {
  # It is not possible for the last page in a database file to be the
  # pending-byte page (AKA the locking page). This test verifies that if
  # an attempt is made to commit a transaction to such an auto-vacuum 
  # database SQLITE_CORRUPT is returned.
  #
  corruption_test -tclprep {
    db eval { 
      PRAGMA auto_vacuum = full;
      PRAGMA page_size = 1024;
      CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
      INSERT INTO t1 VALUES(NULL, randstr(50,50));
    }
    for {set ii 0} {$ii < 10} {incr ii} {
      db eval 
