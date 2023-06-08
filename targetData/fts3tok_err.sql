CREATE VIRTUAL TABLE t1 USING fts3tokenize("simple"); 
CREATE VIRTUAL TABLE t1 USING fts3tokenize("simple"); 
SELECT token FROM t1 WHERE input = 'A galaxy far, far away' 
