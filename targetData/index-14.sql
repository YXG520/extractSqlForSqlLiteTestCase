

    CREATE TABLE t6(a,b,c);
    CREATE INDEX t6i1 ON t6(a,b);
    INSERT INTO t6 VALUES('','',1);
    INSERT INTO t6 VALUES('',NULL,2);
    INSERT INTO t6 VALUES(NULL,'',3);
    INSERT INTO t6 VALUES('abc',123,4);
    INSERT INTO t6 VALUES(123,'abc',5);
    SELECT c FROM t6 ORDER BY a,b;
  


    SELECT c FROM t6 WHERE a='';
  


    SELECT c FROM t6 WHERE b='';
  


    SELECT c FROM t6 WHERE a>'';
  


    SELECT c FROM t6 WHERE a>='';
  


    SELECT c FROM t6 WHERE a>123;
  


    SELECT c FROM t6 WHERE a>=123;
  


    SELECT c FROM t6 WHERE a<'abc';
  


    SELECT c FROM t6 WHERE a<='abc';
  


    SELECT c FROM t6 WHERE a<='';
  


    SELECT c FROM t6 WHERE a<'';
  
