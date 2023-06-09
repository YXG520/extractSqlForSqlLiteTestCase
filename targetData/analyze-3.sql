

    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(1,3);
    ANALYZE main.t1;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    INSERT INTO t1 VALUES(1,4);
    INSERT INTO t1 VALUES(1,5);
    ANALYZE t1;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    INSERT INTO t1 VALUES(2,5);
    ANALYZE main;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    CREATE TABLE t2 AS SELECT * FROM t1;
    CREATE INDEX t2i1 ON t2(a);
    CREATE INDEX t2i2 ON t2(b);
    CREATE INDEX t2i3 ON t2(a,b);
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    DROP INDEX t2i3;
    ANALYZE t1;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    ANALYZE t2;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    DROP INDEX t2i2;
    ANALYZE t2;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    CREATE TABLE t3 AS SELECT a, b, rowid AS c, 'hi' AS d FROM t1;
    CREATE INDEX t3i1 ON t3(a);
    CREATE INDEX t3i2 ON t3(a,b,c,d);
    CREATE INDEX t3i3 ON t3(d,b,c,a);
    DROP TABLE t1;
    DROP TABLE t2;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    CREATE TABLE [silly " name](a, b, c);
    CREATE INDEX 'foolish '' name' ON [silly " name](a, b);
    CREATE INDEX 'another foolish '' name' ON [silly " name](c);
    INSERT INTO [silly " name] VALUES(1, 2, 3);
    INSERT INTO [silly " name] VALUES(4, 5, 6);
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    DROP INDEX "foolish ' name";
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    DROP TABLE "silly "" name";
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  
