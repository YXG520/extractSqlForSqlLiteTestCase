ifcapable vtab { uplevel [list do_execsql_test $tn $sql $res] 
CREATE TABLE t1(a, b COLLATE nocase, PRIMARY KEY(a, a, b)) WITHOUT ROWID;

INSERT INTO t1 VALUES(1, 'one'), (1, 'ONE');

CREATE TABLE t2(a, b, PRIMARY KEY(a COLLATE nocase, a)) WITHOUT ROWID;

INSERT INTO t2 VALUES(1, 'one');
  SELECT b FROM t2;

PRAGMA index_info(t2);

SELECT *, '|' FROM pragma_index_info('t2');

PRAGMA index_xinfo(t2);

SELECT *, '|' FROM pragma_index_xinfo('t2');

CREATE TABLE t3(a, b, PRIMARY KEY(a COLLATE nocase, a));
  PRAGMA index_info(t3);

