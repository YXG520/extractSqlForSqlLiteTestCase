
PRAGMA encoding

INSERT INTO t1 (rowid, content) VALUES(1, 'one')
SELECT content FROM t1 WHERE rowid = 1

INSERT INTO t1 (rowid, content) VALUES(2, 'two')
SELECT content FROM t1 WHERE rowid = 2

INSERT INTO t1 (rowid, content) VALUES(3, 'three')
UPDATE t1 SET content = 'trois' WHERE rowid = 3
SELECT content FROM t1 WHERE rowid = 3

INSERT INTO t1 (rowid, content) VALUES(4, 'four')
SELECT content FROM t1 WHERE rowid = 4

INSERT INTO t1 (rowid, content) VALUES(5, 'five')
UPDATE t1 SET content = 'cinq' WHERE rowid = 5
SELECT content FROM t1 WHERE rowid = 5
