

  CREATE VIRTUAL TABLE temp.t1 USING csv(
    data=
'1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    columns=4
  );
  SELECT * FROM t1 WHERE c1=10;



  SELECT * FROM t1 WHERE c1='10';



  SELECT rowid FROM t1;



  DROP TABLE temp.t1;
  CREATE VIRTUAL TABLE temp.t1 USING csv(
    data=
'a,b,"mix-bloom-eel","soft opinion"
1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    header=1
  );
  SELECT * FROM t1 WHERE "soft opinion"=12;



  SELECT name FROM pragma_table_xinfo('t1');



  DROP TABLE temp.t1;
  CREATE VIRTUAL TABLE temp.t1 USING csv(
    data=
'a,b,"mix-bloom-eel","soft opinion"
1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    header=false
  );
  SELECT * FROM t1 WHERE c1='b';



  SELECT name FROM pragma_table_xinfo('t1');



  DROP TABLE temp.t1;
  CREATE VIRTUAL TABLE temp.t1 USING csv(
    data=
'a,b,"mix-bloom-eel","soft opinion"
1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    header,
    schema='CREATE TABLE x(x0,x1,x2,x3,x4)',
    columns=5
  );
  SELECT * FROM t1 WHERE x1='6';



  SELECT name FROM pragma_table_xinfo('t1');

