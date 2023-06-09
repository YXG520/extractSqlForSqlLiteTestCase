

  CREATE VIRTUAL TABLE t2 USING fts4;



  CREATE VIRTUAL TABLE terms2 USING fts4aux;



  CREATE VIRTUAL TABLE terms2 USING fts4aux(t2, t2);



  CREATE VIRTUAL TABLE terms3 USING fts4aux(does_not_exist)



  SELECT * FROM terms3



  SELECT * FROM terms3 WHERE term = 'abc'



  INSERT INTO terms VALUES(1,2,3);



  DELETE FROM terms


