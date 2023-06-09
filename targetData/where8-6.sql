

  CREATE TABLE t600(a PRIMARY KEY, b) WITHOUT rowid;
  CREATE INDEX t600b ON t600(b);
  INSERT INTO t600 VALUES('state','screen'),('exact','dolphin'),('green','mercury');
  SELECT a, b, '|' FROM t600 WHERE a=='state' OR b='mercury' ORDER BY +a;

