

  CREATE TABLE excluded(a INT, b INT, c INT DEFAULT 0);
  CREATE UNIQUE INDEX excludedab ON excluded(a,b);
  INSERT INTO excluded(a,b) VALUES(1,2),(1,2),(3,4),(1,2),(5,6),(3,4)
    ON CONFLICT(b,a) DO UPDATE SET c=excluded.c+1;
  SELECT *, 'x' FROM excluded ORDER BY a;



  INSERT INTO excluded AS base(a,b,c) VALUES(1,2,8),(1,2,3)
    ON CONFLICT(b,a) DO UPDATE SET c=excluded.c+1 WHERE base.c<excluded.c;
  SELECT *, 'x' FROM excluded ORDER BY a;

