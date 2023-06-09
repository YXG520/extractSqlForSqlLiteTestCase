
CREATE TABLE t1([join $cols ,])
CREATE INDEX i1 ON t1([join $cols ,])
INSERT INTO t1 VALUES([join $vals ,])
SELECT DISTINCT [join [lrange $cols 0 $j] ,] FROM t1
