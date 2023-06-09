
SELECT rowid FROM t1 WHERE english MATCH 'one'

SELECT rowid FROM t1 WHERE spanish MATCH 'one'

SELECT rowid FROM t1 WHERE german MATCH 'one'

SELECT rowid FROM t1 WHERE t1 MATCH 'one'


SELECT english, spanish, german FROM t1 WHERE rowid=1

SELECT rowid FROM t1 WHERE t1 MATCH '"one un"'
