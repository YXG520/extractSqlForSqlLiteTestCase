forcecopy $dbfile dq.db
  sqlite3 dq dq.db
  set res [execsql $sql dq]
  dq close
  set res

CREATE TABLE t1(a PRIMARY KEY, b);
  CREATE INDEX i1 ON t1(b);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);
  INSERT INTO t1 VALUES(5, 6);
  INSERT INTO t1 VALUES(7, 8);

error "Transaction rolled back!" 
CREATE TABLE t1(a PRIMARY KEY, b, c);
  CREATE INDEX i1 ON t1(b);
  CREATE INDEX i2 ON t1(c, b);
  INSERT INTO t1 VALUES(1, 2,  randomblob(600));
  INSERT INTO t1 VALUES(3, 4,  randomblob(600));
  INSERT INTO t1 VALUES(5, 6,  randomblob(600));
  INSERT INTO t1 VALUES(7, 8,  randomblob(600));
  INSERT INTO t1 VALUES(9, 10, randomblob(600));

error "Transaction rolled back!" 
error "Transaction rolled back!" 
SELECT a, b FROM t1 
