

  CREATE VIRTUAL TABLE t2 USING fts4(poi, addr, notindexed=poi);
  INSERT INTO t2 VALUES(114, 'x x x');
  INSERT INTO t2 VALUES(X'1234', 'y y y');
  INSERT INTO t2 VALUES(NULL, 'z z z');
  INSERT INTO t2 VALUES(113.2, 'w w w');
  INSERT INTO t2 VALUES('poi', 'v v v');


 SELECT typeof(poi) FROM t2 WHERE t2 MATCH 'x' 
integer

 SELECT typeof(poi) FROM t2 WHERE t2 MATCH 'y' 
blob

 SELECT typeof(poi) FROM t2 WHERE t2 MATCH 'z' 
null

 SELECT typeof(poi) FROM t2 WHERE t2 MATCH 'w' 
real

 SELECT typeof(poi) FROM t2 WHERE t2 MATCH 'v' 
text

 DROP TABLE t2 
