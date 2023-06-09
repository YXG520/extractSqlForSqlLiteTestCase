

  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(a INTEGER PRIMARY KEY, b INTEGER, c INTEGER) WITHOUT ROWID;
  INSERT INTO t2 VALUES(1, 2, 3);
  INSERT INTO t2 VALUES(4, 5, 6);
  INSERT INTO t2 VALUES(7, 8, 9);

  DROP TABLE IF EXISTS chng;
  CREATE TABLE chng(a INTEGER, b INTEGER, c INTEGER);
  INSERT INTO chng VALUES(1, 100, 1000);
  INSERT INTO chng VALUES(7, 700, 7000);



  SELECT * FROM t2;



  UPDATE t2 SET b = chng.b, c = chng.c FROM chng WHERE chng.a = t2.a;
  SELECT * FROM t2 ORDER BY a;



  DELETE FROM t2;
  INSERT INTO t2 VALUES(1, 2, 3);
  INSERT INTO t2 VALUES(4, 5, 6);
  INSERT INTO t2 VALUES(7, 8, 9);



  UPDATE t2 SET (b, c) = (SELECT b, c FROM chng WHERE a=t2.a) 
    WHERE a IN (SELECT a FROM chng);
  SELECT * FROM t2 ORDER BY a;



  DROP TABLE IF EXISTS t3;
  CREATE TABLE t3(a INTEGER PRIMARY KEY, b INTEGER, c TEXT) WITHOUT ROWID;
  INSERT INTO t3 VALUES(1, 1, 'one');
  INSERT INTO t3 VALUES(2, 2, 'two');
  INSERT INTO t3 VALUES(3, 3, 'three');

  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(x TEXT);
  INSERT INTO t4 VALUES('five');

  SELECT * FROM t3 ORDER BY a;



  UPDATE t3 SET c=x FROM t4;
  SELECT * FROM t3 ORDER BY a;



  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(a INTEGER PRIMARY KEY, b INTEGER, c INTEGER) ;
  INSERT INTO t2 VALUES(1, 2, 3);
  INSERT INTO t2 VALUES(4, 5, 6);
  INSERT INTO t2 VALUES(7, 8, 9);

  DROP TABLE IF EXISTS chng;
  CREATE TABLE chng(a INTEGER, b INTEGER, c INTEGER);
  INSERT INTO chng VALUES(1, 100, 1000);
  INSERT INTO chng VALUES(7, 700, 7000);



  SELECT * FROM t2;



  UPDATE t2 SET b = chng.b, c = chng.c FROM chng WHERE chng.a = t2.a;
  SELECT * FROM t2 ORDER BY a;



  DELETE FROM t2;
  INSERT INTO t2 VALUES(1, 2, 3);
  INSERT INTO t2 VALUES(4, 5, 6);
  INSERT INTO t2 VALUES(7, 8, 9);



  UPDATE t2 SET (b, c) = (SELECT b, c FROM chng WHERE a=t2.a) 
    WHERE a IN (SELECT a FROM chng);
  SELECT * FROM t2 ORDER BY a;



  DROP TABLE IF EXISTS t3;
  CREATE TABLE t3(a INTEGER PRIMARY KEY, b INTEGER, c TEXT) ;
  INSERT INTO t3 VALUES(1, 1, 'one');
  INSERT INTO t3 VALUES(2, 2, 'two');
  INSERT INTO t3 VALUES(3, 3, 'three');

  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(x TEXT);
  INSERT INTO t4 VALUES('five');

  SELECT * FROM t3 ORDER BY a;



  UPDATE t3 SET c=x FROM t4;
  SELECT * FROM t3 ORDER BY a;

