

  CREATE TABLE v0 (c1, c2, c3);
  CREATE INDEX v3 ON v0 (c1, c2, c3);



  ANALYZE sqlite_master;
  INSERT INTO sqlite_stat1 VALUES('v0','v3','648 324 81');
  ANALYZE sqlite_master;



  INSERT INTO v0 VALUES
      (1, 10, 'b'),
      (1, 10, 'd'),
      (1, 10, NULL),
      (2, 10, 'a'),
      (2, 10, NULL),
      (1, 10, 'c'),
      (2, 10, 'b'),
      (1, 10, 'a'),
      (1, 10, NULL),
      (2, 10, NULL),
      (2, 10, 'd'),
      (2, 10, 'c');



  SELECT c1, c2, ifnull(c3, 'NULL') FROM v0 
  WHERE c2=10 ORDER BY c1, c3 NULLS LAST


S
