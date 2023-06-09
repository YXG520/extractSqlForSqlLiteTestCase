

  CREATE VIRTUAL TABLE t2 USING fts3(xyz=abc);
  SELECT xyz FROM t2;



  CREATE VIRTUAL TABLE t3 USING fts4(xyz=abc);



  CREATE VIRTUAL TABLE t3 USING fts4(xyz = abc);



  CREATE VIRTUAL TABLE t3 USING fts3(tokenize=simple, tokenize=simple);
  SELECT tokenize FROM t3;



  CREATE VIRTUAL TABLE t4 USING fts4(tokenize=simple, tokenize=simple);

