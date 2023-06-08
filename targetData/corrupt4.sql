PRAGMA auto_vacuum=OFF;
    PRAGMA page_size=1024;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES($bigstring);
    CREATE TABLE t2(y);
    INSERT INTO t2 VALUES(1);
    DROP TABLE t1;
  
PRAGMA freelist_count
DROP TABLE t2
  
PRAGMA page_size = 512;
  CREATE TABLE t1(a, b, c);

sqlite3 db test.db

  do_catchsql_test 2.2 {
    PRAGMA writable_schema = 1;
    SELECT * FROM sqlite_schema;
  
