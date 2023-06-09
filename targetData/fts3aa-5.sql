
INSERT INTO t1(content) VALUES(NULL)

SELECT content FROM t1 WHERE rowid=$rowid

SELECT rowid FROM t1 WHERE content MATCH NULL
