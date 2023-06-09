
CREATE TABLE test1(cnt int, power int)
INSERT INTO test1 VALUES($i,[expr {1<<$i}])
CREATE INDEX index9 ON test1(cnt)
CREATE INDEX indext ON test1(power)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name

SELECT cnt FROM test1 WHERE power=4

SELECT cnt FROM test1 WHERE power=1024

SELECT power FROM test1 WHERE cnt=6

DROP INDEX indext
SELECT power FROM test1 WHERE cnt=6

SELECT cnt FROM test1 WHERE power=1024

CREATE INDEX indext ON test1(cnt)
SELECT power FROM test1 WHERE cnt=6

SELECT cnt FROM test1 WHERE power=1024

DROP INDEX index9
SELECT power FROM test1 WHERE cnt=6

SELECT cnt FROM test1 WHERE power=1024

DROP INDEX indext
SELECT power FROM test1 WHERE cnt=6

SELECT cnt FROM test1 WHERE power=1024

DROP TABLE test1
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
