

  SELECT * FROM t1 WHERE x = error('error one') AND y = 4;



  SELECT * FROM t1 WHERE x = zeroblob(2200000000) AND y = 4;



  SELECT * FROM t1 WHERE x = dstr() AND y = 11;



  SELECT * FROM t1 WHERE x = test_zeroblob(1100000) AND y = 4;

