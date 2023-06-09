

  CREATE VIRTUAL TABLE t1 USING fts3();
  INSERT INTO t1 VALUES('one two three');
  UPDATE t1_segdir SET start_block = 1;


 
  SELECT * FROM t1 WHERE t1 MATCH 'one'; 


 
  SELECT * FROM t1 WHERE t1 MATCH 'two'; 


 
  SELECT * FROM t1 WHERE t1 MATCH 'three'; 



  INSERT INTO t1(t1) VALUES('optimize');

