

  ATTACH 'test.db2' AS aux;
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b, c);
  CREATE TABLE t3(a, b UNIQUE);
  CREATE TABLE t6(x, y);
  CREATE INDEX i1 ON t1(a);

  CREATE TEMP TABLE t4(x, y);
  CREATE TEMP TABLE t6(x, y);

  CREATE TABLE aux.t1(a, b);
  CREATE TABLE aux.t5(a, b);

