
 CREATE VIRTUAL TABLE t1 USING spellfix1 
 INSERT INTO t1(word) VALUES($word) 


    SELECT word, matchlen FROM t1 WHERE word MATCH $word 
     ORDER BY score, word LIMIT 5
  


    CREATE TABLE vocab(w TEXT PRIMARY KEY);
    INSERT INTO vocab SELECT word FROM t1;
  


  SELECT next_char('re','vocab','w');



  SELECT next_char('re','(SELECT w AS x FROM vocab)','x');



  SELECT next_char('r','vocab','w');



  SELECT next_char('','vocab','w');


SELECT next_char('','xyzzy','a')


  CREATE TABLE vocab2(w TEXT);
  CREATE INDEX vocab2w ON vocab2(w COLLATE nocase);
  INSERT INTO vocab2 VALUES('abc'), ('ABD'), ('aBe'), ('AbF');
  SELECT next_char('ab', 'vocab2', 'w', null, 'nocase');



  SELECT next_char('ab','vocab2','w',null,null);



  SELECT next_char('AB','vocab2','w',null,'NOCASE');



  SELECT next_char('ab','vocab2','w',null,'binary');



  SELECT rowid FROM t1 WHERE word='rabbit';



  UPDATE t1 SET rowid=2000 WHERE word='rabbit';
  SELECT rowid FROM t1 WHERE word='rabbit';



  INSERT INTO t1(rowid, word) VALUES(3000,'melody');
  SELECT rowid, word, matchlen FROM t1 WHERE word MATCH 'melotti'
   ORDER BY score LIMIT 3;


INSERT INTO t1(rowid, word) VALUES(3000,'garden');
