

  CREATE VIRTUAL TABLE ft8 USING fts4(content=nosuchtable, x);
  INSERT INTO ft8(docid, x) VALUES(13, 'U O N X G');
  INSERT INTO ft8(docid, x) VALUES(14, 'C J J U B');
  INSERT INTO ft8(docid, x) VALUES(15, 'N J Y G X');
  INSERT INTO ft8(docid, x) VALUES(16, 'R Y D O R');
  INSERT INTO ft8(docid, x) VALUES(17, 'I Y T Q O');




  CREATE VIRTUAL TABLE ft9 USING fts4(content=, x);
  INSERT INTO ft9(docid, x) VALUES(13, 'U O N X G');
  INSERT INTO ft9(docid, x) VALUES(14, 'C J J U B');
  INSERT INTO ft9(docid, x) VALUES(15, 'N J Y G X');
  INSERT INTO ft9(docid, x) VALUES(16, 'R Y D O R');
  INSERT INTO ft9(docid, x) VALUES(17, 'I Y T Q O');




  SELECT name FROM sqlite_master WHERE name LIKE 'ft9_%';



  SELECT * FROM ft9 WHERE ft9 MATCH 'N';

