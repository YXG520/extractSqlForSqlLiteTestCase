

    CREATE TABLE t1(a INTEGER PRIMARY KEY,b,c,d);
    INSERT INTO t1 VALUES(1,2,3,4);
    INSERT INTO t1 VALUES(2,3,4,5);
    INSERT INTO t1 VALUES(3,4,6,8);
    INSERT INTO t1 VALUES(4,5,10,15);
    INSERT INTO t1 VALUES(5,10,100,1000);
    CREATE INDEX t1b ON t1(b);
    CREATE INDEX t1c ON t1(c);
    SELECT * FROM t1;
  


  CREATE TABLE t(a);
  CREATE INDEX ta ON t(a);
  INSERT INTO t(a) VALUES(1),(2);
  SELECT * FROM t ORDER BY a;
  SELECT * FROM t WHERE a<2 OR a<3 ORDER BY a;
  PRAGMA count_changes=ON;
  DELETE FROM t WHERE a<2 OR a<3;
  SELECT * FROM t;
  PRAGMA count_changes=OFF;
  DROP TABLE t;


S

S

S

S

S

S

S

S

S

S

S

S

S

S

SELECT a FROM t1 WHERE a=11 OR b=11
 OR a=$i OR b=$i
 ORDER BY a

SELECT a FROM t1 WHERE b=11 OR c=11
 OR b=$i OR c=$i
 ORDER BY a

SELECT a FROM t1 WHERE (b=11 OR c=11
 OR b=$i OR c=$i
) AND d>=0 AND d<9999 ORDER BY a

SELECT a FROM t1 WHERE (b=11 OR c=11
 OR (b=$i AND d!=0) OR (c=$i AND d IS NOT NULL)
) AND d>=0 AND d<9999 ORDER BY a

SELECT a FROM t1 WHERE (a=11 AND b=11)
 OR (a=$i AND b=$i)
 ORDER BY a

SELECT a FROM t1 WHERE (b=11 AND c=11)
 OR (b=$i AND c=$i)
 ORDER BY a
