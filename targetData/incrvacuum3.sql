puts -nonewline $fd2 [read $fd $::sqlite_pending_byte]
    seek $fd [expr $::sqlite_pending_byte+512]
    seek $fd2 [expr $::sqlite_pending_byte+512]
  
1 {
      CREATE TABLE t1(x UNIQUE);
      INSERT INTO t1 VALUES(randomblob(400));
      INSERT INTO t1 VALUES(randomblob(400));
      INSERT INTO t1 SELECT randomblob(400) FROM t1;    --   4
      INSERT INTO t1 SELECT randomblob(400) FROM t1;    --   8
      INSERT INTO t1 SELECT randomblob(400) FROM t1;    --  16
      INSERT INTO t1 SELECT randomblob(400) FROM t1;    --  32
      INSERT INTO t1 SELECT randomblob(400) FROM t1;    --  64
      INSERT INTO t1 SELECT randomblob(400) FROM t1;    -- 128
      INSERT INTO t1 SELECT randomblob(400) FROM t1;    -- 256
    
PRAGMA integrity_check
PRAGMA freelist_count   
SELECT count(*) FROM t1 
