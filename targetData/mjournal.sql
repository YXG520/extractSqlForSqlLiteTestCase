CREATE TABLE t1(a, b);

SELECT * FROM t1;

SELECT * FROM t1;

SELECT * FROM t1;

set ::open [list]
  uplevel [list do_test $tn [subst -nocommands {
    set res [execsql "$sql"]
    concat [contains_mj] [set res]
  
ATTACH 'test.db2' AS dbfile;
  ATTACH ''         AS dbtemp;
  ATTACH ':memory:'  AS dbmem;

  CREATE TABLE t1(x);
  CREATE TABLE dbfile.t2(x);
  CREATE TABLE dbtemp.t3(x);
  CREATE TABLE dbmem.t4(x);

