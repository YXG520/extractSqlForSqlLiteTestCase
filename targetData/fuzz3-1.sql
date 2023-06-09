

    BEGIN;
    CREATE TABLE t1(a, b, c);
    CREATE TABLE t2(d, e, f);
    CREATE INDEX i1 ON t1(a, b, c);
    CREATE INDEX i2 ON t2(d, e, f);
  
INSERT INTO t1 VALUES([rvalue], [rvalue], [rvalue])
INSERT INTO t2 VALUES([rvalue], [rvalue], [rvalue])
