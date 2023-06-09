

    CREATE TABLE t4(x);
    INSERT INTO t4 VALUES
      (1),
      ('a,b'),
      (3),
      ('x"y'),
      (5),
      (6),
      (7);
    SELECT json_group_array(x) OVER (ROWS 2 PRECEDING) FROM t4;
  


    SELECT json_group_object(rowid, x) OVER (ROWS 2 PRECEDING) FROM t4;
  
