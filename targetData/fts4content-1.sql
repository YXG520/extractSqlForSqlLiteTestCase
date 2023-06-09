

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('w x', 'x y', 'y z');
  CREATE VIRTUAL TABLE ft1 USING fts4(content=t1);



  PRAGMA table_info(ft1);


 SELECT *, rowid FROM ft1 
{w x
x y
y z

 SELECT a, c FROM ft1 WHERE rowid=1 
{w x
y z

 INSERT INTO ft1(ft1) VALUES('rebuild') 


 SELECT rowid FROM ft1 WHERE ft1 MATCH 'x' 
1

 SELECT rowid FROM ft1 WHERE ft1 MATCH 'a' 



  DROP TABLE ft1;
  CREATE VIRTUAL TABLE ft1 USING fts4(content=t1, b);
  PRAGMA table_info(ft1);


 
  SELECT *, rowid FROM ft1 

