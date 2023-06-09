

  CREATE TABLE ipk(key INTEGER PRIMARY KEY, val TEXT) WITHOUT ROWID;
  INSERT INTO ipk VALUES('rival','bonus'); -- ok to insert non-integer key
  SELECT * FROM ipk;



  BEGIN;
  INSERT INTO ipk VALUES(NULL,'sample'); -- no automatic generation of keys



  ROLLBACK;



  CREATE TABLE ipk2(key INTEGER PRIMARY KEY AUTOINCREMENT, val TEXT)WITHOUT ROWID;



  CREATE TABLE nn(a, b, c, d, e, PRIMARY KEY(c,a,e));
  CREATE TABLE nnw(a, b, c, d, e, PRIMARY KEY(c,a,e)) WITHOUT ROWID;
  INSERT INTO nn VALUES(1,2,3,4,5);
  INSERT INTO nnw VALUES(1,2,3,4,5);



  INSERT INTO nn VALUES(NULL, 3,4,5,6);
  INSERT INTO nn VALUES(3,4,NULL,7,8);
  INSERT INTO nn VALUES(4,5,6,7,NULL);
  SELECT count(*) FROM nn;



  INSERT INTO nnw VALUES(NULL, 3,4,5,6);



  INSERT INTO nnw VALUES(3,4,NULL,7,8)



  INSERT INTO nnw VALUES(4,5,6,7,NULL)



  SELECT count(*) FROM nnw;



    DROP TABLE IF EXISTS t5;
    CREATE TABLE t5(
      a INT NOT NULL ON CONFLICT ROLLBACK,
      b TEXT,
      c TEXT,
      PRIMARY KEY(a,b)
    ) WITHOUT ROWID;
    BEGIN;
    INSERT INTO t5(a,b,c) VALUES(1,2,3);
  
INSERT INTO t5(a,b,c) VALUES(NULL,6,7);

    SELECT * FROM t5;
  


    DROP TABLE IF EXISTS t5;
    CREATE TABLE t5(
      a INT NOT NULL ON CONFLICT ABORT,
      b TEXT,
      c TEXT,
      PRIMARY KEY(a,b)
    ) WITHOUT ROWID;
    BEGIN;
    INSERT INTO t5(a,b,c) VALUES(1,2,3);
  
INSERT INTO t5(a,b,c) VALUES(NULL,6,7);

    COMMIT;
    SELECT * FROM t5;
  


    DROP TABLE IF EXISTS t5;
    CREATE TABLE t5(
      a INT NOT NULL ON CONFLICT FAIL,
      b TEXT,
      c TEXT,
      PRIMARY KEY(a,b)
    ) WITHOUT ROWID;
  
INSERT INTO t5(a,b,c) VALUES(1,2,3),(NULL,4,5),(6,7,8);

    SELECT * FROM t5;
  


    DROP TABLE IF EXISTS t5;
    CREATE TABLE t5(
      a INT NOT NULL ON CONFLICT IGNORE,
      b TEXT,
      c TEXT,
      PRIMARY KEY(a,b)
    ) WITHOUT ROWID;
    INSERT INTO t5(a,b,c) VALUES(1,2,3),(NULL,4,5),(6,7,8);
    SELECT * FROM t5;
  


    DROP TABLE IF EXISTS t5;
    CREATE TABLE t5(
      a INT NOT NULL ON CONFLICT REPLACE DEFAULT 3,
      b TEXT,
      c TEXT,
      PRIMARY KEY(a,b)
    ) WITHOUT ROWID;
    INSERT INTO t5(a,b,c) VALUES(1,2,3),(NULL,4,5),(6,7,8);
    SELECT * FROM t5;
  
