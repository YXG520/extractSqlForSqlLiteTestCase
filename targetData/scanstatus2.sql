CREATE TABLE t1(a, b);
  CREATE TABLE t2(x, y);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);
  INSERT INTO t2 VALUES('a', 'b');
  INSERT INTO t2 VALUES('c', 'd');
  INSERT INTO t2 VALUES('e', 'f');

db eval $sql
  set stmt [db version -last-stmt-ptr]
  set idx 0
  set ret [list]

  set cmd sqlite3_stmt_scanstatus
  set f [list]
  if {$v2
db eval $sql
  set stmt [db version -last-stmt-ptr]
  set graph [string trim [get_graph $stmt]]

  set graph [regsub -all {nCycle=[0-9]+
db eval $sql
  set stmt [db version -last-stmt-ptr]
  puts [string trim [get_graph $stmt]]

CREATE VIRTUAL TABLE ft USING fts5(a);
    INSERT INTO ft VALUES('abc');
    INSERT INTO ft VALUES('def');
    INSERT INTO ft VALUES('ghi');
  
CREATE TABLE x1(a, b);
  CREATE TABLE x2(c, d);

  WITH s(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<1000)
  INSERT INTO x1 SELECT i, i FROM s;
  INSERT INTO x2 SELECT a, b FROM x1;

CREATE TABLE rt1 (id INTEGER PRIMARY KEY, x1, x2);
  CREATE TABLE rt2 (id, x1, x2);

CREATE TABLE t1(x, y);
    CREATE TRIGGER tr1 AFTER DELETE ON t1 BEGIN
      SELECT 1;
    END;
    INSERT INTO t1 VALUES(1, 2);
  
array set A [sqlite3_stmt_scanstatus -flags complex [format %x $stmt] 0]
    lappend ::trace_explain $A(zExplain)
  
DELETE FROM t1 WHERE x=1;
  
