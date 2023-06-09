
SELECT rowid, a FROM t5 WHERE rowid>'abc'

SELECT rowid, a FROM t5 WHERE rowid>='abc'

SELECT rowid, a FROM t5 WHERE rowid<'abc'

SELECT rowid, a FROM t5 WHERE rowid<='abc'

SELECT rowid, a FROM t5 WHERE rowid>'abc' ORDER BY 1 ASC

SELECT rowid, a FROM t5 WHERE rowid>='abc' ORDER BY 1 ASC

SELECT rowid, a FROM t5 WHERE rowid<'abc' ORDER BY 1 ASC

SELECT rowid, a FROM t5 WHERE rowid<='abc' ORDER BY 1 ASC

SELECT rowid, a FROM t5 WHERE rowid>'abc' ORDER BY 1 DESC

SELECT rowid, a FROM t5 WHERE rowid>='abc' ORDER BY 1 DESC

SELECT rowid, a FROM t5 WHERE rowid<'abc' ORDER BY 1 DESC

SELECT rowid, a FROM t5 WHERE rowid<='abc' ORDER BY 1 DESC
