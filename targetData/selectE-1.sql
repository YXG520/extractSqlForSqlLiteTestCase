

    CREATE TABLE t1(a);
    INSERT INTO t1 VALUES('abc'),('def'),('ghi');
    CREATE TABLE t2(a);
    INSERT INTO t2 VALUES('DEF'),('abc');
    CREATE TABLE t3(a);
    INSERT INTO t3 VALUES('def'),('jkl');

    SELECT a FROM t1 EXCEPT SELECT a FROM t2
     ORDER BY a COLLATE nocase;
  


    SELECT a FROM t2 EXCEPT SELECT a FROM t3
     ORDER BY a COLLATE nocase;
  


    SELECT a FROM t2 EXCEPT SELECT a FROM t3
     ORDER BY a COLLATE binary;
  


    SELECT a FROM t2 EXCEPT SELECT a FROM t3
     ORDER BY a;
  
