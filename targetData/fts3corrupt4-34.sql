

  CREATE VIRTUAL TABLE f USING fts3(a,b);
  INSERT INTO f VALUES (1, '1234');
  INSERT INTO f_segdir VALUES (1,255,0,0,'1 255',x'00');
  UPDATE f_segdir SET level = 0 WHERE level IN (
    SELECT level FROM f_segdir LIMIT 1 OFFSET 1
  );
  INSERT INTO f_segdir VALUES (255,249,0,121,'0 0',x'00');
  INSERT INTO f_content VALUES (255,0,x'ff');
  INSERT INTO f_segdir VALUES (1,255,16,0,'1 255',x'00');



  UPDATE f SET b = x'00' WHERE b IN (SELECT b FROM f LIMIT 1 OFFSET 0);

