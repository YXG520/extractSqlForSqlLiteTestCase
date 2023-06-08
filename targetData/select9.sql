set nCol 1
  db eval $sql A {
    set nCol [llength $A(*)]
    break
  
test_compound_select $testname $sql $result

  set select [string trim $sql]
  set RE {(.*)(UNION ALL|INTERSECT|UNION)(.*)(ORDER BY.*)
CREATE TABLE t1(a, b, c);
    CREATE TABLE t2(d, e, f);
    BEGIN;
      INSERT INTO t1 VALUES(1,  'one',   'I');
      INSERT INTO t1 VALUES(3,  NULL,    NULL);
      INSERT INTO t1 VALUES(5,  'five',  'V');
      INSERT INTO t1 VALUES(7,  'seven', 'VII');
      INSERT INTO t1 VALUES(9,  NULL,    NULL);
      INSERT INTO t1 VALUES(2,  'two',   'II');
      INSERT INTO t1 VALUES(4,  'four',  'IV');
      INSERT INTO t1 VALUES(6,  NULL,    NULL);
      INSERT INTO t1 VALUES(8,  'eight', 'VIII');
      INSERT INTO t1 VALUES(10, 'ten',   'X');

      INSERT INTO t2 VALUES(1,  'two',      'IV');
      INSERT INTO t2 VALUES(2,  'four',     'VIII');
      INSERT INTO t2 VALUES(3,  NULL,       NULL);
      INSERT INTO t2 VALUES(4,  'eight',    'XVI');
      INSERT INTO t2 VALUES(5,  'ten',      'XX');
      INSERT INTO t2 VALUES(6,  NULL,       NULL);
      INSERT INTO t2 VALUES(7,  'fourteen', 'XXVIII');
      INSERT INTO t2 VALUES(8,  'sixteen',  'XXXII');
      INSERT INTO t2 VALUES(9,  NULL,       NULL);
      INSERT INTO t2 VALUES(10, 'twenty',   'XL');

    COMMIT;
  
DROP INDEX i1;
    DROP INDEX i2;
    DROP INDEX i3;
    DROP INDEX i4;
  
DROP INDEX i1;
    DROP INDEX i2;
    DROP INDEX i3;
  
set ::sqlite_sort_count 0
  set data [execsql $sql]
  if {$::sqlite_sort_count
CREATE INDEX i1 ON t1(a) 
CREATE INDEX i2 ON t2(d) 
CREATE VIEW v1 AS SELECT a FROM t1 UNION ALL SELECT d FROM t2 
DROP INDEX i1;
    DROP INDEX i2;
    DROP VIEW v1;
  
CREATE INDEX i1 ON t1(a) 
CREATE INDEX i2 ON t2(d) 
CREATE VIEW v1 AS SELECT a FROM t1 UNION SELECT d FROM t2 
DROP INDEX i1;
    DROP INDEX i2;
    DROP VIEW v1;
  
CREATE TABLE t61(a);
  CREATE TABLE t62(b);
  INSERT INTO t61 VALUES(111);
  INSERT INTO t62 VALUES(222);
  SELECT a FROM t61 WHERE 0 UNION SELECT b FROM t62;

SELECT a FROM t61 WHERE 0 UNION ALL SELECT b FROM t62;

SELECT a FROM t61 UNION SELECT b FROM t62 WHERE 0;

