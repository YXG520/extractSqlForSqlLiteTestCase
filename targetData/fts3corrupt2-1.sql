
 CREATE VIRTUAL TABLE t2 USING FTS3(a, b); 
 INSERT INTO t2(t2) VALUES('nodesize=32') 
 INSERT INTO t2 VALUES($d, $d) 
 SELECT count(*) FROM t2_segments 
SELECT rowid, length(block), block FROM t2_segments
 UPDATE t2_segments SET block = $b2 WHERE rowid = $rowid 

 SELECT * FROM t2 WHERE t2 MATCH 'a*' 
 UPDATE t2_segments SET block = $blob WHERE rowid = $rowid 
SELECT rowid, length(root), root FROM t2_segdir
 UPDATE t2_segdir SET root = $b2 WHERE rowid = $rowid 
