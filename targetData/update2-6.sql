

  CREATE TABLE d1(a,b);
  CREATE INDEX d1b ON d1(a);
  CREATE INDEX d1c ON d1(b);
  INSERT INTO d1 VALUES(1,2);



  UPDATE d1 SET a = a+2 WHERE a>0 OR b>0;



  SELECT * FROM d1;
