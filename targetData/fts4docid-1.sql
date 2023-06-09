
 CREATE VIRTUAL TABLE t1 USING fts4; 

 INSERT INTO t1(docid, content) VALUES($docid, $content) 
