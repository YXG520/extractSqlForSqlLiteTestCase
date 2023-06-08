do_test $testname [format {
    set DB [sqlite3_connection_pointer db]
    set STMT [sqlite3_prepare $DB {%s
EXPLAIN %s
EXPLAIN QUERY PLAN %s
db eval $sql
do_test $testname [format {
    set DB [sqlite3_connection_pointer db]
    set STMT [sqlite3_prepare $DB {%s
SELECT * FROM t1
CREATE TABLE t4(x,y);
  BEGIN;

VACUUM

VACUUM

