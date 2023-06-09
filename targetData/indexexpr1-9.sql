

  CREATE TABLE t9(a,b,c,d);
  CREATE UNIQUE INDEX t9x1 ON t9(c,abs(d),b);
  INSERT INTO t9(rowid,a,b,c,d) VALUES(1,2,3,4,5);
  INSERT INTO t9(rowid,a,b,c,d) VALUES(2,NULL,NULL,NULL,NULL);
  INSERT INTO t9(rowid,a,b,c,d) VALUES(3,NULL,NULL,NULL,NULL);
  INSERT INTO t9(rowid,a,b,c,d) VALUES(4,5,6,7,8);
  PRAGMA integrity_check;



  INSERT INTO t9(a,b,c,d) VALUES(5,6,7,-8);

