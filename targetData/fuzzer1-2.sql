

  CREATE TABLE f1_rules(ruleset DEFAULT 0, cfrom, cto, cost);
  INSERT INTO f1_rules(cfrom, cto, cost) VALUES('e','a',1);
  INSERT INTO f1_rules(cfrom, cto, cost) VALUES('a','e',10);
  INSERT INTO f1_rules(cfrom, cto, cost) VALUES('e','o',100);

  CREATE VIRTUAL TABLE f1 USING fuzzer(f1_rules);



    SELECT word, distance FROM f1 WHERE word MATCH 'abcde'



  INSERT INTO f1_rules(ruleset, cfrom, cto, cost) VALUES(1,'b','x',1);
  INSERT INTO f1_rules(ruleset, cfrom, cto, cost) VALUES(1,'d','y',10);
  INSERT INTO f1_rules(ruleset, cfrom, cto, cost) VALUES(1,'y','z',100);

  DROP TABLE f1;
  CREATE VIRTUAL TABLE f1 USING fuzzer(f1_rules);



  SELECT word, distance FROM f1 WHERE word MATCH 'abcde'



  SELECT word, distance FROM f1 WHERE word MATCH 'abcde' AND ruleset=0



  SELECT word, distance FROM f1 WHERE word MATCH 'abcde' AND ruleset=1




    SELECT n, distance FROM f2, streetname
     WHERE f2.word MATCH 'wersley'
       AND f2.distance<=150
       AND f2.word=streetname.n
  


    SELECT n, distance FROM f2, streetname
     WHERE f2.word MATCH 'testledown'
       AND f2.distance<=150
       AND f2.word=streetname.n
  


    SELECT DISTINCT streetname.n FROM f2, streetname
     WHERE f2.word MATCH 'tayle'
       AND f2.distance<=200
       AND streetname.n>=f2.word AND streetname.n<=(f2.word || x'F7BFBFBF')
  


    SELECT DISTINCT streetname.n
      FROM f2 JOIN streetname
        ON (streetname.n>=f2.word AND streetname.n<=(f2.word || 'zzzzzz'))
     WHERE f2.word MATCH 'duck'
       AND f2.distance<150
       AND f2.ruleset=3
     ORDER BY 1
  


    SELECT DISTINCT streetname.n
      FROM f2 JOIN streetname
        ON (streetname.n>=f2.word AND streetname.n<=(f2.word || 'zzzzzz'))
     WHERE f2.word MATCH 'duck'
       AND f2.distance<150
       AND f2.ruleset=2
     ORDER BY 1
  
