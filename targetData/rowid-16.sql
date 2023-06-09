

  CREATE TABLE t1(x);
  CREATE TABLE t2(y PRIMARY KEY) WITHOUT ROWID;
  CREATE VIEW v1 AS SELECT x FROM t1;
  CREATE TABLE t3(z);

  INSERT INTO t1(rowid, x) VALUES(1, 1);
  INSERT INTO t2(y) VALUES(2);
  INSERT INTO t3(rowid, z) VALUES(3, 3);


 SELECT rowid FROM t1, t2; 
1

 SELECT rowid FROM t1, v1; 
1

 SELECT rowid FROM t3, v1; 
3

 SELECT rowid FROM t3, (SELECT 123); 
3

 SELECT rowid FROM t2, t1; 
1

 SELECT rowid FROM v1, t1; 
1

 SELECT rowid FROM v1, t3; 
3

 SELECT rowid FROM (SELECT 123), t3; 
3

 SELECT rowid FROM t1, t3; 
1 {no such column: rowid
