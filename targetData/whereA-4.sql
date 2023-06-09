

    CREATE TABLE t2(x);
    INSERT INTO t2 VALUES(1);
    INSERT INTO t2 VALUES(2);
    SELECT x FROM t2;
  

  set ::sqlite_sort_count 0
  return [concat [execsql $sql] $::sqlite_sort_count]



    CREATE INDEX t2x ON t2(x);
  

S

S

DROP INDEX t2x;

S
