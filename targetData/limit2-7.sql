

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(aa VARCHAR PRIMARY KEY NOT NULL,bb,cc,x VARCHAR(400));
  INSERT INTO t1(aa,bb,cc) VALUES('maroon','meal','lecture');
  INSERT INTO t1(aa,bb,cc) VALUES('reality','meal','catsear');
  CREATE TABLE t2(aa VARCHAR PRIMARY KEY, dd INT DEFAULT 1, ee, x VARCHAR(100));
  INSERT INTO t2(aa,dd,ee) VALUES('maroon',0,'travel'),('reality',0,'hour');
  CREATE INDEX t2x1 ON t2(dd,ee);
  ANALYZE;
  DROP TABLE IF EXISTS sqlite_stat4;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES
    ('t2','t2x1','3 3 3'),
    ('t2','sqlite_autoindex_t2_1','3 1'),
    ('t1','sqlite_autoindex_t1_1','2 1');
  ANALYZE sqlite_master;
  SELECT *
    FROM t1 LEFT JOIN t2 ON t1.aa=t2.aa
   WHERE t1.bb='meal'
   ORDER BY t2.dd DESC
   LIMIT 1;



  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(aa, bb);
  INSERT INTO t1 VALUES('maroon','meal');
  CREATE TABLE t2(cc, dd, ee, x VARCHAR(100));
  INSERT INTO t2(cc,dd,ee) VALUES('maroon',1,'one');
  INSERT INTO t2(cc,dd,ee) VALUES('maroon',2,'two');
  INSERT INTO t2(cc,dd,ee) VALUES('maroon',0,'zero');
  CREATE INDEX t2ddee ON t2(dd,ee);
  CREATE INDEX t2cc ON t2(cc);
   ANALYZE;
  SELECT t2.cc, t2.dd, t2.ee FROM t1 CROSS JOIN t2 ON t1.aa=t2.cc
  ORDER BY t2.dd LIMIT 1;



  SELECT t2.cc, t2.dd, t2.ee FROM t1 CROSS JOIN t2 ON t1.aa=t2.cc
  WHERE t1.bb='meal'
  ORDER BY t2.dd LIMIT 1;

