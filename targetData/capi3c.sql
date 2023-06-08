SELECT name FROM sqlite_master
SELECT name FROM sqlite_master;SELECT 10
SELECT namex FROM sqlite_master
SELECT name FROM sqlite_master
SELECT name FROM sqlite_master;SELECT 10
SELECT namex FROM sqlite_master
CREATE TABLE tablename(x)
PRAGMA table_info("TableName")
sqlite3_open_new $fname $options




CREATE TABLE t1(a VARINT, b BLOB, c VARCHAR(16));
    INSERT INTO t1 VALUES(1, 2, 3);
    INSERT INTO t1 VALUES('one', 'two', NULL);
    INSERT INTO t1 VALUES(1.2, 1.3, 1.4);
  
pragma encoding
sqlite3_key $DB xyzzy 
SELECT a FROM t1 order by rowid
# Test what happens when the library encounters a newer file format.
  do_test capi3c-7.1 {
    set_file_format 5
  
SELECT * FROM sqlite_master;
    
# Now test that the library correctly handles bogus entries in the
  # sqlite_master table (schema corruption).
  do_test capi3c-8.1 {
    forcedelete test.db test.db-journal
    sqlite3 db test.db
    execsql {
      CREATE TABLE t1(a);
    
PRAGMA writable_schema=ON;
      INSERT INTO sqlite_master VALUES(NULL,NULL,NULL,NULL,NULL);
    
SELECT * FROM sqlite_master;
    
CREATE TABLE t1(a);
      PRAGMA writable_schema=ON;
      INSERT INTO sqlite_master VALUES('table',NULL,NULL,NULL,NULL);
    
SELECT * FROM sqlite_master;
    
not an error
SQL logic error
access permission denied
query aborted
database is locked
database table is locked
out of memory
attempt to write a readonly database
interrupted
disk I/O error
database disk image is malformed
database or disk is full
unable to open database file
unknown error
database schema has changed
constraint failed
datatype mismatch
bad parameter or other API misuse
authorization denied
column index out of range
file is not a database
select * from sqlite_master;
    
BEGIN;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 'int');
    INSERT INTO t1 VALUES(2, 'notatype');
  
COMMIT;
  
SELECT * FROM t1;
  
CREATE TABLE t2(a);
    INSERT INTO t2 VALUES(1);
    INSERT INTO t2 VALUES(2);
    BEGIN;
    INSERT INTO t2 VALUES(3);
  
ROLLBACK;
  
SELECT a FROM t2;
  
ROLLBACK;
  
SELECT a FROM t2;
  
BEGIN;
  
COMMIT;
  
BEGIN;
    COMMIT;
  
COMMIT;
  
INSERT INTO t1 VALUES(3, NULL);
  
INSERT INTO t2 VALUES(4);
  
BEGIN;
    INSERT INTO t1 VALUES(4, NULL);
  
COMMIT;
    SELECT a FROM t1;
  
do_test capi3c-13.1 {
    execsql {
      DELETE FROM t1;
    
SELECT * FROM t1;
    
do_test capi3c-13-5 {
    set ms [sqlite3_sleep 80]
    expr {$ms==80 || $ms==1000
SELECT * FROM t2
WHERE a==1
DROP TABLE IF EXISTS t3
CREATE TABLE IF NOT EXISTS t1(x,y)

;
SELECT max(a) FROM t2
SELECT b FROM t1 WHERE a=?
SELECT max(a) FROM t1
SELECT * FROM t3
SELECT * FROM t3
SELECT * FROM t3
SELECT * FROM t3
SELECT test_error('the message',3)
SELECT test_error('the message',4)
SELECT test_error('the message',16)
SELECT b,b,b,b FROM t1
SELECT b||'x',b,b,b FROM t1
set ret [list]
  set STMT [sqlite3_prepare_v2 db $zSql -1 TAIL]
  for {set i 0
lappend ret [sqlite3_column_decltype $STMT $i]
  
CREATE TABLE t5(a INTEGER, b STRING, c DATETIME) 
CREATE TABLE t11(a VARCHAR(10), b INTEGER);
  CREATE TABLE t12(a VARCHAR(15), b FLOAT);

1 "SELECT * FROM t11 UNION ALL SELECT * FROM t12"
  2 "SELECT * FROM t11 UNION SELECT * FROM t12"
  3 "SELECT * FROM t11 EXCEPT SELECT * FROM t12"
  4 "SELECT * FROM t11 INTERSECT SELECT * FROM t12"

  5 "SELECT * FROM t11 UNION ALL SELECT * FROM t12 ORDER BY 1"
  6 "SELECT * FROM t11 UNION SELECT * FROM t12 ORDER BY 1"
  7 "SELECT * FROM t11 EXCEPT SELECT * FROM t12 ORDER BY 1"
  8 "SELECT * FROM t11 INTERSECT SELECT * FROM t12 ORDER BY 1"

VARCHAR(10) INTEGER
