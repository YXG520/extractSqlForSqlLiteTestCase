


    INSERT INTO t1 VALUES(1,1);
    INSERT INTO t1 VALUES(2,2);
    INSERT INTO t1 SELECT a+2, a+2 FROM t1;
    INSERT INTO t1 SELECT a+4, a+4 FROM t1;
    SELECT b FROM t1 WHERE a>3 AND a<7;
  


    SELECT a FROM t1 WHERE b>3 AND b<7;
  


    SELECT b FROM t1 WHERE a>=3 AND a<7;
  


    SELECT b FROM t1 WHERE a>3 AND a<=7;
  


    SELECT b FROM t1 WHERE a>=3 AND a<=7;
  


    SELECT a FROM t1 WHERE b>=3 AND b<=7;
  

  set ::sqlite_sort_count 0
  set data [execsql $sql]
  if {$::sqlite_sort_count
set x sort
set x nosort
