

  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(a INT, b ANY) STRICT;
  INSERT INTO t2(a,b) VALUES(1,2),(3,4.5),(5,'six'),(7,x'8888'),(9,NULL);
  PRAGMA integrity_check(t2);

