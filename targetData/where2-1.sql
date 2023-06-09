

    BEGIN;
    CREATE TABLE t1(w int, x int, y int, z int);
  
INSERT INTO t1 VALUES($::w,$::x,$::y,$::z)
INSERT INTO t1 VALUES(:w,:x,:y,:z)

    CREATE UNIQUE INDEX i1w ON t1(w);
    CREATE INDEX i1xy ON t1(x,y);
    CREATE INDEX i1zyx ON t1(z,y,x);
    COMMIT;
  

  set ::sqlite_search_count 0
  return [concat [execsql $sql] $::sqlite_search_count]


  set data [execsql $sql]
  if {[db status sort]

  set ::sqlite_sort_count 0
  set data [execsql $sql]
  if {$::sqlite_sort_count
set x sort
set x nosort
EXPLAIN QUERY PLAN $sql

S

S
