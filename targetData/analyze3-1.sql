

    BEGIN;
    CREATE TABLE t1(x INTEGER, y);
    CREATE INDEX i1 ON t1(x);
  
 INSERT INTO t1 VALUES($i+100, $i) 

    COMMIT;
    ANALYZE;
  
 SELECT count(*)>0 FROM sqlite_stat4; 


  SELECT count(*) FROM t1 WHERE x>200 AND x<300;
  SELECT count(*) FROM t1 WHERE x>0 AND x<1100;


S

S

S

S

S

S

S

 SELECT sum(y) FROM t1 WHERE x>200 AND x<300 

 SELECT sum(y) FROM t1 WHERE x>$l AND x<$u 

 SELECT sum(y) FROM t1 WHERE x>$l AND x<$u 

 SELECT sum(y) FROM t1 WHERE x>0 AND x<1100 

 SELECT sum(y) FROM t1 WHERE x>$l AND x<$u 

 SELECT sum(y) FROM t1 WHERE x>$l AND x<$u 


    BEGIN;
      CREATE TABLE t2(x TEXT, y);
      INSERT INTO t2 SELECT * FROM t1;
      CREATE INDEX i2 ON t2(x);
    COMMIT;
    ANALYZE;
  

S

S

 SELECT sum(y) FROM t2 WHERE x>12 AND x<20 

SELECT typeof($l), typeof($u), sum(y) FROM t2 WHERE x>$l AND x<$u

SELECT typeof($l), typeof($u), sum(y) FROM t2 WHERE x>$l AND x<$u

 SELECT sum(y) FROM t2 WHERE x>0 AND x<99 

SELECT typeof($l), typeof($u), sum(y) FROM t2 WHERE x>$l AND x<$u

SELECT typeof($l), typeof($u), sum(y) FROM t2 WHERE x>$l AND x<$u


    BEGIN;
      CREATE TABLE t3(y TEXT, x INTEGER);
      INSERT INTO t3 SELECT y, x FROM t1;
      CREATE INDEX i3 ON t3(x);
    COMMIT;
    ANALYZE;
  


  SELECT count(*) FROM t3 WHERE x>200 AND x<300;
  SELECT count(*) FROM t3 WHERE x>0 AND x<1100


S

S

 SELECT sum(y) FROM t3 WHERE x>200 AND x<300 

 SELECT sum(y) FROM t3 WHERE x>$l AND x<$u 

 SELECT sum(y) FROM t3 WHERE x>$l AND x<$u 

 SELECT sum(y) FROM t3 WHERE x>0 AND x<1100 

 SELECT sum(y) FROM t3 WHERE x>$l AND x<$u 

 SELECT sum(y) FROM t3 WHERE x>$l AND x<$u 
