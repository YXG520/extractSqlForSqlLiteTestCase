

  CREATE TABLE objs(c INTEGER, s INTEGER, p INTEGER, o INTEGER);
  CREATE UNIQUE INDEX objs_cspo ON objs(o,p,c,s);
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES('objs','objs_cspo','520138 21 20 19 1');
  ANALYZE sqlite_schema;


W
Q
