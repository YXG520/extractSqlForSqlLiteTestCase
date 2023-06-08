CREATE VIRTUAL TABLE t1 USING fts3(a, b, c) 
SELECT * FROM t1 WHERE t1 MATCH 'example AND (hello OR world))' 
SELECT * FROM t1 WHERE t1 MATCH 'example AND (hello OR world' 
SELECT * FROM t1 WHERE t1 MATCH '(hello' 
SELECT * FROM t1 WHERE t1 MATCH '(' 
SELECT * FROM t1 WHERE t1 MATCH ')' 
SELECT * FROM t1 WHERE t1 MATCH 'example (hello world' 
SELECT * FROM t1 WHERE t1 MATCH 'example OR "hello world' 
SELECT * FROM t1 WHERE t1 MATCH 'example OR hello world"' 
SELECT * FROM t1 WHERE t1 MATCH 'OR hello world' 
SELECT * FROM t1 WHERE t1 MATCH 'hello world OR' 
SELECT * FROM t1 WHERE t1 MATCH 'one (hello world OR) two' 
SELECT * FROM t1 WHERE t1 MATCH 'one (OR hello world) two' 
SELECT * FROM t1 WHERE t1 MATCH '(hello OR world) NEAR one' 
SELECT * FROM t1 WHERE t1 MATCH 'one NEAR (hello OR world)' 
SELECT fts3_exprtest('simple', 'a b c "d e f"', 'a', 'b', 'c')

SELECT fts3_exprtest('simple', 'a -b', 'a', 'b', 'c')

SELECT fts3_exprtest('simple', 'a b') 
SELECT fts3_exprtest('doesnotexist', 'a b', 'c') 
SELECT fts3_exprtest('simple', 'a b OR', 'c') 
CREATE VIRTUAL TABLE t1 USING fts3(a);
  
INSERT INTO t1 VALUES($v) 
SELECT rowid FROM t1 WHERE t1 MATCH 'five four one' ORDER BY rowid
SELECT rowid FROM t1 WHERE t1 MATCH $expr ORDER BY rowid 
SELECT rowid FROM t1 WHERE t1 MATCH $expr ORDER BY rowid 
CREATE VIRTUAL TABLE test USING fts3 (keyword);
    INSERT INTO test VALUES ('abc');
    SELECT * FROM test WHERE keyword MATCH '""';
  
