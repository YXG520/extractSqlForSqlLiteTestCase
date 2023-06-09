

  CREATE TABLE t3(x, y);
  CREATE VIRTUAL TABLE ft3 USING fts4(content=t3);



  INSERT INTO ft3 VALUES('a b c', 'd e f');



  INSERT INTO ft3(docid, x, y) VALUES(21, 'a b c', 'd e f');
  SELECT rowid FROM ft3 WHERE ft3 MATCH '"a b c"';


 SELECT * FROM t3 


 
  DELETE FROM ft3;
  SELECT rowid FROM ft3 WHERE ft3 MATCH '"a b c"';



  INSERT INTO t3(rowid, x, y) VALUES(21, 'a b c', 'd e f');
  DELETE FROM ft3;
  SELECT rowid FROM ft3 WHERE ft3 MATCH '"a b c"';


 SELECT rowid FROM t3 
21


  INSERT INTO ft3(rowid, x, y) VALUES(0, 'R T M S M', 'A F O K H');
  INSERT INTO ft3(rowid, x, y) VALUES(1, 'C Z J O X', 'U S Q D K');
  INSERT INTO ft3(rowid, x, y) VALUES(2, 'N G H P O', 'N O P O C');
  INSERT INTO ft3(rowid, x, y) VALUES(3, 'V H S D R', 'K N G E C');
  INSERT INTO ft3(rowid, x, y) VALUES(4, 'J T R V U', 'U X S L C');
  INSERT INTO ft3(rowid, x, y) VALUES(5, 'N A Y N G', 'X D G P Y');
  INSERT INTO ft3(rowid, x, y) VALUES(6, 'I Q I S P', 'D R O Q B');
  INSERT INTO ft3(rowid, x, y) VALUES(7, 'T K T Z J', 'B W D G O');
  INSERT INTO ft3(rowid, x, y) VALUES(8, 'Y K F X T', 'D F G V G');
  INSERT INTO ft3(rowid, x, y) VALUES(9, 'E L E T L', 'P W N F Z');
  INSERT INTO ft3(rowid, x, y) VALUES(10, 'O G J G X', 'G J F E P');
  INSERT INTO ft3(rowid, x, y) VALUES(11, 'O L N N Z', 'K E Z F D');
  INSERT INTO ft3(rowid, x, y) VALUES(12, 'R Z M R J', 'X G I M Z');
  INSERT INTO ft3(rowid, x, y) VALUES(13, 'L X N N X', 'R R N S T');
  INSERT INTO ft3(rowid, x, y) VALUES(14, 'F L B J H', 'K W F L C');
  INSERT INTO ft3(rowid, x, y) VALUES(15, 'P E B M V', 'E A A B U');
  INSERT INTO ft3(rowid, x, y) VALUES(16, 'V E C F P', 'L U T V K');
  INSERT INTO ft3(rowid, x, y) VALUES(17, 'T N O Z N', 'T P Q X N');
  INSERT INTO ft3(rowid, x, y) VALUES(18, 'V W U W R', 'H O A A V');
  INSERT INTO ft3(rowid, x, y) VALUES(19, 'A H N L F', 'I G H B O');



    SELECT rowid, * FROM ft3 WHERE ft3 MATCH $match
  



  INSERT INTO t3(rowid, x, y) VALUES(0, 'R T M S M', 'A F O K H');
  INSERT INTO t3(rowid, x, y) VALUES(1, 'C Z J O X', 'U S Q D K');
  INSERT INTO t3(rowid, x, y) VALUES(2, 'N G H P O', 'N O P O C');
  INSERT INTO t3(rowid, x, y) VALUES(3, 'V H S D R', 'K N G E C');
  INSERT INTO t3(rowid, x, y) VALUES(4, 'J T R V U', 'U X S L C');
  INSERT INTO t3(rowid, x, y) VALUES(5, 'N A Y N G', 'X D G P Y');
  UPDATE ft3 SET x = y, y = x;
  DELETE FROM t3;



    SELECT rowid, * FROM ft3 WHERE ft3 MATCH $match
  



  INSERT INTO t3(rowid, x, y) VALUES(15, 'P E B M V', 'E A A B U');
  INSERT INTO t3(rowid, x, y) VALUES(16, 'V E C F P', 'L U T V K');
  INSERT INTO t3(rowid, x, y) VALUES(17, 'T N O Z N', 'T P Q X N');
  INSERT INTO t3(rowid, x, y) VALUES(18, 'V W U W R', 'H O A A V');
  INSERT INTO t3(rowid, x, y) VALUES(19, 'A H N L F', 'I G H B O');
  DELETE FROM ft3;



    SELECT rowid, * FROM ft3 WHERE ft3 MATCH $match
  

