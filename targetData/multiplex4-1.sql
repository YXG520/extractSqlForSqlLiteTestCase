
file:mx4test.db?chunksize=10&truncate=1

    CREATE TABLE t1(x);
    INSERT INTO t1(x) VALUES(randomblob(250000));
  


    DELETE FROM t1;
    VACUUM;
  

PRAGMA multiplex_truncate

PRAGMA multiplex_truncate=off

PRAGMA multiplex_truncate

PRAGMA multiplex_truncate=on

PRAGMA multiplex_truncate

PRAGMA multiplex_truncate=0

PRAGMA multiplex_truncate=1

PRAGMA multiplex_truncate=0

EXPLAIN PRAGMA multiplex_truncate=0;


    INSERT INTO t1(x) VALUES(randomblob(250000));
  


    DELETE FROM t1;
    VACUUM;
  


    PRAGMA multiplex_truncate=ON;
    DROP TABLE t1;
    VACUUM;
  
