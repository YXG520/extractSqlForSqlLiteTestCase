

    CREATE TABLE t4(a TEXT);
    INSERT INTO t4 VALUES('1234');
    INSERT INTO t4 VALUES('234');
    INSERT INTO t4 VALUES('34');
    SELECT min(a), max(a) FROM t4;
  


    CREATE TABLE t5(a INTEGER);
    INSERT INTO t5 VALUES('1234');
    INSERT INTO t5 VALUES('234');
    INSERT INTO t5 VALUES('34');
    SELECT min(a), max(a) FROM t5;
  
