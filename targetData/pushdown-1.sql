

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 'b1', 'c1');
  INSERT INTO t1 VALUES(2, 'b2', 'c2');
  INSERT INTO t1 VALUES(3, 'b3', 'c3');
  INSERT INTO t1 VALUES(4, 'b4', 'c4');
  CREATE INDEX i1 ON t1(a, c);


 SELECT * FROM t1 WHERE a=2 AND f(b) AND f(c) 

 SELECT * FROM t1 WHERE a=3 AND f(c) AND f(b) 


  DROP INDEX i1;
  CREATE INDEX i1 ON t1(a, b);


 SELECT * FROM t1 WHERE a=2 AND f(b) AND f(c) 

 SELECT * FROM t1 WHERE a=3 AND f(c) AND f(b) 
