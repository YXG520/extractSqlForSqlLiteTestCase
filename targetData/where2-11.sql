

    CREATE TABLE t11(a,b,c,d);
    CREATE INDEX i11aba ON t11(a,b,a,c); -- column A occurs twice.
    INSERT INTO t11 VALUES(1,2,3,4);
    INSERT INTO t11 VALUES(5,6,7,8);
    INSERT INTO t11 VALUES(1,2,9,10);
    INSERT INTO t11 VALUES(5,11,12,13);
    SELECT c FROM t11 WHERE a=1 AND b=2 ORDER BY c;
  


    CREATE INDEX i11cccccccc ON t11(c,c,c,c,c,c,c,c); -- repeated column
    SELECT d FROM t11 WHERE c=9;
  


    SELECT d FROM t11 WHERE c IN (1,2,3,4,5);
  


    SELECT d FROM t11 WHERE c=7 OR (a=1 AND b=2) ORDER BY d;
  
