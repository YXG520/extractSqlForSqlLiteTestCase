

  CREATE TABLE t5(a INTEGER, b INTEGER);
  INSERT INTO t5 VALUES(2, 4), (3, 9);



  SELECT * FROM t5 WHERE abs(a)=2 or abs(b)=9;



  CREATE INDEX t5a ON t5( abs(a) );
  CREATE INDEX t5b ON t5( abs(b) );



  SELECT * FROM t5 WHERE abs(a)=2 or abs(b)=9;

