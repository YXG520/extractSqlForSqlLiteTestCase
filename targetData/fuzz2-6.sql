
SELECT n()AND+#0;

SELECT strftime()

DETACH(SELECT group_concat(q));

DROP TABLE IF EXISTS t0; CREATE TABLE t0(t);
INSERT INTO t0 SELECT strftime();

SELECT quote(t) FROM t0
