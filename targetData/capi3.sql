SELECT name FROM sqlite_master
SELECT name FROM sqlite_master;SELECT 10
SELECT name FROM sqlite_master;SELECT 10
SELECT name FROM sqlite_master;SELECT 10
SELECT namex FROM sqlite_master
SELECT name FROM sqlite_master
SELECT name FROM sqlite_master;SELECT 10
SELECT namex FROM sqlite_master
CREATE TABLE tablename(x)
PRAGMA table_info("TableName"); --excess text
sqlite3_open_new $fname $options


$::capi3_errno!=0


CREATE TABLE t1(a VARINT, b BLOB, c VARCHAR(16));
    INSERT INTO t1 VALUES(1, 2, 3);
    INSERT INTO t1 VALUES('one', 'two', NULL);
    INSERT INTO t1 VALUES(1.2, 1.3, 1.4);
  
SELECT :a, :b
pragma encoding
sqlite3_key $DB xyzzy 
SELECT a FROM t1 order by rowid
# Test what happens when the library encounters a newer file format.
  do_test capi3-7.1 {
    set_file_format 5
  
SELECT * FROM sqlite_master;
    
# Now test that the library correctly handles bogus entries in the
  # sqlite_master table (schema corruption).
  do_test capi3-8.1 {
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
database schema has changed
constraint failed
datatype mismatch
bad parameter or other API misuse
authorization denied
column index out of range
file is not a database
select * from sqlite_master;
    
select * from sqlite_master where rowid>5;
    
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
  
do_test capi3-13.1 {
    execsql {
      DELETE FROM t1;
    
SELECT * FROM t1;
    
do_test capi3-13-5 {
    set ms [sqlite3_sleep 80]
    expr {$ms==80 || $ms==1000
SELECT * FROM t2
WHERE a==1
SELECT 1234567890
SELECT 1234567890
SELECT 1234567890
SELECT 12.34567890
SELECT 12.34567890
DROP TABLE IF EXISTS t3
CREATE TABLE IF NOT EXISTS t1(x,y)

;
SELECT * FROM t2
SELECT * FROM t2
CREATE TABLE t4(x);
  INSERT INTO t4 VALUES('abcdefghij');

TEXT
abcdefghij
TEXT
