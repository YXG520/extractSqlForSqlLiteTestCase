

    CREATE VIRTUAL TABLE t2 USING fts4(order=DESC);
  
 INSERT INTO t2(docid, content) VALUES($i, $x) 
 INSERT INTO t2(t2) VALUES('optimize') 


  SELECT count(*) FROM t2 WHERE t2 MATCH '"never zero"'



  SELECT count(*) FROM t2 WHERE t2 MATCH '"two zero"'

