
SELECT x99 FROM manycol

SELECT x0, x10, x25, x50, x75 FROM manycol

SELECT x50 FROM manycol ORDER BY x80+0

SELECT x50 FROM manycol ORDER BY x80

SELECT x75 FROM manycol WHERE x50=350

SELECT x50 FROM manycol WHERE x99=599

CREATE INDEX manycol_idx1 ON manycol(x99)
SELECT x50 FROM manycol WHERE x99=899

SELECT count(*) FROM manycol

DELETE FROM manycol WHERE x98=1234
SELECT count(*) FROM manycol

DELETE FROM manycol WHERE x98=998
SELECT count(*) FROM manycol

DELETE FROM manycol WHERE x99=500
SELECT count(*) FROM manycol

DELETE FROM manycol WHERE x99=599
SELECT count(*) FROM manycol
