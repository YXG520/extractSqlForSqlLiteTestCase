

    INSERT INTO t1 VALUES(4000000000,'a','b');
    SELECT a FROM t1 WHERE a>1;
  


    INSERT INTO t1 VALUES(2147483648,'b2','c2');
    INSERT INTO t1 VALUES(2147483647,'b3','c3');
    SELECT a FROM t1 WHERE a>2147483647;
  


    SELECT a FROM t1 WHERE a<2147483648;
  


    SELECT a FROM t1 WHERE a<=2147483648;
  


    SELECT a FROM t1 WHERE a<10000000000;
  


    SELECT a FROM t1 WHERE a<1000000000000 ORDER BY 1;
  