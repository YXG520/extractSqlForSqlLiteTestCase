

    CREATE TABLE t8(x);
    INSERT INTO t8 VALUES('abcdef');
    INSERT INTO t8 VALUES('ghijkl');
    INSERT INTO t8 VALUES('mnopqr');
    SELECT 1, x FROM t8 WHERE x LIKE '%h%';
    SELECT 2, x FROM t8 WHERE x LIKE '%h%' ESCAPE 'x';
  


    SELECT 1, x FROM t8 WHERE x LIKE '%h%';
    SELECT 2, x FROM t8 WHERE x LIKE '%h%' ESCAPE 'x';
  


    SELECT 1, x FROM t8 WHERE x LIKE '%h%';
    SELECT 2, x FROM t8 WHERE x LIKE '%h%' ESCAPE 'x';
  


    SELECT 1, x FROM t8 WHERE x LIKE '%h%';
    SELECT 2, x FROM t8 WHERE x LIKE '%h%' ESCAPE 'x';
  

    set r [db eval $sql]
    lappend r scan [db status step] sort [db status sort]
  
