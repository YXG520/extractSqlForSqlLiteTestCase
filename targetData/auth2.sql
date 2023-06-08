CREATE TABLE t1(a,b,c);
    INSERT INTO t1 VALUES(1,2,3);
  
lappend ::flist $arg2
      if {$arg2=="max"
SELECT max(a,b,c) FROM t1
SELECT min(a,b,c) FROM t1
SELECT coalesce(min(a,b,c),999) FROM t1
SELECT coalesce(a,b,c) FROM t1




























