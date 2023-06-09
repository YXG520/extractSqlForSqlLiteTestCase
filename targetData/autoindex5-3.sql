

  -- This is the original test case reported on the mailing list
  CREATE TABLE artists (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    name varchar(255)
  );
  CREATE TABLE albums (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    name varchar(255),
    artist_id integer REFERENCES artists
  );
  INSERT INTO artists (name) VALUES ('Ar');
  INSERT INTO albums (name, artist_id) VALUES ('Al', 1);
  SELECT artists.*
  FROM artists
  INNER JOIN artists AS 'b' ON (b.id = artists.id)
  WHERE (artists.id IN (
    SELECT albums.artist_id
    FROM albums
    WHERE ((name = 'Al')
      AND (albums.artist_id IS NOT NULL)
      AND (albums.id IN (
        SELECT id
        FROM (
          SELECT albums.id,
                 row_number() OVER (
                   PARTITION BY albums.artist_id
                   ORDER BY name
                 ) AS 'x'
          FROM albums
          WHERE (name = 'Al')
        ) AS 't1'
        WHERE (x = 1)
      ))
      AND (albums.id IN (1, 2)))
  ));



  CREATE TABLE t1 (a); INSERT INTO t1 (a) VALUES (104);
  CREATE TABLE t2 (b); INSERT INTO t2 (b) VALUES (104);
  CREATE TABLE t3 (c); INSERT INTO t3 (c) VALUES (104);
  CREATE TABLE t4 (d); INSERT INTO t4 (d) VALUES (104);
  SELECT *
  FROM t1 CROSS JOIN t2 ON (t1.a = t2.b) WHERE t2.b IN (
    SELECT t3.c
    FROM t3
    WHERE t3.c IN (
      SELECT d FROM (SELECT DISTINCT d FROM t4) AS x WHERE x.d=104
    )
  );



  CREATE TABLE t5(a, b, c, d);
  CREATE INDEX t5a ON t5(a);
  CREATE INDEX t5b ON t5(b);
  CREATE TABLE t6(e);
  INSERT INTO t6 VALUES(1);
  INSERT INTO t5 VALUES(1,1,1,1), (2,2,2,2);
  SELECT * FROM t5 WHERE (a=1 OR b=2) AND c IN (
    SELECT e FROM (SELECT DISTINCT e FROM t6) WHERE e=1
  );



  CREATE TABLE t1(a1, a2, a3);
  CREATE INDEX t1a2 ON t1(a2, a1);
  CREATE INDEX t1a3 ON t1(a3, a1);
  CREATE TABLE t2(d);
  INSERT INTO t1 VALUES(3, 1, 1), (3, 2, 2);
  INSERT INTO t2 VALUES(3);
  SELECT *, 'x' FROM t1 WHERE (a2=1 OR a3=2) AND a1 = (
    SELECT d FROM (SELECT DISTINCT d FROM t2) WHERE d=3
  );

