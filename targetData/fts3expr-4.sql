
 CREATE VIRTUAL TABLE t1 USING fts3(a, b, c) 

 SELECT * FROM t1 WHERE t1 MATCH 'example AND (hello OR world))' 

 SELECT * FROM t1 WHERE t1 MATCH 'example AND (hello OR world' 

 SELECT * FROM t1 WHERE t1 MATCH '(hello' 

 SELECT * FROM t1 WHERE t1 MATCH '(' 

 SELECT * FROM t1 WHERE t1 MATCH ')' 

 SELECT * FROM t1 WHERE t1 MATCH 'example (hello world' 

hello world' }
} {1 {malformed MATCH expression: [example OR 

 SELECT * FROM t1 WHERE t1 MATCH 'example OR hello world"' 

 SELECT * FROM t1 WHERE t1 MATCH 'OR hello world' 

 SELECT * FROM t1 WHERE t1 MATCH 'hello world OR' 

 SELECT * FROM t1 WHERE t1 MATCH 'one (hello world OR) two' 

 SELECT * FROM t1 WHERE t1 MATCH 'one (OR hello world) two' 

 SELECT * FROM t1 WHERE t1 MATCH '(hello OR world) NEAR one' 

 SELECT * FROM t1 WHERE t1 MATCH 'one NEAR (hello OR world)' 
