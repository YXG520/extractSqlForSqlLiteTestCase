uplevel execsql [list "EXPLAIN QUERY PLAN $sql"] $db

set ::sqlite_search_count 0
  set r [uplevel [list execsql $sql $db]]

  concat $::sqlite_search_count [$db status step] $r

BEGIN;
    CREATE TABLE t1(x INTEGER, y);
    CREATE INDEX i1 ON t1(x);
  
INSERT INTO t1 VALUES($i+100, $i) 
COMMIT;
    ANALYZE;
  
SELECT count(*)>0 FROM sqlite_stat4; 
SELECT count(*) FROM t1 WHERE x>200 AND x<300;
  SELECT count(*) FROM t1 WHERE x>0 AND x<1100;

SELECT sum(y) FROM t1 WHERE x>200 AND x<300 
SELECT sum(y) FROM t1 WHERE x>$l AND x<$u 
SELECT sum(y) FROM t1 WHERE x>$l AND x<$u 
SELECT sum(y) FROM t1 WHERE x>0 AND x<1100 
SELECT sum(y) FROM t1 WHERE x>$l AND x<$u 
SELECT sum(y) FROM t1 WHERE x>$l AND x<$u 
BEGIN;
      CREATE TABLE t2(x TEXT, y);
      INSERT INTO t2 SELECT * FROM t1;
      CREATE INDEX i2 ON t2(x);
    COMMIT;
    ANALYZE;
  
SELECT count(*) FROM t2 WHERE x>1 AND x<2;
  SELECT count(*) FROM t2 WHERE x>0 AND x<99;

SELECT sum(y) FROM t2 WHERE x>12 AND x<20 
SELECT typeof($l), typeof($u), sum(y) FROM t2 WHERE x>$l AND x<$u
SELECT typeof($l), typeof($u), sum(y) FROM t2 WHERE x>$l AND x<$u
SELECT sum(y) FROM t2 WHERE x>0 AND x<99 
SELECT typeof($l), typeof($u), sum(y) FROM t2 WHERE x>$l AND x<$u
SELECT typeof($l), typeof($u), sum(y) FROM t2 WHERE x>$l AND x<$u
BEGIN;
      CREATE TABLE t3(y TEXT, x INTEGER);
      INSERT INTO t3 SELECT y, x FROM t1;
      CREATE INDEX i3 ON t3(x);
    COMMIT;
    ANALYZE;
  
SELECT count(*) FROM t3 WHERE x>200 AND x<300;
  SELECT count(*) FROM t3 WHERE x>0 AND x<1100

SELECT sum(y) FROM t3 WHERE x>200 AND x<300 
SELECT sum(y) FROM t3 WHERE x>$l AND x<$u 
SELECT sum(y) FROM t3 WHERE x>$l AND x<$u 
SELECT sum(y) FROM t3 WHERE x>0 AND x<1100 
SELECT sum(y) FROM t3 WHERE x>$l AND x<$u 
SELECT sum(y) FROM t3 WHERE x>$l AND x<$u 
PRAGMA case_sensitive_like=off;
    BEGIN;
    CREATE TABLE t1(a, b TEXT COLLATE nocase);
    CREATE INDEX i1 ON t1(b);
  
INSERT INTO t1 VALUES($i, $t) 
SELECT count(*) FROM t1 WHERE b LIKE 'a%' 
SELECT count(*) FROM t1 WHERE b LIKE '%a' 
SELECT count(*) FROM t1 WHERE b LIKE $like 
SELECT count(*) FROM t1 WHERE b LIKE $like 
SELECT count(*) FROM t1 WHERE b LIKE $like 
SELECT count(*) FROM t1 WHERE b LIKE $like 
SELECT count(*) FROM t1 WHERE b LIKE $like 
SELECT count(*) FROM t1 WHERE b LIKE $like 
BEGIN;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX i1 ON t1(b);
  
INSERT INTO t1 VALUES($i, $i, $i) 
SELECT * FROM t1 WHERE a IN (
      ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10,
      ?11, ?12, ?13, ?14, ?15, ?16, ?17, ?18, ?19, ?20,
      ?21, ?22, ?23, ?24, ?25, ?26, ?27, ?28, ?29, ?30, ?31
    ) AND b>?32;
  
SELECT * FROM t1 WHERE a IN (
      ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10,
      ?11, ?12, ?13, ?14, ?15, ?16, ?17, ?18, ?19, ?20,
      ?21, ?22, ?23, ?24, ?25, ?26, ?27, ?28, ?29, ?30, ?31, ?32
    ) AND b>?33;
  
SELECT * FROM t1 WHERE a IN (
      ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?33,
      ?11, ?12, ?13, ?14, ?15, ?16, ?17, ?18, ?19, ?20,
      ?21, ?22, ?23, ?24, ?25, ?26, ?27, ?28, ?29, ?30, ?31, ?32
    ) AND b>?10;
  
CREATE TABLE t4(x, y TEXT COLLATE NOCASE);
    CREATE INDEX i4 ON t4(y);
  
SELECT * FROM t4 WHERE x != ? AND y LIKE ?
  
DROP TABLE t1 
BEGIN;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX i1 ON t1(b);
  
INSERT INTO t1 VALUES($i, $i, $i) 
return SQLITE_DENY
CREATE TABLE t2(d, e, f) 
CREATE TABLE t1(x TEXT COLLATE NOCASE);
    CREATE INDEX i1 ON t1(x);
    INSERT INTO t1 VALUES('aaa');
    INSERT INTO t1 VALUES('abb');
    INSERT INTO t1 VALUES('acc');
    INSERT INTO t1 VALUES('baa');
    INSERT INTO t1 VALUES('bbb');
    INSERT INTO t1 VALUES('bcc');
  
lappend R [sqlite3_column_text $S 0]
  
lappend R [sqlite3_column_text $S 0]
  
lappend R [sqlite3_column_text $S1 0]
  
lappend R [sqlite3_column_text $S1 0]
  
DROP TABLE IF EXISTS t1 
CREATE TABLE t1(a, b, c) 
CREATE INDEX i1 ON t1(a, b);
    CREATE INDEX i2 ON t1(c);
  
DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  INSERT INTO t1 VALUES(1,1,'0000');
  CREATE INDEX t0b ON t1(b);
  ANALYZE;
  SELECT c FROM t1 WHERE b=3 AND a BETWEEN 30 AND hex(1);

CREATE TABLE t1(a,b,c);
  CREATE INDEX t1a ON t1(a);
  ANALYZE;
  SELECT * FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t1','t1a','12000');
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t1','t1a','12000');
  ANALYZE sqlite_master;

CREATE TABLE t1(a PRIMARY KEY, v) WITHOUT ROWID;
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1','1 1');
  INSERT INTO sqlite_stat4 VALUES('t1','t1','1','0','0',X'021b76657273696f6e');
  INSERT INTO sqlite_stat4 VALUES('T1','T1','1','0','0',X'021b76657273696f6e');
  ANALYZE sqlite_schema;

CREATE TABLE t1(a INT PRIMARY KEY, b INT) WITHOUT ROWID;
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat4 VALUES
     ('t1','t1','1','2','2',X'03000103'),
     ('t1','sqlite_autoindex_t1_1','1','2','2',X'03000103');
  ANALYZE sqlite_schema;
  PRAGMA integrity_check;

