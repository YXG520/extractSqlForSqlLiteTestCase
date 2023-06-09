

    SELECT * FROM t1
  




    SELECT * FROM t1
  


    INSERT INTO t1 SELECT a+10 FROM t1 WHERE a < 6
  

    DELETE FROM t1 WHERE a > 10
  

    INSERT INTO t1 SELECT a+10 FROM t1 WHERE a < 9
  

    SELECT count(*) FROM t1
  


    INSERT INTO t1 VALUES(11)
  

    INSERT INTO t1 VALUES(12)
  


    SELECT count(*) FROM t1
  


    SELECT * FROM t1;
  

SELECT count(*) FROM t1

    SELECT sum(a) FROM t1
  



    CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    INSERT INTO abc VALUES(4, 5, 6);
    INSERT INTO abc VALUES(7, 8, 9);
  
SELECT a, b, c FROM abc

    lappend ::res $a $b $c
    db progress 5 "expr 1"
    catch {db eval {SELECT a, b, c FROM abc
 
