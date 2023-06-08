
PRAGMA cell_size_check = off;
  DROP INDEX t1x1;

SELECT sum(s+length(b)) FROM t1 WHERE a IN (110,10,150) AND q IS NULL;

REINDEX t1;

PRAGMA integrity_check


PRAGMA writable_schema=ON; -- bypass improved sqlite_master consistency checking
  INSERT INTO t1(b) VALUES(X'a0fee3669f9fddefc5cba913e4225d4b6ce2b04f26b87fad3ee6f9b7d90a1ea62a169bf41e5d32707a6ca5c3d05e4bde05c9d89eaaa8c50e74333d2e9fcd7dfe95528a3a016aac1102d825c5cd70cf99d8a88e0ea7f798d4334386518b7ad359beb168b93aba059a2a3bd93112d65b44c12b9904ea786b204d80531cdf0504bf9b203dbe927061974caf7b9f30cbc3397b61f802e732012a6663d41c3607d6f1c0dbcfd489adac05ca500c0b04439d894cd93a840159225ef73b627e178b9f84b3ffe66cf22a963a8368813ff7961fc47f573211ccec95e0220dcbb3bf429f4a50ba54d7a53784ac51bfef346e6ac8ae0d0e7c3175946e62ba2b');

SELECT b,c FROM t1 ORDER BY a;

CREATE TABLE t1(a, b, c, d INTEGER PRIMARY KEY);
  CREATE TABLE t2(a, b, c, d INTEGER PRIMARY KEY);

  INSERT INTO t1(a, b, c, d) VALUES (1, 2, 3, 100), (4, 5, 6, 101);
  INSERT INTO t2(a, b, c, d) VALUES (1, 100, 3, 1000), (4, 101, 6, 1001);

  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t2a ON t2(a, b, c);

  PRAGMA writable_schema = 1;
  UPDATE sqlite_master SET sql = 'CREATE INDEX t2a ON t2(a)' WHERE name='t2a';

INSERT INTO t1 SELECT * FROM t2;


PRAGMA writable_schema=ON; -- bypass improved sqlite_master consistency checking
  INSERT INTO t3 SELECT * FROM t2;


INSERT INTO t1(b) VALUES(zeroblob(40000));

DROP INDEX t1x2;

INSERT INTO t1(b) VALUES(zeroblob(40000));


BEGIN;
    INSERT INTO t1(b) VALUES(1);
    INSERT INTO t1(b) VALUES(2);
  COMMIT;


SELECT * FROM sqlite_master;


PRAGMA writable_schema=ON; -- bypass improved sqlite_master consistency checking
  INSERT INTO t3 SELECT * FROM t2;


SAVEPOINT one;

INSERT INTO t1(b,c) VALUES(5,6);

ROLLBACK TO one;


PRAGMA writable_schema=ON; -- bypass improved sqlite_master consistency checking
  SELECT * FROM t1 WHERE a<='2019-05-09' ORDER BY a DESC;


PRAGMA writable_schema=ON; -- bypass improved sqlite_master consistency checking
  DELETE FROM t3 WHERE x IN (SELECT x FROM t4);


SELECT CAST((SELECT b FROM t1 WHERE 16=c) AS int) FROM t1 WHERE 16=c;


WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x-2019 FROM c WHERE x<2)
    INSERT INTO t1(b,c) SELECT last_insert_rowid(), x FROM c;


PRAGMA integrity_check;

ALTER TABLE t1 RENAME TO alkjalkjdfiiiwuer987lkjwer82mx97sf98788s9789s; 
  

PRAGMA cell_size_check = 0;
  UPDATE c1 SET c= NOT EXISTS(SELECT 1 FROM c1 ORDER BY (SELECT 1 FROM c1 ORDER BY a)) +10 WHERE d BETWEEN 4 AND 7;

PRAGMA integrity_check;

CREATE TABLE t1(w, x, y, z, UNIQUE(w, x), UNIQUE(y, z));
  INSERT INTO t1 VALUES(1, 1, 1, 1);

  CREATE TABLE t1idx(x, y, i INTEGER, PRIMARY KEY(x)) WITHOUT ROWID;
  INSERT INTO t1idx VALUES(10, NULL, 5);

  PRAGMA writable_schema = 1;
  UPDATE sqlite_master SET rootpage = (
    SELECT rootpage FROM sqlite_master WHERE name='t1idx'
  ) WHERE type = 'index';

PRAGMA writable_schema = ON;
  INSERT INTO t1(rowid, w, x, y, z) VALUES(5, 10, 11, 10, NULL);

CREATE TABLE t1(o INTEGER PRIMARY KEY, t UNIQUE);
    INSERT INTO t1(t) VALUES(randomblob(123));
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
  
    PRAGMA journal_mode = wal;
    INSERT INTO t1 VALUES(-1, 'b');
  
PRAGMA wal_checkpoint
  

SELECT 
    json_group_array(c) OVER win4 
  FROM t1
    WINDOW win4 AS (
        ORDER BY a COLLATE nocase RANGE BETWEEN 1.0 PRECEDING AND CURRENT ROW
    )


PRAGMA writable_schema=ON;

UPDATE t1 SET a=1;

CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT, c INTEGER, d TEXT);
  CREATE INDEX i1 ON t1((NULL));
  INSERT INTO t1 VALUES(1, NULL, 1, 'text value');
  PRAGMA writable_schema = on;
  UPDATE sqlite_schema SET 
      sql = 'CREATE INDEX i1 ON t1(b, c, d)', 
      tbl_name = 't1', 
      type='index' 
  WHERE name='i1';

PRAGMA integrity_check;

