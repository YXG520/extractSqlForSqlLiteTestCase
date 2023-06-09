

  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES('a', 'b'), ('c', 'd');
  INSERT INTO t1 VALUES('a', 'b'), ('c', 'd');
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

  CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES (1), (0);


  1 "SELECT a, b FROM vt1"                              0 0 0 {a b c d a b c d


explain $sql

SELECT rowid, a, b FROM $src
