CREATE TABLE t1(x TEXT);
  
SELECT count(*) FROM t1;
  
SELECT x FROM t1 WHERE x LIKE 'abc' ORDER BY 1;
  
SELECT x FROM t1 WHERE x GLOB 'abc' ORDER BY 1;
  
SELECT x FROM t1 WHERE x LIKE 'ABC' ORDER BY 1;
  
SELECT x FROM t1 WHERE x LIKE 'aBc' ORDER BY 1;
  
PRAGMA case_sensitive_like=on
SELECT x FROM t1 WHERE x LIKE 'abc' ORDER BY 1;
  
PRAGMA case_sensitive_like; -- no argument; does not change setting
    SELECT x FROM t1 WHERE x LIKE 'abc' ORDER BY 1;
  
SELECT x FROM t1 WHERE x GLOB 'abc' ORDER BY 1;
  
SELECT x FROM t1 WHERE x LIKE 'ABC' ORDER BY 1;
  
SELECT x FROM t1 WHERE x LIKE 'aBc' ORDER BY 1;
  
PRAGMA case_sensitive_like=off;
    SELECT x FROM t1 WHERE x LIKE 'abc' ORDER BY 1;
  
PRAGMA case_sensitive_like;  -- No argument, does not change setting.
    SELECT x FROM t1 WHERE x LIKE 'abc' ORDER BY 1;
  
SELECT x FROM t1 WHERE x REGEXP 'abc' ORDER BY 1;
  
SELECT x FROM t1 WHERE x REGEXP '^abc' ORDER BY 1;
  
SELECT x FROM t1 WHERE x MATCH '*abc*' ORDER BY 1;
  
SELECT x FROM t1 WHERE x MATCH 'abc*' ORDER BY 1;
  
