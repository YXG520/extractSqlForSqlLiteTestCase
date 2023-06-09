

    CREATE TABLE AAA (
      aaa_id       INTEGER PRIMARY KEY AUTOINCREMENT
    );
    CREATE TABLE RRR (
      rrr_id      INTEGER     PRIMARY KEY AUTOINCREMENT,
      rrr_date    INTEGER     NOT NULL,
      rrr_aaa     INTEGER
    );
    CREATE TABLE TTT (
      ttt_id      INTEGER PRIMARY KEY AUTOINCREMENT,
      target_aaa  INTEGER NOT NULL,
      source_aaa  INTEGER NOT NULL
    );
    insert into AAA (aaa_id) values (2);
    insert into TTT (ttt_id, target_aaa, source_aaa)
    values (4469, 2, 2);
    insert into TTT (ttt_id, target_aaa, source_aaa)
    values (4476, 2, 1);
    insert into RRR (rrr_id, rrr_date, rrr_aaa)
    values (0, 0, NULL);
    insert into RRR (rrr_id, rrr_date, rrr_aaa)
    values (2, 4312, 2);
    SELECT i.aaa_id,
      (SELECT sum(CASE WHEN (t.source_aaa == i.aaa_id) THEN 1 ELSE 0 END)
         FROM TTT t
      ) AS segfault
    FROM
     (SELECT curr.rrr_aaa as aaa_id
        FROM RRR curr
          -- you also can comment out the next line
          -- it causes segfault to happen after one row is outputted
          INNER JOIN AAA a ON (curr.rrr_aaa = aaa_id)
          LEFT JOIN RRR r ON (r.rrr_id <> 0 AND r.rrr_date < curr.rrr_date)
       GROUP BY curr.rrr_id
      HAVING r.rrr_date IS NULL
    ) i;
  


    DROP TABLE IF EXISTS t1;
    DROP TABLE IF EXISTS t2;
    CREATE TABLE t1 (
      id1 INTEGER PRIMARY KEY AUTOINCREMENT,
      value1 INTEGER
    );
    INSERT INTO t1 VALUES(4469,2),(4476,1);
    CREATE TABLE t2 (
      id2 INTEGER PRIMARY KEY AUTOINCREMENT,
      value2 INTEGER
    );
    INSERT INTO t2 VALUES(0,1),(2,2);
    SELECT
     (SELECT sum(value2==xyz) FROM t2)
    FROM
     (SELECT curr.value1 as xyz
        FROM t1 AS curr LEFT JOIN t1 AS other
       GROUP BY curr.id1);
  


    SELECT
     (SELECT sum(value2==xyz) FROM t2)
    FROM
     (SELECT curr.value1 as xyz
        FROM t1 AS other RIGHT JOIN t1 AS curr
       GROUP BY curr.id1);
  


    DROP TABLE IF EXISTS t1;
    DROP TABLE IF EXISTS t2;
    CREATE TABLE t1 (
      id1 INTEGER,
      value1 INTEGER,
      x1 INTEGER
    );
    INSERT INTO t1 VALUES(4469,2,98),(4469,1,99),(4469,3,97);
    CREATE TABLE t2 (
      value2 INTEGER
    );
    INSERT INTO t2 VALUES(1);
    SELECT
     (SELECT sum(value2==xyz) FROM t2)
    FROM
     (SELECT value1 as xyz, max(x1) AS pqr
        FROM t1
       GROUP BY id1);
    SELECT
     (SELECT sum(value2<>xyz) FROM t2)
    FROM
     (SELECT value1 as xyz, max(x1) AS pqr
        FROM t1
       GROUP BY id1);
  


    DROP TABLE IF EXISTS t1;
    DROP TABLE IF EXISTS t2;
    CREATE TABLE t1(id1, value1);
    INSERT INTO t1 VALUES(4469,2),(4469,1);
    CREATE TABLE t2 (value2);
    INSERT INTO t2 VALUES(1);
    SELECT (SELECT sum(value2=value1) FROM t2), max(value1)
      FROM t1
     GROUP BY id1;
  


    DROP TABLE IF EXISTS t1;
    DROP TABLE IF EXISTS t2;
    CREATE TABLE t1(id1, value1);
    INSERT INTO t1 VALUES(4469,12),(4469,11),(4470,34);
    CREATE INDEX t1id1 ON t1(id1);
    CREATE TABLE t2 (value2);
    INSERT INTO t2 VALUES(12),(34),(34);
    INSERT INTO t2 SELECT value2 FROM t2;

    SELECT max(value1), (SELECT count(*) FROM t2 WHERE value2=max(value1))
      FROM t1
     GROUP BY id1;
  


    SELECT max(value1), (SELECT count(*) FROM t2 WHERE value2=value1)
      FROM t1
     GROUP BY id1;
  


    SELECT value1, (SELECT sum(value2=value1) FROM t2)
      FROM t1;
  


    SELECT value1, (SELECT sum(value2=value1) FROM t2)
      FROM t1
     WHERE value1 IN (SELECT max(value1) FROM t1 GROUP BY id1);
  


    SELECT max(value1), (SELECT sum(value2=max(value1)) FROM t2)
      FROM t1
     GROUP BY id1;
  


    SELECT max(value1), (SELECT sum(value2=value1) FROM t2)
      FROM t1
     GROUP BY id1;
  
