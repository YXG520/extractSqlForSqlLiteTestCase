
 CREATE VIRTUAL TABLE t1 USING fts4(words) 


  SELECT min(docid), max(docid) FROM t1;

