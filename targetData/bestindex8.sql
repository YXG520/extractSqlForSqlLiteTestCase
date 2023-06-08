CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES('a', 'b'), ('c', 'd');
  INSERT INTO t1 VALUES('a', 'b'), ('c', 'd');
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

  CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES (1), (0);

1 "SELECT a, b FROM vt1"                              0 0 0 {a b c d a b c d
CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

SELECT * FROM vt1 LIMIT 10 
SELECT * FROM vt1 LIMIT 5 OFFSET 50 
SELECT * FROM vt1 ORDER BY a, b LIMIT 1 OFFSET 1 
SELECT * FROM vt1 ORDER BY a, +b LIMIT 1 OFFSET 1 
CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

1 "SELECT * FROM vt1 WHERE b IN (10, 20, 30)" {{10 20 30
CREATE TABLE t1(a, b, c);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

1 "SELECT * FROM vt1 WHERE b = 10" {10
set real_sql "
          WITH c(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM c WHERE i<$off )
          SELECT 0,0,0,0 FROM c
          UNION ALL SELECT * FROM (
            $sql
          )
        "
      
CREATE TABLE t1(a, b, c);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(2, 3, 4);
  INSERT INTO t1 VALUES(3, 4, 5);
  INSERT INTO t1 VALUES(1, 5, 6);
  INSERT INTO t1 VALUES(2, 6, 7);
  INSERT INTO t1 VALUES(3, 7, 8);
  INSERT INTO t1 VALUES(1, 8, 9);
  INSERT INTO t1 VALUES(2, 9, 0);

set ::lFilterSql [list]
  uplevel [list do_execsql_test $tn.1 $sql $res]
  uplevel [list do_test $tn.2 {set ::lFilterSql
