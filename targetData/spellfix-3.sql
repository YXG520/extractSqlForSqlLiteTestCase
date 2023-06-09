

  CREATE TABLE costs(iLang, cFrom, cTo, iCost);
  INSERT INTO costs VALUES(0, 'a', 'e', 1);
  INSERT INTO costs VALUES(0, 'e', 'i', 1);
  INSERT INTO costs VALUES(0, 'i', 'o', 1);
  INSERT INTO costs VALUES(0, 'o', 'u', 1);
  INSERT INTO costs VALUES(0, 'u', 'a', 1);
  CREATE VIRTUAL TABLE t3 USING spellfix1(edit_cost_table=costs);


 INSERT INTO t3(word) VALUES($w) 


    SELECT word, matchlen FROM t3 WHERE word MATCH $word
     ORDER BY score, word LIMIT 5
  
