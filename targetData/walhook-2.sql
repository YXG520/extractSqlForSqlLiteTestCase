
 PRAGMA synchronous = NORMAL 
 PRAGMA wal_autocheckpoint 

 PRAGMA wal_autocheckpoint = 10

 PRAGMA wal_autocheckpoint 

  4 "CREATE TABLE t4(x PRIMARY KEY, y)"   6   3
  5 "INSERT INTO t4 VALUES(1, 'one')"     6   5
  6 "INSERT INTO t4 VALUES(2, 'two')"     6   7
  7 "INSERT INTO t4 VALUES(3, 'three')"   6   9
  8 "INSERT INTO t4 VALUES(4, 'four')"    8  11
  9 "INSERT INTO t4 VALUES(5, 'five')"    8  11


