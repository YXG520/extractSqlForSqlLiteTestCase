

  CREATE TABLE t0(c0 INT);
  INSERT INTO t0 VALUES(0);
  CREATE TABLE t1_a(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1_a VALUES(1,'one');
  CREATE TABLE t1_b(c INTEGER PRIMARY KEY, d TEXT);
  INSERT INTO t1_b VALUES(2,'two');
  CREATE VIEW v0 AS SELECT CAST(t0.c0 AS INTEGER) AS c0 FROM t0;
  CREATE VIEW v1(a,b) AS SELECT a, b FROM t1_a UNION ALL SELECT c, 0 FROM t1_b;
  SELECT v1.a, quote(v1.b), t0.c0 AS cd FROM t0 LEFT JOIN v0 ON v0.c0!=0,v1;



  SELECT a, quote(b), cd FROM (
    SELECT v1.a, v1.b, t0.c0 AS cd FROM t0 LEFT JOIN v0 ON v0.c0!=0, v1
  ) WHERE a=2 AND b='0' AND cd=0;



  SELECT a, quote(b), cd FROM (
    SELECT v1.a, v1.b, t0.c0 AS cd FROM t0 LEFT JOIN v0 ON v0.c0!=0, v1
  ) WHERE a=1 AND b='one' AND cd=0;



  SELECT a, quote(b), cd FROM (
    SELECT v1.a, v1.b, t0.c0 AS cd FROM t0 LEFT JOIN v0 ON v0.c0!=0, v1
  ) WHERE a=2 AND b=0 AND cd=0;



  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INT, b INT, c TEXT, PRIMARY KEY(a,b)) WITHOUT ROWID;
  INSERT INTO t1(a,b,c) VALUES
    (1,100,'abc'),
    (2,200,'def'),
    (3,300,'abc');
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(a INT, b INT, c TEXT, PRIMARY KEY(a,b)) WITHOUT ROWID;
  INSERT INTO t2(a,b,c) VALUES
    (1,110,'efg'),
    (2,200,'hij'),
    (3,330,'klm');
  CREATE VIEW v3 AS
    SELECT a, b, c FROM t1
    UNION ALL
    SELECT a, b, 'xyz' FROM t2;
  SELECT * FROM v3 WHERE a=2 AND b=200;


S
Q


  SELECT count(*) FROM v3;


S
Q
