CREATE TABLE t0(a INTEGER PRIMARY KEY, b TEXT);
  WITH s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<400) 
  INSERT INTO t0 SELECT i, hex(randomblob(50)) FROM s;

  CREATE TABLE dir(f, t, imin, imax);

ATTACH 'test.db$i' AS aux;
      CREATE TABLE aux.t$i (a INTEGER PRIMARY KEY, b TEXT);
      INSERT INTO aux.t$i SELECT * FROM t0 WHERE a BETWEEN $iMin AND $iMax;
      DETACH aux;
      INSERT INTO dir VALUES('test.db$i', 't$i', $iMin, $iMax);
    
CREATE VIRTUAL TABLE temp.s1 USING swarmvtab('SELECT * FROM dir');
  
DROP TABLE s1; 

CREATE VIRTUAL TABLE temp.s1 USING swarmvtab('SELECT * FROM dir');
  SELECT count(*) FROM s1 WHERE rowid<50;

SELECT (SELECT group_concat(a || ',' || b, ',') FROM t0 WHERE $where) 
           IS 
           (SELECT group_concat(a || ',' || b, ',') FROM s1 WHERE $where)
  
SELECT count(*) FROM s1 a, s1 b WHERE b.rowid<=200;

SELECT count(*) FROM s1 a, s1 b, s1 c 
  WHERE a.rowid=b.rowid AND b.rowid=c.rowid;

CREATE VIRTUAL TABLE temp.s1 USING swarmvtab('SELECT * FROM dir');
  
SELECT * FROM s1 WHERE rowid BETWEEN 1 AND 100;

SELECT * FROM s1 WHERE rowid BETWEEN 101 AND 200;

SELECT * FROM s1 WHERE rowid BETWEEN 201 AND 300;

CREATE VIRTUAL TABLE temp.x1 USING swarmvtab('SELECT * FROMdir');

CREATE VIRTUAL TABLE temp.x1 USING swarmvtab('SELECT * FROMdir', 'fetchdb');

CREATE VIRTUAL TABLE temp.xyz USING swarmvtab(
    'VALUES
        (''test.db1'', ''t1'', 1, 10),
        (''test.db2'', ''t1'', 11, 20)
    ', 'fetch_db_no_such_function'
  );

CREATE VIRTUAL TABLE temp.xyz USING swarmvtab(
    'VALUES
        (''test.db1'', ''t1'', 1, 10),
        (''test.db2'', ''t1'', 11, 20)
    ', 'fetch_db'
  );

ATTACH 'test.db1' AS aux;
  CREATE TABLE aux.t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO aux.t1 VALUES(1, NULL);
  INSERT INTO aux.t1 VALUES(2, NULL);
  INSERT INTO aux.t1 VALUES(9, NULL);
  DETACH aux;
  CREATE VIRTUAL TABLE temp.xyz USING swarmvtab(
    'VALUES
        (''test.db1'', ''t1'', 1, 10),
        (''test.db2'', ''t1'', 11, 20)
    ', 'fetch_db'
  );

fetch_db error!
