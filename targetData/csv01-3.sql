

  DROP TABLE t2;
  CREATE VIRTUAL TABLE temp.t3 USING csv(
    data=
'1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    columns=4,
    schema=
      'CREATE TABLE t3(a PRIMARY KEY,b TEXT,c TEXT,d TEXT) WITHOUT ROWID',
    testflags=1
  );
  SELECT a FROM t3 WHERE b=6 OR c=7 OR d=12 ORDER BY +a;



  SELECT a FROM t3 WHERE +b=6 OR c=7 OR d=12 ORDER BY +a;



  SELECT rowid, a FROM t3;

