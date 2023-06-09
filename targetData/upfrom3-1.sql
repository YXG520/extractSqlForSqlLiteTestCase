

    CREATE TABLE log(t TEXT);
    CREATE TABLE t1(x INTEGER PRIMARY KEY, y, z UNIQUE) %WO%;
    CREATE INDEX t1y ON t1(y);

    INSERT INTO t1 VALUES(1, 'i',   'one');
    INSERT INTO t1 VALUES(2, 'ii',  'two');
    INSERT INTO t1 VALUES(3, 'iii', 'three');
    INSERT INTO t1 VALUES(4, 'iv',  'four');
  


    CREATE TABLE x1(o, n);
    INSERT INTO x1 VALUES(1, 11);
    INSERT INTO x1 VALUES(2, 12);
    INSERT INTO x1 VALUES(3, 13);
    INSERT INTO x1 VALUES(4, 14);
    UPDATE t1 SET x=n FROM x1 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  



    INSERT INTO x1 VALUES(11, 21);
    INSERT INTO x1 VALUES(12, 22);
    INSERT INTO x1 VALUES(13, 23);
    INSERT INTO x1 VALUES(14, 24);

    INSERT INTO x1 VALUES(21, 31);
    INSERT INTO x1 VALUES(22, 32);
    INSERT INTO x1 VALUES(23, 33);
    INSERT INTO x1 VALUES(24, 34);
    UPDATE t1 SET x=n FROM x1 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  


    UPDATE t1 SET x=n FROM x1 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  


    INSERT INTO x1 VALUES(31, 32);
    INSERT INTO x1 VALUES(33, 34);
    UPDATE OR REPLACE t1 SET x=n FROM x1 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  


    INSERT INTO t1 VALUES(33, 'ii', 'two');
    INSERT INTO t1 VALUES(35, 'iv', 'four');
  


    CREATE TABLE x2(o, n, zz);
    INSERT INTO x2 VALUES(32, 41, 'four');
    INSERT INTO x2 VALUES(33, 42, 'three');
    UPDATE OR IGNORE t1 SET x=n, z=zz FROM x2 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  


    UPDATE OR REPLACE t1 SET x=n, z=zz FROM x2 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  
