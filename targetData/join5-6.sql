

  CREATE TABLE t1(x); 
  INSERT INTO t1 VALUES(1);

  CREATE TABLE t2(y INTEGER PRIMARY KEY,a,b);
  INSERT INTO t2 VALUES(1,2,3);
  CREATE INDEX t2a ON t2(a); 
  CREATE INDEX t2b ON t2(b); 



  SELECT * FROM t1 LEFT JOIN t2 ON a=2 OR b=3 WHERE y IS NULL;



  CREATE TABLE t3(x);
  INSERT INTO t3 VALUES(1);
  CREATE TABLE t4(y, z);
  SELECT ifnull(z, '!!!') FROM t3 LEFT JOIN t4 ON (x=y);



  CREATE INDEX t4i ON t4(y, ifnull(z, '!!!'));
  SELECT ifnull(z, '!!!') FROM t3 LEFT JOIN t4 ON (x=y);



  CREATE TABLE t1(aa, bb);
  CREATE INDEX t1x1 on t1(abs(aa), abs(bb));
  INSERT INTO t1 VALUES(-2,-3),(+2,-3),(-2,+3),(+2,+3);
  SELECT * FROM (t1) 
   WHERE ((abs(aa)=1 AND 1=2) OR abs(aa)=2)
     AND abs(bb)=3
  ORDER BY +1, +2;

