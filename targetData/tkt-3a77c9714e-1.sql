

  CREATE TABLE t1(t1_id INTEGER PRIMARY KEY, t1_title TEXT);
  CREATE TABLE t2(t2_id INTEGER PRIMARY KEY, t2_title TEXT);
  CREATE TABLE t3(t3_id INTEGER PRIMARY KEY, t3_title TEXT);

  INSERT INTO t1 (t1_id, t1_title) VALUES (888, 'ABCDEF');
  INSERT INTO t2 (t2_id, t2_title) VALUES (999, 'ABCDEF');
  INSERT INTO t3 (t3_id, t3_title) VALUES (999, 'ABCDEF');



  SELECT t1_title, t2_title
  FROM t1 LEFT JOIN t2
  WHERE
    t2_id = (SELECT t3_id FROM
     ( SELECT t3_id FROM t3 WHERE t3_title=t1_title LIMIT 500 )
  )

