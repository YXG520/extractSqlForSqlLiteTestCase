

  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4;


 INSERT INTO t1 VALUES('one') 
 INSERT INTO t1 VALUES('two') 
 INSERT INTO t1 VALUES('three') 
 INSERT INTO t1 VALUES('four') 


  UPDATE t1_stat SET value = X'0000';
  SELECT matchinfo(t1, 'nxa') FROM t1 WHERE t1 MATCH 't*';




  UPDATE t1_stat SET value = NULL;
  SELECT matchinfo(t1, 'nxa') FROM t1 WHERE t1 MATCH 't*';


