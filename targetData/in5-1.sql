

    CREATE TABLE t1x(x INTEGER PRIMARY KEY);
    INSERT INTO t1x VALUES(1),(3),(5),(7),(9);
    CREATE TABLE t1y(y INTEGER UNIQUE);
    INSERT INTO t1y VALUES(2),(4),(6),(8);
    CREATE TABLE t1z(z TEXT UNIQUE);
    INSERT INTO t1z VALUES('a'),('c'),('e'),('g');
    CREATE TABLE t2(a INTEGER, b INTEGER, c TEXT, d TEXT);
    INSERT INTO t2 VALUES(1,2,'a','12a'),(1,2,'b','12b'),
                         (2,3,'g','23g'),(3,5,'c','35c'),
                         (4,6,'h','46h'),(5,6,'e','56e');
    CREATE TABLE t3x AS SELECT x FROM t1x;
    CREATE TABLE t3y AS SELECT y FROM t1y;
    CREATE TABLE t3z AS SELECT z FROM t1z;
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY c;
  


    SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  


    SELECT d FROM t2 WHERE a IN t3x AND b IN t3y AND c IN t3z ORDER BY d;
  
