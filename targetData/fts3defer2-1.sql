

  CREATE VIRTUAL TABLE t1 USING fts4;


INSERT INTO t1 VALUES('[string repeat {a } 20000]')

INSERT INTO t1 VALUES('[string repeat {z } 20000]')


  INSERT INTO t1 VALUES('a b c d e f a x y');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1(t1) VALUES('optimize');



  SELECT count(*) FROM t1_segments WHERE length(block)>10000;
  UPDATE t1_segments SET block = zeroblob(length(block)) WHERE length(block)>10000;



  SELECT content FROM t1 WHERE t1 MATCH 'f (e a)';



  SELECT content FROM t1 WHERE t1 MATCH 'f (e NEAR/2 a)';



  SELECT snippet(t1, '[', ']'), offsets(t1), mit(matchinfo(t1, 'pcxnal'))
  FROM t1 WHERE t1 MATCH 'f (e NEAR/2 a)';



  SELECT snippet(t1, '[', ']'), offsets(t1), mit(matchinfo(t1, 'pcxnal'))
  FROM t1 WHERE t1 MATCH 'f (e NEAR/3 a)';


 DROP TABLE t1 
