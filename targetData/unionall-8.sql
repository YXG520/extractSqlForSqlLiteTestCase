

  CREATE TABLE t0(c0 INT);
  INSERT INTO t0 VALUES(0);
  CREATE TABLE t1_a(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1_a VALUES(1,'one');
  INSERT INTO t1_a VALUES(4,'four');
  CREATE TABLE t1_b(c INTEGER PRIMARY KEY, d TEXT);
  INSERT INTO t1_b VALUES(2,'two');
  INSERT INTO t1_b VALUES(5,'five');
  CREATE TABLE t1_c(e INTEGER PRIMARY KEY, f TEXT);
  INSERT INTO t1_c VALUES(3,'three');
  INSERT INTO t1_c VALUES(6,'six');
  CREATE VIEW v0(c0) AS SELECT CAST(t0.c0 AS INTEGER) FROM t0;
  CREATE VIEW t1 AS 
    SELECT a, b FROM t1_a   UNION ALL
    SELECT c, c FROM t1_b   UNION ALL
    SELECT e, f FROM t1_c;
  SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1;



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b=2;



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b=2.0;



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b='2';



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b=2;



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b=2.0;



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b='2';



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b=2;



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b=2.0;



  SELECT * FROM (SELECT t1.a, t1.b, t0.c0 AS c, v0.c0 AS d FROM t0 LEFT JOIN v0 ON v0.c0>'0',t1) WHERE b='2';

