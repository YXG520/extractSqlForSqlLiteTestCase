

  BEGIN;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(202));
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --     2
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --     4
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --     8
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --    16
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --    32
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --    64
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --   128
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --   256
  COMMIT;

