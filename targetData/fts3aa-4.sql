
SELECT rowid FROM t1 WHERE content MATCH 'one OR two'

SELECT rowid FROM t1 WHERE content MATCH '"one two" OR three'

one two

SELECT rowid FROM t1 WHERE content MATCH 'one two OR three'

SELECT rowid FROM t1 WHERE content MATCH 'three OR two one'

SELECT rowid FROM t1 WHERE content MATCH 'one two OR three OR four'

SELECT rowid FROM t1 WHERE content MATCH 'two OR three OR four one'