set ::sqlite_sort_count 0
  db cache flush
  set data [execsql $sql]
  if {$::sqlite_sort_count
PRAGMA case_sensitive_like=on;
    CREATE INDEX i1 ON t1(x);
  
PRAGMA case_sensitive_like=on
PRAGMA case_sensitive_like=off
CREATE TABLE t2(x TEXT COLLATE NOCASE);
    INSERT INTO t2 SELECT * FROM t1 ORDER BY rowid;
    CREATE INDEX i2 ON t2(x COLLATE NOCASE);
  
PRAGMA case_sensitive_like=on;
  
PRAGMA case_sensitive_like=off;
  
PRAGMA case_sensitive_like=off
PRAGMA case_sensitive_like=on;
  
PRAGMA case_sensitive_like=off;
  
PRAGMA case_sensitive_like=off;
    INSERT INTO t2 VALUES('ZZ-upper-upper');
    INSERT INTO t2 VALUES('zZ-lower-upper');
    INSERT INTO t2 VALUES('Zz-upper-lower');
    INSERT INTO t2 VALUES('zz-lower-lower');
  
SELECT * FROM t2 WHERE x LIKE '''a%'
  
SELECT rowid, * FROM t1 WHERE rowid GLOB '1*' ORDER BY rowid;
  
set r [db eval $sql]
    lappend r scan [db status step] sort [db status sort]
  
SELECT x FROM t2 WHERE x LIKE '%78%25'
    
EXPLAIN QUERY PLAN SELECT x FROM t2 WHERE x LIKE '%78%25'
      
INSERT INTO t2 VALUES('%ffhello')
SELECT substr(x,2) AS x FROM t2 WHERE +x LIKE '%ff%25'
    
SELECT substr(x,2) AS x FROM t2 WHERE x LIKE '%ff%25'
    
EXPLAIN QUERY PLAN SELECT x FROM t2 WHERE x LIKE '%ff%25'
      
SELECT x FROM t2 WHERE x LIKE '%fe%25'
    
EXPLAIN QUERY PLAN SELECT x FROM t2 WHERE x LIKE '%fe%25'
      
set ::sqlite_search_count 0
    set ::sqlite_like_count 0
    return [concat [execsql $sql] scan $::sqlite_search_count \
             like $::sqlite_like_count]
  
CREATE TABLE t10(
        a INTEGER PRIMARY KEY,
        b INTEGER COLLATE nocase UNIQUE,
        c NUMBER COLLATE nocase UNIQUE,
        d BLOB COLLATE nocase UNIQUE,
        e COLLATE nocase UNIQUE,
        f TEXT COLLATE nocase UNIQUE
      );
      INSERT INTO t10 VALUES(1,1,1,1,1,1);
      INSERT INTO t10 VALUES(12,12,12,12,12,12);
      INSERT INTO t10 VALUES(123,123,123,123,123,123);
      INSERT INTO t10 VALUES(234,234,234,234,234,234);
      INSERT INTO t10 VALUES(345,345,345,345,345,345);
      INSERT INTO t10 VALUES(45,45,45,45,45,45);
    
CREATE TABLE t10b(
        a INTEGER PRIMARY KEY,
        b INTEGER UNIQUE,
        c NUMBER UNIQUE,
        d BLOB UNIQUE,
        e UNIQUE,
        f TEXT UNIQUE
      );
      INSERT INTO t10b SELECT * FROM t10;
    
CREATE TABLE t11(
      a INTEGER PRIMARY KEY,
      b TEXT COLLATE nocase,
      c TEXT COLLATE binary
    );
    INSERT INTO t11 VALUES(1, 'a','a');
    INSERT INTO t11 VALUES(2, 'ab','ab');
    INSERT INTO t11 VALUES(3, 'abc','abc');
    INSERT INTO t11 VALUES(4, 'abcd','abcd');
    INSERT INTO t11 VALUES(5, 'A','A');
    INSERT INTO t11 VALUES(6, 'AB','AB');
    INSERT INTO t11 VALUES(7, 'ABC','ABC');
    INSERT INTO t11 VALUES(8, 'ABCD','ABCD');
    INSERT INTO t11 VALUES(9, 'x','x');
    INSERT INTO t11 VALUES(10, 'yz','yz');
    INSERT INTO t11 VALUES(11, 'X','X');
    INSERT INTO t11 VALUES(12, 'YZ','YZ');
    SELECT count(*) FROM t11;
  
CREATE TABLE t12nc(id INTEGER, x TEXT UNIQUE COLLATE nocase);
  INSERT INTO t12nc VALUES(1,'abcde'),(2,'uvwxy'),(3,'ABCDEF');
  CREATE TABLE t12b(id INTEGER, x TEXT UNIQUE COLLATE binary);
  INSERT INTO t12b VALUES(1,'abcde'),(2,'uvwxy'),(3,'ABCDEF');
  SELECT id FROM t12nc WHERE x LIKE 'abc%' ORDER BY +id;

SELECT id FROM t12b WHERE x LIKE 'abc%' ORDER BY +id;

SELECT id FROM t12nc WHERE x LIKE 'abc%' COLLATE binary ORDER BY +id;

SELECT id FROM t12b WHERE x LIKE 'abc%' COLLATE binary ORDER BY +id;

SELECT id FROM t12nc WHERE x LIKE 'abc%' COLLATE nocase ORDER BY +id;

SELECT id FROM t12b WHERE x LIKE 'abc%' COLLATE nocase ORDER BY +id;

EXPLAIN QUERY PLAN
  SELECT id FROM t12nc WHERE x LIKE 'abc%' ORDER BY +id;

EXPLAIN QUERY PLAN
  SELECT id FROM t12b WHERE x LIKE 'abc%' ORDER BY +id;

EXPLAIN QUERY PLAN
  SELECT id FROM t12nc WHERE x LIKE 'abc%' COLLATE nocase ORDER BY +id;

EXPLAIN QUERY PLAN
  SELECT id FROM t12b WHERE x LIKE 'abc%' COLLATE nocase ORDER BY +id;

EXPLAIN QUERY PLAN
  SELECT id FROM t12nc WHERE x LIKE 'abc%' COLLATE binary ORDER BY +id;

EXPLAIN QUERY PLAN
  SELECT id FROM t12b WHERE x LIKE 'abc%' COLLATE binary ORDER BY +id;

SELECT char(0x304d) LIKE char(0x306d);

SELECT char(0x4d) LIKE char(0x306d);

SELECT char(0x304d) LIKE char(0x6d);

SELECT char(0x4d) LIKE char(0x6d);

CREATE TABLE t15(x TEXT COLLATE nocase, y, PRIMARY KEY(x));
  INSERT INTO t15(x,y) VALUES
    ('abcde',1), ('ab%de',2), ('a_cde',3),
    ('uvwxy',11),('uvwx%',12),('uvwx_',13),
    ('_bcde',21),('%bcde',22),
    ('abcd_',31),('abcd%',32),
    ('ab%xy',41);
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '/';

EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '/';

EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '//';

EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '';

SELECT y FROM t15 WHERE x LIKE 'abcdx%%' ESCAPE 'x';

SELECT y FROM t15 WHERE x LIKE 'abx%%' ESCAPE 'x' ORDER BY +y

EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'abx%%' ESCAPE 'x' ORDER BY +y

SELECT y FROM t15 WHERE x LIKE '/%bc%' ESCAPE '/';

EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE '/%bc%' ESCAPE '/';

CREATE TABLE t1(a INTEGER COLLATE NOCASE);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES(' 1x');
  INSERT INTO t1 VALUES(' 1-');

SELECT * FROM t1 WHERE a LIKE ' 1%';

SELECT * FROM t1 WHERE a LIKE ' 1-';

DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(id INTEGER PRIMARY KEY, x TEXT);
  INSERT INTO t1 VALUES
    (1,'abcde'),
    (2,'abc_'),
    (3,'abc__'),
    (4,'abc%'),
    (5,'abc%%');
  SELECT id FROM t1 WHERE x LIKE 'abc%%' ESCAPE '%';

SELECT id FROM t1 WHERE x LIKE 'abc__' ESCAPE '_';

SELECT 'x' LIKE '%' ESCAPE '_';

