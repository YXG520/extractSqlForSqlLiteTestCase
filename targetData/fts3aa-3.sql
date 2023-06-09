
SELECT rowid FROM t1 WHERE content MATCH 'one'

SELECT rowid FROM t1 WHERE content MATCH 'one -two'

SELECT rowid FROM t1 WHERE content MATCH '-two one'
