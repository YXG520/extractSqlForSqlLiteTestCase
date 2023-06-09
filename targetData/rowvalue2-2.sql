

  CREATE TABLE t2(a INTEGER, b INTEGER, c INTEGER, d INTEGER);
  CREATE INDEX i2 ON t2(a, b, c);


 INSERT INTO t2 VALUES($a, $b, $c, $c + $b*4 + $a*16); 


  SELECT d FROM t2 WHERE (a, b) > (2, 2);

 SELECT d FROM t2 WHERE a>2 OR (a=2 AND b>2) 


  SELECT d FROM t2 WHERE (a, b) >= (2, 2);

 SELECT d FROM t2 WHERE a>2 OR (a=2 AND b>=2) 


  SELECT d FROM t2 WHERE a=1 AND (b, c) >= (1, 2);

 SELECT d FROM t2 WHERE +a=1 AND (b>1 OR (b==1 AND c>=2)) 


  SELECT d FROM t2 WHERE a=1 AND (b, c) > (1, 2);

 SELECT d FROM t2 WHERE +a=1 AND (b>1 OR (b==1 AND c>2)) 
