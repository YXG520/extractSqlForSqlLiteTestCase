
SELECT rowid FROM t4 WHERE t4 MATCH 'norm:one'

SELECT rowid FROM t4 WHERE norm MATCH 'one'

SELECT rowid FROM t4 WHERE t4 MATCH 'one'

SELECT rowid FROM t4 WHERE t4 MATCH 'plusone:one'

SELECT rowid FROM t4 WHERE plusone MATCH 'one'

SELECT rowid FROM t4 WHERE t4 MATCH 'norm:one plusone:two'

SELECT rowid FROM t4 WHERE t4 MATCH 'norm:one two'

SELECT rowid FROM t4 WHERE t4 MATCH 'plusone:two norm:one'

SELECT rowid FROM t4 WHERE t4 MATCH 'two norm:one'
