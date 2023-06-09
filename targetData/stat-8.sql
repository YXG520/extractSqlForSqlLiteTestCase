

  CREATE VIRTUAL TABLE st4 USING dbstat;



  SELECT * FROM st4 WHERE st4.aggregate = NULL;



  SELECT aggregate=1 FROM st4 WHERE aggregate = 5



  SELECT * FROM st4 WHERE name = NULL;



  SELECT * FROM st4 WHERE schema = NULL;

