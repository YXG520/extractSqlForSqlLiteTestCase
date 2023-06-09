

  PRAGMA encoding = 'UTF16';
  CREATE TABLE t0(c0 REAL, c1);
  INSERT INTO t0(c0,c1) VALUES('xyz',11),('uvw',22);
  CREATE INDEX i0 ON t0(c1) WHERE c0 GLOB 3;
  CREATE INDEX i1 ON t0(c0,c1) WHERE typeof(c0)='text' AND typeof(c1)='integer';
  UPDATE t0 SET c1=345;
  SELECT * FROM t0;



  PRAGMA encoding = 'utf16';
  CREATE TABLE t0(c0 TEXT);
  CREATE INDEX i0 ON t0(0 LIKE COALESCE(c0, 0));
  INSERT INTO t0(c0) VALUES (0), (0);
  SELECT * FROM t0;

