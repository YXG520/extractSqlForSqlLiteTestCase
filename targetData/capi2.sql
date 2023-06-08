lappend VALUES [sqlite3_column_text $STMT $i]
  
lappend VALUES [sqlite3_column_name $STMT $i]
  
lappend VALUES [sqlite3_column_decltype $STMT $i]
  
CREATE TABLE t1(a,b,c)
SELECT name, rowid FROM sqlite_master
SELECT name, rowid FROM sqlite_master;
    SELECT name, rowid FROM sqlite_master WHERE 0;
    -- A comment at the end
  
name rowid TEXT INTEGER
name rowid TEXT INTEGER
name rowid TEXT INTEGER
select bogus from sqlite_master
select bogus from 
;;;;select bogus from sqlite_master
select bogus from sqlite_master;x;
select bogus from sqlite_master;;;x;
select 5/0;

CREATE UNIQUE INDEX i1 ON t1(a)
INSERT INTO t1 VALUES(1,2,3)

INSERT INTO t1 VALUES(1,3,4)

UNIQUE constraint failed: t1.a
CREATE TABLE t2(a NOT NULL, b)

not an error
INSERT INTO t2 VALUES(NULL,2)

NOT NULL constraint failed: t2.a
CREATE TABLE a1(message_id, name , UNIQUE(message_id, name) );
    INSERT INTO a1 VALUES(1, 1);
  
INSERT INTO a1 VALUES(1, 1)
INSERT INTO t2 VALUES(1,2)
INSERT INTO t2 VALUES(2,3)
INSERT INTO t2 VALUES(3,4)

SELECT * FROM t2 ORDER BY a

SELECT * FROM t2 ORDER BY a

SELECT * FROM t2 ORDER BY a
SELECT * FROM t2
SELECT * FROM t2
SELECT * FROM t2










BEGIN;
    CREATE TABLE t3(x counter);
    INSERT INTO t3 VALUES(1);
    INSERT INTO t3 VALUES(2);
    INSERT INTO t3 SELECT x+2 FROM t3;
    INSERT INTO t3 SELECT x+4 FROM t3;
    INSERT INTO t3 SELECT x+8 FROM t3;
    COMMIT;
  
SELECT * FROM t3
BEGIN

COMMIT
x counter
INSERT INTO t3 VALUES(10);
x counter
SELECT * FROM t2
x counter
SELECT * FROM t2
x counter
BEGIN
x counter
UPDATE t3 SET x=x+1
x counter
SELECT * FROM t1
x counter
UPDATE t1 SET b=b+1
x counter
SELECT * FROM t1
x counter
ROLLBACK; SELECT * FROM t1
x counter
BEGIN TRANSACTION;
x counter
INSERT INTO t1 VALUES(2,3,4);
    SELECT * FROM t1;
  
x counter
INSERT INTO t1 VALUES(2,4,5);
    SELECT * FROM t1;
  
x counter
ROLLBACK
SELECT * FROM t1
  
PRAGMA count_changes=on
  
UPDATE t1 SET a=a+10;
  
INSERT INTO t1 SELECT a+1,b+1,c+1 FROM t1;
  
1
UPDATE t1 SET a=a+10;
  
2
SELECT * FROM t1;
  
INSERT INTO t1 SELECT a+2,b+2,c+2 FROM t1;
  
SELECT * FROM t1;
  
UPDATE t1 SET a=a-20;
    SELECT * FROM t1;
  
SELECT count(*) FROM t1
EXPLAIN SELECT * FROM t1
SELECT * FROM t2
SELECT * FROM t2
set ret [list]
  set ::STMT [sqlite3_prepare $::DB $sql -1 dummy]
  for {set i 0
lappend ret [list                           \
      [sqlite3_column_database_name $::STMT $i] \
      [sqlite3_column_table_name $::STMT $i]    \
      [sqlite3_column_origin_name $::STMT $i]   \
    ]
  
CREATE TABLE tab1(col1, col2);
  
CREATE VIEW view1 AS SELECT * FROM  tab1;
    
CREATE VIEW view2 AS SELECT * FROM tab1 limit 10 offset 10;
    
