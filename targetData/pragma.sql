$db eval "DROP TABLE IF EXISTS temp.$tabname"
  set once 1
  $db eval $sql x {
    if {$once
PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA synchronous=OFF;
    PRAGMA cache_size=1234;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA synchronous=OFF;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA cache_size=-4321;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA synchronous=ON;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA default_cache_size=-123;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
VACUUM;
      PRAGMA cache_size;
      PRAGMA default_cache_size;
      PRAGMA synchronous;
    
PRAGMA synchronous=NORMAL;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA synchronous=EXTRA;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA synchronous=FULL;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  
PRAGMA synchronous=0;
    PRAGMA synchronous;
  
PRAGMA synchronous=2;
    PRAGMA synchronous;
  
PRAGMA synchronous=4;
    PRAGMA synchronous;
  
PRAGMA synchronous=3;
    PRAGMA synchronous;
  
PRAGMA synchronous=8;
    PRAGMA synchronous;
  
PRAGMA synchronous=10;
    PRAGMA synchronous;
  
PRAGMA default_cache_size = 0;

PRAGMA default_cache_size;

PRAGMA default_cache_size = -500;

PRAGMA default_cache_size;

PRAGMA default_cache_size = 500;

PRAGMA default_cache_size;

PRAGMA default_cache_size;

PRAGMA vdbe_listing=YES;
      PRAGMA vdbe_listing;
    
PRAGMA vdbe_listing=NO;
      PRAGMA vdbe_listing;
    
PRAGMA parser_trace=ON;
    PRAGMA parser_trace=OFF;
  
PRAGMA bogus = -1234;  -- Parsing of negative values
  
ATTACH 'test2.db' AS aux;
    
pragma aux.synchronous;
    
pragma aux.synchronous = OFF;
      pragma aux.synchronous;
      pragma synchronous;
    
pragma aux.synchronous = ON;
      pragma synchronous;
      pragma aux.synchronous;
    
PRAGMA auto_vacuum=OFF;
    BEGIN;
    CREATE TABLE t2(a,b,c);
    CREATE INDEX i2 ON t2(a);
    INSERT INTO t2 VALUES(11,2,3);
    INSERT INTO t2 VALUES(22,3,4);
    COMMIT;
    SELECT rowid, * from t2;
  
do_test pragma-3.2 {
      db eval {SELECT rootpage FROM sqlite_master WHERE name='i2'
PRAGMA integrity_check
PRAGMA integrity_check=1
ATTACH DATABASE 'test.db' AS t2;
        PRAGMA integrity_check
      
PRAGMA integrity_check=4
      
PRAGMA integrity_check=xyz
    
PRAGMA integrity_check=t2
    
PRAGMA integrity_check=sqlite_schema
    
PRAGMA integrity_check=0
      
DETACH t2
REINDEX t2
PRAGMA integrity_check
PRAGMA quick_check
PRAGMA QUICK_CHECK
ATTACH 'testerr.db' AS t2;
        PRAGMA integrity_check
      
PRAGMA t2.integrity_check=t2;
    
PRAGMA t2.integrity_check=sqlite_schema;
    
PRAGMA integrity_check=1
      
PRAGMA integrity_check=5
      
PRAGMA integrity_check=4
      
PRAGMA integrity_check=3
      
PRAGMA integrity_check(2)
      
ATTACH 'testerr.db' AS t3;
        PRAGMA integrity_check
      
PRAGMA integrity_check(10)
      
PRAGMA integrity_check=8
      
PRAGMA integrity_check=4
      
CREATE TABLE t1(a,b);
      CREATE INDEX t1a ON t1(a);
      INSERT INTO t1 VALUES(1,1),(2,2),(3,3),(2,4),(NULL,5),(NULL,6);
      PRAGMA writable_schema=ON;
      UPDATE sqlite_master SET sql='CREATE UNIQUE INDEX t1a ON t1(a)'
        WHERE name='t1a';
      UPDATE sqlite_master SET sql='CREATE TABLE t1(a NOT NULL,b)'
        WHERE name='t1';
      PRAGMA writable_schema=OFF;
      ALTER TABLE t1 RENAME TO t1x;
      PRAGMA integrity_check;
    
PRAGMA integrity_check(3);
  
PRAGMA integrity_check(2);
  
PRAGMA integrity_check(1);
  
CREATE TABLE t1(
    a INTEGER PRIMARY KEY,
    b TEXT COLLATE nocase,
    c INT COLLATE nocase,
    d TEXT
  );
  INSERT INTO t1(a,b,c,d) VALUES
    (1, 'one','one','one'),
    (2, 'two','two','two'),
    (3, 'three','three','three'),
    (4, 'four','four','four'),
    (5, 'five','five','five');
  CREATE INDEX t1bcd ON t1(b,c,d);
  CREATE TABLE t2(
    a INTEGER PRIMARY KEY,
    b TEXT COLLATE nocase,
    c INT COLLATE nocase,
    d TEXT
  );
  INSERT INTO t2(a,b,c,d) VALUES
    (1, 'one','one','one'),
    (2, 'two','two','TWO'),
    (3, 'three','THREE','three'),
    (4, 'FOUR','four','four'),
    (5, 'FIVE','FIVE','five');
  CREATE INDEX t2bcd ON t2(b,c,d);
  CREATE TEMP TABLE saved_schema AS SELECT name, rootpage FROM sqlite_schema;
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema
     SET rootpage=(SELECT rootpage FROM saved_schema WHERE name='t2bcd')
   WHERE name='t1bcd';
  UPDATE sqlite_schema
     SET rootpage=(SELECT rootpage FROM saved_schema WHERE name='t1bcd')
   WHERE name='t2bcd';
  PRAGMA Writable_schema=RESET;

SELECT integrity_check AS x FROM pragma_integrity_check ORDER BY 1;
  
ATTACH 'test2.db' AS aux;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  
pragma aux.cache_size = 50;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  
pragma aux.default_cache_size = 456;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  
pragma cache_size;
    pragma default_cache_size;
  
DETACH aux;
    ATTACH 'test3.db' AS aux;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  
DETACH aux;
    ATTACH 'test2.db' AS aux;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  
pragma synchronous;
  
BEGIN;
    pragma synchronous = OFF;
  
pragma synchronous;
  
COMMIT;
SELECT * FROM sqlite_temp_master
lappend res $idx $name
    
CREATE TABLE t2(a TYPE_X, b [TYPE_Y], c "TYPE_Z");
    pragma table_info(t2)
  
pragma table_info;
  
CREATE TABLE t5(
      a TEXT DEFAULT CURRENT_TIMESTAMP, 
      b DEFAULT (5+3),
      c TEXT,
      d INTEGER DEFAULT NULL,
      e TEXT DEFAULT '',
      UNIQUE(b,c,d),
      PRIMARY KEY(e,b,c)
    );
    PRAGMA table_info(t5);
  
CREATE TABLE t2_3(a,b INTEGER PRIMARY KEY,c);
    pragma table_info(t2_3)
  
CREATE TABLE t3(a int references t2(b), b UNIQUE);
      pragma foreign_key_list(t3);
    
pragma foreign_key_list;
    
pragma foreign_key_list(t3_bogus);
    
pragma foreign_key_list(t5);
    
CREATE TABLE t3(a,b UNIQUE)
CREATE INDEX t3i1 ON t3(a,b);
  
CREATE INDEX t3i2 ON t3(b,a);
  PRAGMA index_info='t3i2';
  DROP INDEX t3i2;

pragma index_info(t3i1_bogus);
  
CREATE TABLE trial(col_main);
      CREATE TEMP TABLE trial(col_temp);
    
PRAGMA table_info(trial);
    
PRAGMA temp.table_info(trial);
    
PRAGMA main.table_info(trial);
    
CREATE TABLE test_table(
      one INT NOT NULL DEFAULT -1, 
      two text,
      three VARCHAR(45, 65) DEFAULT 'abcde',
      four REAL DEFAULT X'abcdef',
      five DEFAULT CURRENT_TIME
    );
  
CREATE TABLE t68(a,b,c,PRIMARY KEY(a,b,a,c));
    PRAGMA table_info(t68);
  
pragma index_list(t3_bogus);
  
pragma encoding=bogus;
      
pragma lock_status;
    
pragma lock_status;
    
PRAGMA schema_version = 105;
  
PRAGMA schema_version;
  
PRAGMA schema_version = 106;
  PRAGMA schema_version;

PRAGMA schema_version = 106;
  PRAGMA schema_version;

CREATE TABLE t4(a, b, c);
    INSERT INTO t4 VALUES(1, 2, 3);
    SELECT * FROM t4;
  
PRAGMA schema_version;
  
SELECT * FROM t4;
  
PRAGMA schema_version = 108;
  
ATTACH 'test2.db' AS aux;
      CREATE TABLE aux.t1(a, b, c);
      PRAGMA aux.schema_version = 205;
    
PRAGMA aux.schema_version;
    
PRAGMA schema_version;
  
ATTACH 'test2.db' AS aux;
      SELECT * FROM aux.t1;
    
PRAGMA aux.schema_version = 206;
    
PRAGMA user_version;
  
PRAGMA user_version = 2;
  
PRAGMA user_version;
  
PRAGMA user_version;
  
PRAGMA schema_version;
  
VACUUM;
      PRAGMA user_version;
    
PRAGMA schema_version;
    
PRAGMA aux.user_version;
    
PRAGMA aux.user_version = 3;
    
PRAGMA aux.user_version;
    
PRAGMA main.user_version;
    
BEGIN;
      PRAGMA aux.user_version = 10;
      PRAGMA user_version = 11;
    
PRAGMA aux.user_version;
    
PRAGMA main.user_version;
    
ROLLBACK;
      PRAGMA aux.user_version;
    
PRAGMA main.user_version;
    
PRAGMA user_version = -450;
  
PRAGMA user_version;
  
PRAGMA application_id;
  
PRAGMA Application_ID(12345); PRAGMA application_id;
PRAGMA temp_store;
  
PRAGMA temp_store=file;
    PRAGMA temp_store;
  
PRAGMA temp_store=memory;
    PRAGMA temp_store;
  
PRAGMA temp_store_directory;
  
PRAGMA temp_store_directory;
    
PRAGMA temp_store_directory='/NON/EXISTENT/PATH/FOOBAR';
    
PRAGMA temp_store_directory='';
    
PRAGMA temp_store_directory;
          PRAGMA temp_store=FILE;
          CREATE TEMP TABLE temp_store_directory_test(a integer);
          INSERT INTO temp_store_directory_test values (2);
          SELECT * FROM temp_store_directory_test;
        
PRAGMA temp_store = 0;
    PRAGMA temp_store;
  
PRAGMA temp_store = 1;
    PRAGMA temp_store;
  
PRAGMA temp_store = 2;
    PRAGMA temp_store;
  
PRAGMA temp_store = 3;
    PRAGMA temp_store;
  
BEGIN EXCLUSIVE;
    CREATE TEMP TABLE temp_table(t);
    INSERT INTO temp_table VALUES('valuable data');
    PRAGMA temp_store = 1;
  
SELECT * FROM temp_table;
    COMMIT;
  
INSERT INTO temp_table VALUES('valuable data II');
    SELECT * FROM temp_table;
  
pragma temp_store = 1
DROP TABLE main.t1;
  
PRAGMA count_changes = 1;

    CREATE TABLE t1(a PRIMARY KEY);
    CREATE TABLE t1_mirror(a);
    CREATE TABLE t1_mirror2(a);
    CREATE TRIGGER t1_bi BEFORE INSERT ON t1 BEGIN 
      INSERT INTO t1_mirror VALUES(new.a);
    END;
    CREATE TRIGGER t1_ai AFTER INSERT ON t1 BEGIN 
      INSERT INTO t1_mirror2 VALUES(new.a);
    END;
    CREATE TRIGGER t1_bu BEFORE UPDATE ON t1 BEGIN 
      UPDATE t1_mirror SET a = new.a WHERE a = old.a;
    END;
    CREATE TRIGGER t1_au AFTER UPDATE ON t1 BEGIN 
      UPDATE t1_mirror2 SET a = new.a WHERE a = old.a;
    END;
    CREATE TRIGGER t1_bd BEFORE DELETE ON t1 BEGIN 
      DELETE FROM t1_mirror WHERE a = old.a;
    END;
    CREATE TRIGGER t1_ad AFTER DELETE ON t1 BEGIN 
      DELETE FROM t1_mirror2 WHERE a = old.a;
    END;
  
INSERT INTO t1 VALUES(randstr(10,10));
  
UPDATE t1 SET a = randstr(10,10);
  
DELETE FROM t1;
  
pragma collation_list;
    
pragma collation_list;
    
PRAGMA temp.table_info('abc');
    
PRAGMA temp.default_cache_size = 200;
      PRAGMA temp.default_cache_size;
    
PRAGMA temp.cache_size = 400;
      PRAGMA temp.cache_size;
    
DROP TABLE IF EXISTS t4;
    PRAGMA vdbe_trace=on;
    PRAGMA vdbe_listing=on;
    PRAGMA sql_trace=on;
    CREATE TABLE t4(a INTEGER PRIMARY KEY,b);
    INSERT INTO t4(b) VALUES(x'0123456789abcdef0123456789abcdef0123456789');
    INSERT INTO t4(b) VALUES(randstr(30,30));
    INSERT INTO t4(b) VALUES(1.23456);
    INSERT INTO t4(b) VALUES(NULL);
    INSERT INTO t4(b) VALUES(0);
    INSERT INTO t4(b) SELECT b||b||b||b FROM t4;
    SELECT * FROM t4;
  
PRAGMA vdbe_trace=off;
    PRAGMA vdbe_listing=off;
    PRAGMA sql_trace=off;
  
pragma auto_vacuum = 0 
pragma page_count; pragma main.page_count 
CREATE TABLE abc(a, b, c);
      PRAGMA page_count;
      PRAGMA main.page_count;
      PRAGMA temp.page_count;
    
pragma PAGE_COUNT
BEGIN;
      CREATE TABLE def(a, b, c);
      PRAGMA page_count;
    
pragma PAGE_COUNT
ROLLBACK;
      PRAGMA page_count;
    
PRAGMA auto_vacuum = 0;
      CREATE TABLE t1(a, b, c);
      CREATE TABLE t2(a, b, c);
      CREATE TABLE t3(a, b, c);
      CREATE TABLE t4(a, b, c);
    
ATTACH 'test2.db' AS aux;
      PRAGMA aux.page_count;
    
pragma AUX.PAGE_COUNT
PRAGMA cache_size=59;
      PRAGMA cache_size;
    
CREATE TABLE newtable(a, b, c);
    
SELECT * FROM sqlite_master 
PRAGMA cache_size 
set using_proxy $value
  
PRAGMA lock_proxy_file="mylittleproxy";
      select * from sqlite_master;
    
PRAGMA lock_proxy_file;
    
PRAGMA lock_proxy_file="mylittleproxy";
    
PRAGMA lock_proxy_file=":auto:";
      select * from sqlite_master;
    
PRAGMA lock_proxy_file;
    
PRAGMA lock_proxy_file="myotherproxy";
    
select * from sqlite_master;
    
PRAGMA lock_proxy_file="myoriginalproxy";
      PRAGMA lock_proxy_file="myotherproxy";
      PRAGMA lock_proxy_file;
    
PRAGMA lock_proxy_file=":auto:";
      PRAGMA lock_proxy_file;
    
PRAGMA lock_proxy_file=":auto:";
      PRAGMA lock_proxy_file;
    
PRAGMA lock_proxy_file=":auto:";
        select * from sqlite_master;
      
select * from sqlite_master 
PRAGMA lock_proxy_file="yetanotherproxy";
      PRAGMA lock_proxy_file;
    
create table mine(x);
    
PRAGMA lock_proxy_file=":auto:";
      PRAGMA lock_proxy_file;
    
PRAGMA error
PRAGMA error='This is the error message'
PRAGMA error='7 This is the error message'
PRAGMA error=7
PRAGMA filename
PRAGMA data_store_directory
PRAGMA data_store_directory
PRAGMA data_store_directory
PRAGMA page_size = 1024;
      PRAGMA auto_vacuum = 0;
      CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1, 1);
    
INSERT INTO t1 SELECT a + (1 << $i), b + (1 << $i) FROM t1 
PRAGMA integrity_check 
ATTACH 'testerr.db' AS 'aux';
      PRAGMA integrity_check;
    
PRAGMA main.integrity_check; 
PRAGMA aux.integrity_check; 
ATTACH 'test.db' AS 'aux';
      PRAGMA integrity_check;
    
PRAGMA main.integrity_check; 
PRAGMA aux.integrity_check; 
PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX i1 ON t1(b);
    INSERT INTO t1 VALUES('a', 'b', 'c');
    PRAGMA integrity_check;
  
SELECT * FROM t1;
  
PRAGMA integrity_check;
  
CREATE TABLE t1(a INT, b AS (a*2) NOT NULL);
  CREATE TEMP TABLE t2(a PRIMARY KEY, b, c UNIQUE) WITHOUT ROWID;
  CREATE UNIQUE INDEX t2x ON t2(c,b);
  PRAGMA integrity_check;

