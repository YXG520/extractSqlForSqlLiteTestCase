

  DROP TABLE t3;
  CREATE VIRTUAL TABLE temp.t4 USING csv_wr(
    data=
'1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16',
    columns=4,
    schema=
      'CREATE TABLE t3(a,b,c,d,PRIMARY KEY(a,b)) WITHOUT ROWID',
    testflags=1
  );



  DROP TABLE IF EXISTS t4;
  CREATE VIRTUAL TABLE temp.t4 USING csv_wr(
    data=
'1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16',
    columns=4,
    schema=
      'CREATE TABLE t3(a,b,c,d,PRIMARY KEY(b)) WITHOUT ROWID',
    testflags=1
  );



  DROP TABLE IF EXISTS t5;
  CREATE VIRTUAL TABLE temp.t5 USING csv_wr(
      data=
      '1,2,3,4
      5,6,7,8
      9,10,11,12
      13,14,15,16',
      columns=4,
      schema=
      'CREATE TABLE t3(a,b,c,d) WITHOUT ROWID',
      testflags=1
      );



  CREATE VIRTUAL TABLE IF NOT EXISTS temp.t1
  USING csv(filename='FileDoesNotExist.csv');



  CREATE VIRTUAL TABLE temp.trent USING csv(data='1');
  SELECT * FROM trent;

