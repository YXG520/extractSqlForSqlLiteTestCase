

    SELECT * FROM t1
  


    PRAGMA count_changes=on
  


    UPDATE t1 SET a=a+10;
  


    INSERT INTO t1 SELECT a+1,b+1,c+1 FROM t1;
  

1


    UPDATE t1 SET a=a+10;
  

2


    SELECT * FROM t1;
  


    INSERT INTO t1 SELECT a+2,b+2,c+2 FROM t1;
  



    SELECT * FROM t1;
  


    UPDATE t1 SET a=a-20;
    SELECT * FROM t1;
  


SELECT count(*) FROM t1

EXPLAIN SELECT * FROM t1
