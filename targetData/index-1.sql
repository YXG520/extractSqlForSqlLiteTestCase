
CREATE TABLE test1(f1 int, f2 int, f3 int)
CREATE INDEX index1 ON test1(f1)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name

SELECT name, sql, tbl_name, type FROM sqlite_master 
           WHERE name='index1'

SELECT name, sql, tbl_name, type FROM sqlite_master 
           WHERE name='index1'

SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name

DROP TABLE test1
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
