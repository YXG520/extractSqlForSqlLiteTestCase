

  CREATE TABLE s1(k INTEGER PRIMARY KEY, v);
  INSERT INTO s1 VALUES($S, 'one');
  INSERT INTO s1 VALUES($S+1, 'two');
  INSERT INTO s1 VALUES($S+2, 'three');

  CREATE TABLE l1(k INTEGER PRIMARY KEY, v);
  INSERT INTO l1 VALUES($L, 'six');
  INSERT INTO l1 VALUES($L-1, 'five');
  INSERT INTO l1 VALUES($L-2, 'four');

  CREATE VIRTUAL TABLE temp.sl USING unionvtab(
    "SELECT NULL, 'l1', 0, 9223372036854775807
     UNION ALL
     SELECT NULL, 's1', -9223372036854775808, -1"
  );



  SELECT * FROM sl;


 SELECT * FROM sl WHERE rowid=$k 


  SELECT * FROM sl WHERE rowid>-9223372036854775808



  SELECT * FROM sl WHERE rowid>=-9223372036854775808



  SELECT * FROM sl WHERE rowid<=-9223372036854775808



  SELECT * FROM sl WHERE rowid<-9223372036854775808



  SELECT * FROM sl WHERE rowid<9223372036854775807



  SELECT * FROM sl WHERE rowid<=9223372036854775807



  SELECT * FROM sl WHERE rowid>=9223372036854775807



  SELECT * FROM sl WHERE rowid>9223372036854775807

