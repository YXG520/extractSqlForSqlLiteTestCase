

    CREATE TABLE t4(x,y,z);
    CREATE INDEX t4i1 ON t4(x);
    CREATE INDEX t4i2 ON t4(y);
    INSERT INTO t4 SELECT a,b,c FROM t3;
  

    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
  


    PRAGMA writable_schema=on;
    INSERT INTO sqlite_stat1 VALUES(null,null,null);
    PRAGMA writable_schema=off;
  

    SELECT * FROM t4 WHERE x=1234;
  


    PRAGMA writable_schema=on;
    DELETE FROM sqlite_stat1;
    INSERT INTO sqlite_stat1 VALUES('t4','t4i1','nonsense');
    INSERT INTO sqlite_stat1 VALUES('t4','t4i2','120897349817238741092873198273409187234918720394817209384710928374109827172901827349871928741910');
    PRAGMA writable_schema=off;
  

    SELECT * FROM t4 WHERE x=1234;
  


    INSERT INTO sqlite_stat1 VALUES('t4','xyzzy','0 1 2 3');
  

    SELECT * FROM t4 WHERE x=1234;
  
