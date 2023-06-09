

  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);


  1 "SELECT * FROM vt1 WHERE b IN (10, 20, 30)" {{10 20 30

SELECT rowid, a, b, c FROM $src
