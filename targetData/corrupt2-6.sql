
 $::presql pragma incremental_vacuum = 1 

    PRAGMA auto_vacuum = incremental;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
    INSERT INTO t1 VALUES(1, randomblob(2500));
    INSERT INTO t1 VALUES(2, randomblob(50));
    INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
    INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
    INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
    INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
    DELETE FROM t1 WHERE a = 1;
  

 $::presql pragma incremental_vacuum = 1 

    PRAGMA auto_vacuum = incremental;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
    INSERT INTO t1 VALUES(1, randomblob(2500));
    INSERT INTO t1 VALUES(2, randomblob(2500));
    INSERT INTO t1 VALUES(3, randomblob(2500));
    DELETE FROM t1 WHERE a = 1;
  

 $::presql pragma incremental_vacuum = 1 

      PRAGMA auto_vacuum = 1;
      PRAGMA page_size = 1024;
      CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1, randomblob(2500));
      DELETE FROM t1 WHERE a = 1;
    

 
          $::presql 
          BEGIN EXCLUSIVE;
          COMMIT;
        

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  CREATE INDEX i1 ON t1(b);
  INSERT INTO t1 VALUES(1, randomblob(50));
  INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
  INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
  INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
  INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
  INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;
  INSERT INTO t1 SELECT NULL, randomblob(50) FROM t1;


  # Set the page-flags of one of the leaf pages of the index B-Tree to
  # 0x0D (interpreted by SQLite as "leaf page of a table B-Tree").
  #
  set fd [open corrupt.db r+]
  fconfigure $fd -translation binary -encoding binary
  seek $fd [expr 1024*2 + 8] 
  set zRightChild [read $fd 4]
  binary scan $zRightChild I iRightChild
  seek $fd [expr 1024*($iRightChild-1)]
  puts -nonewline $fd "\x0D"
  close $fd

