

    CREATE TABLE t1(a TEXT COLLATE nocase);
    INSERT INTO t1 VALUES('aaa');
    INSERT INTO t1 VALUES('BBB');
    INSERT INTO t1 VALUES('ccc');
    INSERT INTO t1 VALUES('DDD');
    SELECT a FROM t1 ORDER BY a;
  


    SELECT rowid FROM t1 WHERE a<'ccc' ORDER BY 1
  


    SELECT rowid FROM t1 WHERE a<'ccc' COLLATE binary ORDER BY 1
  


    SELECT rowid FROM t1 WHERE +a<'ccc' ORDER BY 1
  


    SELECT a FROM t1 ORDER BY +a
  


    SELECT a AS x FROM t1 ORDER BY "x";
  


    SELECT a AS x FROM t1 WHERE x<'ccc' ORDER BY 1
  


    SELECT a AS x FROM t1 WHERE x<'ccc' COLLATE binary ORDER BY [x]
  


    SELECT a AS x FROM t1 WHERE +x<'ccc' ORDER BY 1
  


    SELECT a AS x FROM t1 ORDER BY +x
  
