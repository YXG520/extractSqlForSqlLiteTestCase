
CREATE INDEX index1 ON test1(f1)

CREATE TABLE test1(f1 int, f2 int, f3 int)
CREATE INDEX index1 ON test1(f4)

CREATE INDEX index1 ON test1(f1, f2, f4, f3)
DROP TABLE test1
