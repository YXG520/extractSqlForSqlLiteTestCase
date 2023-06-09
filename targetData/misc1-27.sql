

  CREATE TABLE dup1(a,b,c);
  INSERT INTO dup1(a,b,c,a,b,c) VALUES(1,2,3,4,5,6);
  SELECT a,b,c FROM dup1;



  UPDATE dup1 SET a=7, b=8, c=9, a=10, b=11, c=12;
  SELECT a,b,c FROM dup1;

