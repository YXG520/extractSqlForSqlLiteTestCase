

    $::presql
    PRAGMA auto_vacuum = 0;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b, c);
    CREATE TABLE t2(a, b, c);
    INSERT INTO t2 VALUES(randomblob(100), randomblob(100), randomblob(100));
    INSERT INTO t2 SELECT * FROM t2;
    INSERT INTO t2 SELECT * FROM t2;
    INSERT INTO t2 SELECT * FROM t2;
    INSERT INTO t2 SELECT * FROM t2;
    INSERT INTO t1 SELECT * FROM t2;
  
SELECT rowid FROM t1

    set result [db2 eval {pragma integrity_check

}
  set A(-tclprep) {
