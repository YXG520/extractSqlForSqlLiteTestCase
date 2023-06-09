

  CREATE TABLE t15(x TEXT COLLATE nocase, y, PRIMARY KEY(x));
  INSERT INTO t15(x,y) VALUES
    ('abcde',1), ('ab%de',2), ('a_cde',3),
    ('uvwxy',11),('uvwx%',12),('uvwx_',13),
    ('_bcde',21),('%bcde',22),
    ('abcd_',31),('abcd%',32),
    ('ab%xy',41);
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '/';



  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '/';



  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '//';



  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '';



  SELECT y FROM t15 WHERE x LIKE 'abcdx%%' ESCAPE 'x';



  SELECT y FROM t15 WHERE x LIKE 'abx%%' ESCAPE 'x' ORDER BY +y



  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'abx%%' ESCAPE 'x' ORDER BY +y



  SELECT y FROM t15 WHERE x LIKE '/%bc%' ESCAPE '/';



  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE '/%bc%' ESCAPE '/';

