

  CREATE VIRTUAL TABLE f using fts3(a,b);
  CREATE TABLE f_stat(id INTEGER PRIMARY KEY, value BLOB);
  INSERT INTO f_segdir VALUES (2000, 0,0,0, '16', '');
  INSERT INTO f_segdir VALUES (1999, 0,0,0, '0 18',
                               x'000131030102000103323334050101010200');
  INSERT INTO f_segments (blockid) values (16);
  INSERT INTO f_segments values (0, x'');
  INSERT INTO f_stat VALUES (1,x'cf0f01');
  INSERT INTO f(f) VALUES ('merge=1');

