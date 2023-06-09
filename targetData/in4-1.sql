

    CREATE TABLE t1(a, b);
    CREATE INDEX i1 ON t1(a);
  


    SELECT * FROM t1 WHERE a IN ('aaa', 'bbb', 'ccc');
  


    INSERT INTO t1 VALUES('aaa', 1);
    INSERT INTO t1 VALUES('ddd', 2);
    INSERT INTO t1 VALUES('ccc', 3);
    INSERT INTO t1 VALUES('eee', 4);
    SELECT b FROM t1 WHERE a IN ('aaa', 'bbb', 'ccc');
  


    SELECT a FROM t1 WHERE rowid IN (1, 3);
  


    SELECT a FROM t1 WHERE rowid IN ();
  


    SELECT a FROM t1 WHERE a IN ('ddd');
  