


  CREATE VIRTUAL TABLE t0 USING fts3(col0 INTEGER PRIMARY KEY, col1, col2 ,col3 );
  INSERT INTO t0_segdir VALUES(0,0,0,0,'0 42',
      X'0001310301020001033233340500010102000004616161bc050101020200000462626262050101030200'
  );



  SELECT 0==matchinfo(t0,'sx') FROM t0 WHERE t0 MATCH '1* 2 3 4 5 6 OR 1';
