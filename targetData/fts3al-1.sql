
CREATE VIRTUAL TABLE t1 USING fts3(content, \x80)

CREATE VIRTUAL TABLE t2 USING fts3(content, tokenize \x80)

CREATE VIRTUAL TABLE t3 USING fts3(content, tokenize\x80)
CREATE VIRTUAL TABLE t4 USING fts3(content)

SELECT rowid, length(snippet(t4)) FROM t4 WHERE t4 MATCH 'target'
