

    CREATE TABLE t1(w, x, y);
    CREATE INDEX i1wxy ON t1(w,x,y);
    INSERT INTO t1 VALUES(1,2,3);
    INSERT INTO t1 VALUES(1,NULL,3);
    INSERT INTO t1 VALUES('a','b','c');
    INSERT INTO t1 VALUES('a',NULL,'c');
    INSERT INTO t1 VALUES(X'78',x'79',x'7a');
    INSERT INTO t1 VALUES(X'78',NULL,X'7A');
    INSERT INTO t1 VALUES(NULL,NULL,NULL);
    SELECT count(*) FROM t1;
  

  set ::sqlite_search_count 0
  return [concat [execsql $sql] $::sqlite_search_count]

















