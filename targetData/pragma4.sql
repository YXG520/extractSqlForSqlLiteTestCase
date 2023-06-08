set ::stmt 0
  set ::stmt [sqlite3_prepare_v2 db $sql -1 dummy]
  uplevel [list do_test $tn { sqlite3_column_count $::stmt 
1 "PRAGMA application_id = 10"
  2 "PRAGMA automatic_index = 1"
  3 "PRAGMA auto_vacuum = 1"
  4 "PRAGMA cache_size = -100"
  5 "PRAGMA cache_spill = 1"
  6 "PRAGMA cell_size_check = 1"
  7 "PRAGMA checkpoint_fullfsync = 1"
  8 "PRAGMA count_changes = 1"
  9 "PRAGMA default_cache_size = 100"
 10 "PRAGMA defer_foreign_keys = 1"
 11 "PRAGMA empty_result_callbacks = 1"
 12 "PRAGMA encoding = 'utf-8'"
 13 "PRAGMA foreign_keys = 1"
 14 "PRAGMA full_column_names = 1"
 15 "PRAGMA fullfsync = 1"
 16 "PRAGMA ignore_check_constraints = 1"
 18 "PRAGMA page_size = 511"
 19 "PRAGMA page_size = 512"
 20 "PRAGMA query_only = false"
 21 "PRAGMA read_uncommitted = true"
 22 "PRAGMA recursive_triggers = false"
 23 "PRAGMA reverse_unordered_selects = false"
 24 "PRAGMA schema_version = 211"
 25 "PRAGMA short_column_names = 1"
 26 "PRAGMA synchronous = full"
 29 "PRAGMA temp_store = memory"
 30 "PRAGMA user_version = 405"
 31 "PRAGMA writable_schema = 1"

1 "PRAGMA shrink_memory"
  2 "PRAGMA shrink_memory = 10"
  3 "PRAGMA case_sensitive_like = 0"
  4 "PRAGMA case_sensitive_like = 1"
  5 "PRAGMA case_sensitive_like"

CREATE TABLE t1(a, b, c);
  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t2(d, e, f);

0 a {
0 d {
DROP TABLE t1 
DROP TABLE t2 
PRAGMA table_info(t1) 
  
PRAGMA table_info(t1) 

PRAGMA table_info(t2) 
CREATE TABLE t1(a, b, c);
  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t2(d, e, f);

0 a {
0 d {
DROP TABLE t1 
DROP TABLE t2 
SELECT * FROM pragma_table_info('t1') 
SELECT * FROM pragma_table_info('t2') 
CREATE TABLE t1(a, b, c);
  CREATE INDEX i1 ON t1(b);
  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t2(d, e, f);
  CREATE INDEX aux.i2 ON t2(e);

0 1 b
0 1 e
DROP INDEX i1 
DROP INDEX i2 
SELECT * FROM sqlite_master 
SELECT * FROM pragma_index_info('i1') 
SELECT * FROM pragma_index_info('i2') 
SELECT * FROM main.sqlite_master, aux.sqlite_master
CREATE INDEX main.i1 ON t1(b, c);
  CREATE INDEX aux.i2 ON t2(e, f);

0 i1 0 c 0
0 i2 0 c 0
DROP INDEX i1 
DROP INDEX i2 
SELECT * FROM sqlite_master, aux.sqlite_master 


SELECT * FROM main.sqlite_master, aux.sqlite_master
CREATE UNIQUE INDEX main.i1 ON t1(a);
  CREATE UNIQUE INDEX aux.i2 ON t2(d);
  CREATE TABLE main.c1 (a, b, c REFERENCES t1(a));
  CREATE TABLE aux.c2 (d, e, r REFERENCES t2(d));

0 0 t1 c a {NO ACTION
0 0 t2 r d {NO ACTION
DROP TABLE c1 
DROP TABLE c2 
SELECT * FROM sqlite_master, aux.sqlite_master 
SELECT * FROM pragma_foreign_key_list('c1') 
SELECT * FROM pragma_foreign_key_list('c2') 
SELECT * FROM main.sqlite_master, aux.sqlite_master
CREATE TABLE main.c1 (a, b, c REFERENCES t1(a));
  CREATE TABLE aux.c2 (d, e, r REFERENCES t2(d));
  INSERT INTO main.c1 VALUES(1, 2, 3);
  INSERT INTO aux.c2 VALUES(4, 5, 6);

c1 1 t1 0

c2 1 t2 0

DROP TABLE c2 
c1 1 t1 0
pragma foreign_key_check('c2') 

CREATE TABLE t4(a DEFAULT 'abc' /* comment */, b DEFAULT -1 -- comment
     , c DEFAULT +4.0 /* another comment */
  );
  PRAGMA table_info = t4;

