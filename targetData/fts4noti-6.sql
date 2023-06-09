

  CREATE VIRTUAL TABLE t1 USING fts4(
    poiCategory, poiCategoryId, notindexed=poiCategoryId
  );
  INSERT INTO t1(poiCategory, poiCategoryId) values ('Restaurant', 6021);



  SELECT * FROM t1 WHERE t1 MATCH 'restaurant';



  SELECT * FROM t1 WHERE t1 MATCH 're*';



  SELECT * FROM t1 WHERE t1 MATCH '6021';



  SELECT * FROM t1 WHERE t1 MATCH '60*';



  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4(
    poiCategory, poiCategoryId, notindexed=poiCategory
  );
  INSERT INTO t1(poiCategory, poiCategoryId) values ('Restaurant', 6021);



  SELECT * FROM t1 WHERE t1 MATCH 'restaurant';



  SELECT * FROM t1 WHERE t1 MATCH 're*';



  SELECT * FROM t1 WHERE t1 MATCH '6021';



  SELECT * FROM t1 WHERE t1 MATCH '60*';



  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4(abc, ab, a, notindexed=abc);
  CREATE VIRTUAL TABLE t2 USING fts4(a, ab, abc, notindexed=abc);

  INSERT INTO t1 VALUES('no', 'yes', 'yep');
  INSERT INTO t2 VALUES('yep', 'yes', 'no');

  SELECT count(*) FROM t1 WHERE t1 MATCH 'no';
  SELECT count(*) FROM t1 WHERE t1 MATCH 'yes';
  SELECT count(*) FROM t1 WHERE t1 MATCH 'yep';

  SELECT count(*) FROM t2 WHERE t2 MATCH 'no';
  SELECT count(*) FROM t2 WHERE t2 MATCH 'yes';
  SELECT count(*) FROM t2 WHERE t2 MATCH 'yep';

