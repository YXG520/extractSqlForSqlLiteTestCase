

  DROP TABLE t1;
  CREATE VIRTUAL TABLE temp.t2 USING csv(
    data=
'1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    columns=4,
    schema='CREATE TABLE t2(a INT, b TEXT, c REAL, d BLOB)'
  );
  SELECT * FROM t2 WHERE a=9;



  SELECT * FROM t2 WHERE b=10;



  SELECT * FROM t2 WHERE c=11;



  SELECT * FROM t2 WHERE d=12;



  SELECT * FROM t2 WHERE d='12';



  SELECT * FROM t2 WHERE a='9';

