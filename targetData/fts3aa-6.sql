
INSERT INTO t1(rowid, content) VALUES(0, 'four five')

SELECT content FROM t1 WHERE rowid = 0

INSERT INTO t1(rowid, content) VALUES(-1, 'three four')

SELECT content FROM t1 WHERE rowid = -1

SELECT rowid FROM t1 WHERE t1 MATCH 'four'
