

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1),(4),(6),(7),(8),(9),(11),(11),(11);
  
SELECT percentile(x,0) FROM t1

SELECT percentile(x,$in) FROM t1

INSERT INTO t1 VALUES(NULL),(NULL);

SELECT percentile(x,$in) FROM t1

SELECT round(percentile(x, 15+0.000001*rowid),1) FROM t1

SELECT round(percentile(x, 15+0.1*rowid),1) FROM t1


    CREATE TABLE t2(x);
    INSERT INTO t2 SELECT x+0.0 FROM t1 ORDER BY random();
  

SELECT percentile(x,$in) FROM t2

SELECT percentile(x,0,1) FROM t1

SELECT percentile(x) FROM t1

SELECT percentile(x,null) FROM t1

SELECT percentile(x,'fifty') FROM t1

SELECT percentile(x,x'3530') FROM t1

SELECT percentile(x,-0.0000001) FROM t1

SELECT percentile(x,100.0000001) FROM t1


    BEGIN;
    UPDATE t1 SET x='50' WHERE x IS NULL;
    SELECT percentile(x, 50) FROM t1;
  


    ROLLBACK;
    BEGIN;
    UPDATE t1 SET x=x'3530' WHERE x IS NULL;
    SELECT percentile(x, 50) FROM t1;
  


    ROLLBACK;
    SELECT percentile(x, 50) FROM t1;
  


    UPDATE t1 SET x=NULL;
    SELECT ifnull(percentile(x, 50),'NULL') FROM t1
  


    UPDATE t1 SET x=12345 WHERE rowid=5;
    SELECT percentile(x, 0), percentile(x, 50), percentile(x,100) FROM t1
  


    DELETE FROM t1;
    INSERT INTO t1 SELECT x+0.0 FROM t2;
    UPDATE t1 SET x=1.0e300*1.0e300 WHERE rowid=5;
    SELECT percentile(x,50) from t1;
  


    UPDATE t1 SET x=-1.0e300*1.0e300 WHERE rowid=5;
    SELECT percentile(x,50) from t1;
  
