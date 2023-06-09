

  PRAGMA journal_mode = wal;
  CREATE TABLE t1(x, y);
  INSERT INTO "t1" VALUES('A',0);
  CREATE TABLE t2(x, y);
  INSERT INTO "t2" VALUES('B',2);



 SELECT * FROM t2 


 SELECT count(*) FROM t2 

 INSERT INTO t2 SELECT blob(400), blob(400) FROM t2 
 SELECT count(*) FROM t2 

