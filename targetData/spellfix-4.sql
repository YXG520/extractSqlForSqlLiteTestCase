

  INSERT INTO t3(command) VALUES('edit_cost_table=NULL');



    SELECT word, distance FROM t3 WHERE word MATCH $word
     ORDER BY score, word LIMIT 5
  
