ROLLBACK;
        
PRAGMA auto_vacuum=1;
  CREATE TABLE t0(a, b, c);

BEGIN;
  -- Allocate 32 new root pages. This will exercise the 'extract specific 
  -- page from the freelist' code when in auto-vacuum mode (see the
  -- allocatePage() routine in btree.c).
  CREATE TABLE t1(a UNIQUE, b UNIQUE, c UNIQUE);
  CREATE TABLE t2(a UNIQUE, b UNIQUE, c UNIQUE);
  CREATE TABLE t3(a UNIQUE, b UNIQUE, c UNIQUE);
  CREATE TABLE t4(a UNIQUE, b UNIQUE, c UNIQUE);
  CREATE TABLE t5(a UNIQUE, b UNIQUE, c UNIQUE);
  CREATE TABLE t6(a UNIQUE, b UNIQUE, c UNIQUE);
  CREATE TABLE t7(a UNIQUE, b UNIQUE, c UNIQUE);
  CREATE TABLE t8(a UNIQUE, b UNIQUE, c UNIQUE);

  ROLLBACK;

