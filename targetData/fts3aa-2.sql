
SELECT rowid FROM t1 WHERE content MATCH '"one"'

SELECT rowid FROM t1 WHERE content MATCH '"one two"'

SELECT rowid FROM t1 WHERE content MATCH '"two one"'

SELECT rowid FROM t1 WHERE content MATCH '"one two three"'

SELECT rowid FROM t1 WHERE content MATCH '"one three two"'

SELECT rowid FROM t1 WHERE content MATCH '"one two three four"'

SELECT rowid FROM t1 WHERE content MATCH '"one three two four"'

SELECT rowid FROM t1 WHERE content MATCH '"one three five"'

SELECT rowid FROM t1 WHERE content MATCH '"one three" five'

one three

one three

one three

SELECT rowid FROM t1 WHERE content MATCH '"one three" four five'
