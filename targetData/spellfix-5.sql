

  CREATE TABLE costs2(iLang, cFrom, cTo, iCost);
  INSERT INTO costs2 VALUES(0, 'a', 'o', 1);
  INSERT INTO costs2 VALUES(0, 'e', 'o', 4);
  INSERT INTO costs2 VALUES(0, 'i', 'o', 8);
  INSERT INTO costs2 VALUES(0, 'u', 'o', 16);
  INSERT INTO t3(command) VALUES('edit_cost_table="costs2"');



    SELECT word, distance FROM t3 WHERE word MATCH $word
     ORDER BY score, word LIMIT 1
  
