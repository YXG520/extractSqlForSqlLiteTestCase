

  CREATE TABLE A(id INTEGER PRIMARY KEY, label TEXT);
  CREATE TABLE B(id INTEGER PRIMARY KEY, label TEXT, Aid INTEGER);
  CREATE TABLE C(
    id INTEGER PRIMARY KEY,
    xx INTEGER NOT NULL,
    yy INTEGER,
    zz INTEGER
  );
  CREATE UNIQUE INDEX x2 ON C(yy);
  CREATE UNIQUE INDEX x4 ON C(yy, zz);
  INSERT INTO A(id) VALUES(1);
  INSERT INTO B(id) VALUES(2);
  INSERT INTO C(id,xx,yy,zz) VALUES(99,50,1,2);
  SELECT 1
    FROM A,
         (SELECT id,xx,yy,zz FROM C) subq,
         B
   WHERE A.id='1'
     AND A.id=subq.yy
     AND B.id=subq.zz;



  SELECT 1
    FROM A,
         (SELECT id,xx,yy,zz FROM C) subq,
         B
   WHERE A.id=1
     AND A.id=subq.yy
     AND B.id=subq.zz;



  SELECT 1
    FROM A,
         (SELECT id,yy,zz FROM C) subq,
         B
   WHERE A.id='1'
     AND A.id=subq.yy
     AND B.id=subq.zz;

