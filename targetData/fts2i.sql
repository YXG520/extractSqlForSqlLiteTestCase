PRAGMA encoding
INSERT INTO t1 (rowid, content) VALUES(1, 'one')
SELECT content FROM t1 WHERE rowid = 1
SELECT content FROM t1 WHERE rowid = 2
SELECT content FROM t1 WHERE rowid = 3
INSERT INTO t1 (rowid, content) VALUES(4, 'four')
SELECT content FROM t1 WHERE rowid = 4
INSERT INTO t1 (rowid, content) VALUES(5, 'five')
SELECT content FROM t1 WHERE rowid = 5
