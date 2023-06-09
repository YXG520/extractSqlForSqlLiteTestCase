

  CREATE VIRTUAL TABLE f USING fuzzer;



  CREATE VIRTUAL TABLE f USING fuzzer(one, two);



  CREATE VIRTUAL TABLE f USING fuzzer(nosuchtable);



  CREATE TEMP TABLE nosuchtable(a, b, c, d);
  CREATE VIRTUAL TABLE f USING fuzzer(nosuchtable);



  DROP TABLE temp.nosuchtable;
  CREATE TABLE nosuchtable(a, b, c, d);
  CREATE VIRTUAL TABLE temp.f USING fuzzer(nosuchtable);



  DROP TABLE IF EXISTS f_rules;
  CREATE TABLE f_rules(a, b, c);
  CREATE VIRTUAL TABLE f USING fuzzer(f_rules);



  DROP TABLE IF EXISTS f_rules;
  CREATE TABLE f_rules(a, b, c, d, e);
  CREATE VIRTUAL TABLE f USING fuzzer(f_rules);



    SELECT word, distance FROM f1 WHERE word MATCH 'abcde' AND distance<100
  


    SELECT word, distance FROM f1 WHERE word MATCH 'abcde' AND distance<=100
  


    SELECT word, distance FROM f1
     WHERE word MATCH 'abcde' AND distance<100 AND ruleset=0
  


    SELECT word, distance FROM f1
    WHERE word MATCH 'abcde' AND distance<=100 AND ruleset=0
  


    SELECT word, distance FROM f1
     WHERE word MATCH 'abcde' AND distance<11 AND ruleset=1
  


    SELECT word, distance FROM f1
    WHERE word MATCH 'abcde' AND distance<=11 AND ruleset=1
  

INSERT INTO f1 VALUES(1)

DELETE FROM f1

UPDATE f1 SET rowid=rowid+10000
