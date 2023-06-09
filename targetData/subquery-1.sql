

    BEGIN;
    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(3,4);
    INSERT INTO t1 VALUES(5,6);
    INSERT INTO t1 VALUES(7,8);
    CREATE TABLE t2(x,y);
    INSERT INTO t2 VALUES(1,1);
    INSERT INTO t2 VALUES(3,9);
    INSERT INTO t2 VALUES(5,25);
    INSERT INTO t2 VALUES(7,49);
    COMMIT;
  

    SELECT a, (SELECT y FROM t2 WHERE x=a) FROM t1 WHERE b<8
  


    UPDATE t1 SET b=b+(SELECT y FROM t2 WHERE x=a);
    SELECT * FROM t1;
  


    SELECT b FROM t1 WHERE EXISTS(SELECT * FROM t2 WHERE y=a)
  


    SELECT b FROM t1 WHERE NOT EXISTS(SELECT * FROM t2 WHERE y=a)
  


    SELECT a, x FROM t1, t2 WHERE t1.a = (SELECT x);
  


    CREATE INDEX i1 ON t1(a);
    SELECT a, x FROM t1, t2 WHERE t1.a = (SELECT x);
  


    SELECT a, x FROM t2, t1 WHERE t1.a = (SELECT x);
  


    SELECT count(*) FROM t1 WHERE a > (SELECT count(*) FROM t2);
  


    SELECT (y*2)>b FROM t1, t2 WHERE a=x;
  


    SELECT a FROM t1 WHERE (SELECT (y*2)>b FROM t2 WHERE a=x); 
  


    SELECT (SELECT a), b FROM t1;
  


    SELECT * FROM (SELECT (SELECT a), b FROM t1);
  


    SELECT * FROM (SELECT (SELECT sum(a) FROM t1));
  


    CREATE TABLE t5 (val int, period text PRIMARY KEY);
    INSERT INTO t5 VALUES(5, '2001-3');
    INSERT INTO t5 VALUES(10, '2001-4');
    INSERT INTO t5 VALUES(15, '2002-1');
    INSERT INTO t5 VALUES(5, '2002-2');
    INSERT INTO t5 VALUES(10, '2002-3');
    INSERT INTO t5 VALUES(15, '2002-4');
    INSERT INTO t5 VALUES(10, '2003-1');
    INSERT INTO t5 VALUES(5, '2003-2');
    INSERT INTO t5 VALUES(25, '2003-3');
    INSERT INTO t5 VALUES(5, '2003-4');

    SELECT period, vsum
    FROM (SELECT 
      a.period,
      (select sum(val) from t5 where period between a.period and '2002-4') vsum
      FROM t5 a where a.period between '2002-1' and '2002-4')
    WHERE vsum < 45 ;
  


    SELECT period, vsum from
      (select a.period,
      (select sum(val) from t5 where period between a.period and '2002-4') vsum
    FROM t5 a where a.period between '2002-1' and '2002-4') 
    WHERE vsum < 45 ;
  


    DROP TABLE t5;
  
