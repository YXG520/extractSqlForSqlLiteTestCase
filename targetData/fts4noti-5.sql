

  CREATE VIRTUAL TABLE t2 USING fts4(
      notindexed="three", one, two, three, notindexed="one",
  );
  INSERT INTO t2 VALUES('a', 'b', 'c');
  INSERT INTO t2 VALUES('c', 'a', 'b');
  INSERT INTO t2 VALUES('b', 'c', 'a');


 SELECT docid FROM t2 WHERE t2 MATCH 'a' 
2

 SELECT docid FROM t2 WHERE t2 MATCH 'b' 
1

 SELECT docid FROM t2 WHERE t2 MATCH 'c' 
3

 DROP TABLE t2 
