
CREATE TABLE test1(f1 int, f2 int)
CREATE TABLE test2(g1 real, g2 real)
CREATE INDEX index1 ON test1(f1)
CREATE INDEX index1 ON test2(g1)

CREATE INDEX [index1] ON test2(g1)

SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name

CREATE INDEX IF NOT EXISTS index1 ON test1(f1)

CREATE INDEX test1 ON test2(g1)

SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name

DROP TABLE test1
DROP TABLE test2
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name


    CREATE TABLE test1(a,b);
    CREATE INDEX index1 ON test1(a);
    CREATE INDEX index2 ON test1(b);
    CREATE INDEX index3 ON test1(a,b);
    DROP TABLE test1;
    SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name;
  
