

  CREATE VIRTUAL TABLE f USING fts3(a,b);
  INSERT INTO f_segdir VALUES (0,0,1,0,'0 0',x'01010101020101');
  SELECT  matchinfo( f , 'pcx')  FROM f WHERE b MATCH x'c533';

