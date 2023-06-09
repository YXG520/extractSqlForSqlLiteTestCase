
SELECT f1 FROM test1 ORDER BY f1

SELECT f1 FROM test1 ORDER BY -f1

SELECT f1 FROM test1 ORDER BY min(f1,f2)

SELECT f1 FROM test1 ORDER BY min(f1)


  INSERT INTO test1(f1) SELECT f1 FROM test1 ORDER BY min(f1);


#    SELECT f1 FROM test1 ORDER BY 8.4;
#  

#    SELECT f1 FROM test1 ORDER BY '8.4';
#  

#    SELECT f1 FROM test1 ORDER BY 'xyz';
#  

#    SELECT f1 FROM test1 ORDER BY -8.4;
#  

#    SELECT f1 FROM test1 ORDER BY +8.4;
#  

#    SELECT f1 FROM test1 ORDER BY 4294967296; -- constant larger than 32 bits
#  


    SELECT f1 FROM test1 ORDER BY 8.4
  


    SELECT f1 FROM test1 ORDER BY '8.4'
  


    CREATE TABLE t5(a,b);
    INSERT INTO t5 VALUES(1,10);
    INSERT INTO t5 VALUES(2,9);
    SELECT * FROM t5 ORDER BY 1;
  


    SELECT * FROM t5 ORDER BY 2;
  


    SELECT * FROM t5 ORDER BY +2;
  


    SELECT * FROM t5 ORDER BY 3;
  


    SELECT * FROM t5 ORDER BY -1;
  


    INSERT INTO t5 VALUES(3,10);
    SELECT * FROM t5 ORDER BY 2, 1 DESC;
  


    SELECT * FROM t5 ORDER BY 1 DESC, b;
  


    SELECT * FROM t5 ORDER BY b DESC, 1;
  
