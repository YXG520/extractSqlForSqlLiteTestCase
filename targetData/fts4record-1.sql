

  CREATE VIRTUAL TABLE t1 USING fts4(x);
  INSERT INTO t1 VALUES('terma terma terma termb');



  SELECT quote(root) FROM t1_segdir



  select quote( 
    record(0,    5, 'terma', 5, 1, 2, 3, 3, 0, 
              4, 1, 'b'    , 3, 1, 5, 0
  ) );



  UPDATE t1_segdir SET root = 
    record(0,    5, 'terma', 5, 1, 2, 3, 3, 0, 
              4, 1, 'b'    , 3, 1, 5, 
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
          );



  SELECT snippet(t1) FROM t1 WHERE t1 MATCH 'term*'



  UPDATE t1_segdir SET root = 
    record(0,    5, 'terma', 5, 1, 2, 3, 3, 0, 
              4, 1, 'b'    , 4, 1, 5, 
              256, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
          );



  SELECT snippet(t1) FROM t1 WHERE t1 MATCH 'term*'



  SELECT quote(root) FROM t1_segdir



  UPDATE t1_segdir SET root = 
    record(0,    5, 'terma', 5, 1, 2, 3, 3, 0, 
              4, 1, 'b'    , 4, 1, 5, 
              256, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
          );



  SELECT snippet(t1) FROM t1 WHERE t1 MATCH 'term*'



  SELECT quote(root) FROM t1_segdir



  UPDATE t1_segdir SET root = 
  X'00057465726D61050102030300040162040105FF00010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100'



  SELECT snippet(t1) FROM t1 WHERE t1 MATCH 'term*'



  INSERT INTO t1(t1) VALUES('integrity-check');
