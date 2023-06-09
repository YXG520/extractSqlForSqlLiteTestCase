

  CREATE VIRTUAL TABLE main.Table0 USING fts3();
  INSERT INTO Table0 VALUES (1), (printf('%8.1280000X') ), (1), (printf('%8.1280000X') ), (1)  ;
  INSERT INTO Table0 VALUES (0), (printf('%8.1280000X%8.1280000X') ), (1), (printf('%1280000.1280000X%#1280000.1280000E%8.1280000X') ), (1)  ;
  INSERT INTO Table0 VALUES (1)  ;
  UPDATE Table0_segdir SET start_block = 1;
  INSERT INTO Table0 VALUES (1)  ;
  INSERT INTO Table0(Table0) VALUES('merge=6,8');

