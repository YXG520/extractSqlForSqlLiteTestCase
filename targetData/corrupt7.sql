PRAGMA auto_vacuum=OFF;
    PRAGMA page_size=1024;
    CREATE TABLE t1(x);
    INSERT INTO t1(x) VALUES(1);
    INSERT INTO t1(x) VALUES(2);
    INSERT INTO t1(x) SELECT x+2 FROM t1;
    INSERT INTO t1(x) SELECT x+4 FROM t1;
    INSERT INTO t1(x) SELECT x+8 FROM t1;
  
#    DROP TABLE t1;
#    CREATE TABLE t1(a, b);
#    INSERT INTO t1 VALUES(1, 'one');
#    INSERT INTO t1 VALUES(100, 'one hundred');
#    INSERT INTO t1 VALUES(100000, 'one hundred thousand');
#    CREATE INDEX i1 ON t1(b);
#  
#    SELECT b FROM t1 WHERE b > 'o' AND b < 'p';
#  
