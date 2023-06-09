

    INSERT INTO t1(docid,a,b,c) VALUES(1, 'one two', 'three four', 'five six');
    INSERT INTO t1(docid,a,b,c) VALUES(2, 'three four', 'five six', 'one two');
  

 SELECT docid FROM t1 WHERE t1 MATCH 'one' 
1 2

 SELECT docid FROM t1 WHERE t1 MATCH 'three' 
2

 SELECT docid FROM t1 WHERE t1 MATCH 'five' 
1

 INSERT INTO t1(t1) VALUES('optimize') 

 SELECT docid FROM t1 WHERE t1 MATCH 'one' 
1 2

 SELECT docid FROM t1 WHERE t1 MATCH 'three' 
2

 SELECT docid FROM t1 WHERE t1 MATCH 'five' 
1

 INSERT INTO t1(t1) VALUES('rebuild') 

 SELECT docid FROM t1 WHERE t1 MATCH 'one' 
1 2

 SELECT docid FROM t1 WHERE t1 MATCH 'three' 
2

 SELECT docid FROM t1 WHERE t1 MATCH 'five' 
1



 DROP TABLE t1 
