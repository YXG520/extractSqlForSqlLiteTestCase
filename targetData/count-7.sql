

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INT, c VARCHAR(1000));
  CREATE INDEX t1b ON t1(b);
  INSERT INTO t1(a,b,c) values(1,2,'count.test cases for NOT INDEXED');
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='1000000 10' WHERE idx='t1b';
  ANALYZE sqlite_master;


S
Q

S
Q

S
Q

S
Q
