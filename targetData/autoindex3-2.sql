

  CREATE TABLE v(b, d, e);
  CREATE TABLE u(a, b, c);
  ANALYZE sqlite_master;
  INSERT INTO "sqlite_stat1" VALUES('u','uab','40000 400 1');
  INSERT INTO "sqlite_stat1" VALUES('v','vbde','40000 400 1 1');
  INSERT INTO "sqlite_stat1" VALUES('v','ve','40000 21');

  CREATE INDEX uab on u(a, b);
  CREATE INDEX ve on v(e);
  CREATE INDEX vbde on v(b,d,e);

  DROP TABLE IF EXISTS sqlite_stat4;
  ANALYZE sqlite_master;


Q
