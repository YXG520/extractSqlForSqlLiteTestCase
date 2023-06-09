
SELECT rowid FROM t1 WHERE t1 MATCH 'something'

SELECT rowid FROM t1 WHERE t1 MATCH '-this something'

SELECT rowid FROM t1 WHERE t1 MATCH 'this -something'

SELECT rowid FROM t1 WHERE t1 MATCH '"this something"'

SELECT rowid FROM t1 WHERE t1 MATCH '"something is"'

SELECT rowid FROM t1 WHERE t1 MATCH 'something OR this'

SELECT rowid FROM t1 WHERE t1 MATCH 'this OR something'

SELECT rowid FROM t1 WHERE t1 MATCH 'something this'

SELECT rowid FROM t1 WHERE t1 MATCH 'this something'

SELECT rowid FROM t1 WHERE t1 MATCH '-this -something'

SELECT rowid FROM t1 WHERE t1 MATCH 'this OR also'

SELECT rowid FROM t1 WHERE t1 MATCH 'also OR this'

SELECT rowid FROM t1 WHERE t1 MATCH 'something OR nothing'
