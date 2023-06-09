
SELECT rowid FROM t1 WHERE content MATCH 'one'

SELECT rowid FROM t1 WHERE content MATCH 'one two'

SELECT rowid FROM t1 WHERE content MATCH 'two one'

SELECT rowid FROM t1 WHERE content MATCH 'one two three'

SELECT rowid FROM t1 WHERE content MATCH 'one three two'

SELECT rowid FROM t1 WHERE content MATCH 'two three one'

SELECT rowid FROM t1 WHERE content MATCH 'two one three'

SELECT rowid FROM t1 WHERE content MATCH 'three one two'

SELECT rowid FROM t1 WHERE content MATCH 'three two one'

SELECT rowid FROM t1 WHERE content MATCH 'one two THREE'

SELECT rowid FROM t1 WHERE content MATCH '  ONE    Two   three  '
