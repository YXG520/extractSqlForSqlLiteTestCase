

    PRAGMA encoding=UTF16;
    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,'abc');
    INSERT INTO t1 VALUES(2,'def');
    INSERT INTO t1 VALUES(3,'ghi');
    SELECT a FROM t1 WHERE length(b)<10 AND b<>'def' ORDER BY a;
  
