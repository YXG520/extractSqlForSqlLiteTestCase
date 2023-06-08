BEGIN;
    CREATE TABLE t1(w int, x int, y int, z int);
  
INSERT INTO t1 VALUES($::w,$::x,$::y,$::z)
INSERT INTO t1 VALUES(:w,:x,:y,:z)
CREATE UNIQUE INDEX i1w ON t1(w);
    CREATE INDEX i1xy ON t1(x,y);
    CREATE INDEX i1zyx ON t1(z,y,x);
    COMMIT;
  
set ::sqlite_sort_count 0
  set data [execsql $sql]
  if {$::sqlite_sort_count
CREATE TABLE t1(x TEXT, y TEXT COLLATE nocase);
  INSERT INTO t1 VALUES('0', 'abc');

