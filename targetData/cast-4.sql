

    CREATE TABLE t1(a);
    INSERT INTO t1 VALUES('abc');
    SELECT a, CAST(a AS integer) FROM t1;
  


    SELECT CAST(a AS integer), a FROM t1;
  


    SELECT a, CAST(a AS integer), a FROM t1;
  


    SELECT CAST(a AS integer), a, CAST(a AS real), a FROM t1;
  
