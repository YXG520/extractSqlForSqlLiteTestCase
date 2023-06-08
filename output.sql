SELECT name FROM sqlite_schema WHERE sql LIKE '%t2%';

SELECT name FROM sqlite_schema WHERE sql LIKE '%t3%' ORDER BY name;

CREATE TABLE t3651(a UNIQUE);
    INSERT INTO t3651 VALUES(5);
    ALTER TABLE t3651 ADD COLUMN b UNIQUE;

CREATE TABLE /* hi */ t3102a(x);
    CREATE TABLE t3102b -- comment
    (y);
    CREATE INDEX t3102c ON t3102a(x);
    SELECT name FROM sqlite_master WHERE name GLOB 't3102*' ORDER BY 1;

