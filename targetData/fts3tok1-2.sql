

  CREATE VIRTUAL TABLE tX USING fts3tokenize(nosuchtokenizer);



  CREATE VIRTUAL TABLE t4 USING fts3tokenize;
  SELECT * FROM t4;



  CREATE VIRTUAL TABLE t USING fts4(tokenize=simple""); 



    CREATE VIRTUAL TABLE u USING fts4(tokenize=unicode61""); 
  
