

    CREATE TABLE t1(x int, y int);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(3,4);
    SELECT x FROM t1 ORDER BY y;
  

SELECT rowid FROM t1 ORDER BY x

SELECT x FROM t1 WHERE rowid==$x2rowid(1)

SELECT x FROM t1 WHERE rowid==$x2rowid(3)

SELECT x FROM t1 WHERE oid==$x2rowid(1)

SELECT x FROM t1 WHERE OID==$x2rowid(3)

SELECT x FROM t1 WHERE _rowid_==$x2rowid(1)

SELECT x FROM t1 WHERE rowid=$norow

SELECT x, oid FROM t1 order by x

SELECT x, RowID FROM t1 order by x

SELECT x, _rowid_ FROM t1 order by x
