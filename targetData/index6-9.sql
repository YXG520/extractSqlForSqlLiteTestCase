

  CREATE TABLE t9(a int, b int, c int);
  CREATE INDEX t9ca ON t9(c,a) WHERE a in (10,12,20);
  INSERT INTO t9 VALUES(1,1,9),(10,2,35),(11,15,82),(20,19,5),(NULL,7,3);
  UPDATE t9 SET b=c WHERE a in (10,12,20);
  SELECT a,b,c,'|' FROM t9 ORDER BY a;



  DROP TABLE t9;
  CREATE TABLE t9(a int, b int, c int, PRIMARY KEY(a)) WITHOUT ROWID;
  CREATE INDEX t9ca ON t9(c,a) WHERE a in (10,12,20);
  INSERT INTO t9 VALUES(1,1,9),(10,2,35),(11,15,82),(20,19,5);
  UPDATE t9 SET b=c WHERE a in (10,12,20);
  SELECT a,b,c,'|' FROM t9 ORDER BY a;

