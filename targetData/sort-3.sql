

    CREATE TABLE t2(a,b);
    INSERT INTO t2 VALUES('AGLIENTU',1);
    INSERT INTO t2 VALUES('AGLIE`',2);
    INSERT INTO t2 VALUES('AGNA',3);
    SELECT a, b FROM t2 ORDER BY a;
  


    SELECT a, b FROM t2 ORDER BY a DESC;
  


    DELETE FROM t2;
    INSERT INTO t2 VALUES('aglientu',1);
    INSERT INTO t2 VALUES('aglie`',2);
    INSERT INTO t2 VALUES('agna',3);
    SELECT a, b FROM t2 ORDER BY a;
  


    SELECT a, b FROM t2 ORDER BY a DESC;
  