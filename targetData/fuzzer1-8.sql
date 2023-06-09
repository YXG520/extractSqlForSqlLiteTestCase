

  CREATE TABLE x3_rules(rule_set, cFrom, cTo, cost);
  INSERT INTO x3_rules VALUES(2, 'a', 'x', 10);
  INSERT INTO x3_rules VALUES(2, 'a', 'y',  9);
  INSERT INTO x3_rules VALUES(2, 'a', 'z',  8);
  CREATE VIRTUAL TABLE x3 USING fuzzer(x3_rules);



  SELECT cFrom, cTo, word 
    FROM x3_rules CROSS JOIN x3 
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo;



  SELECT cFrom, cTo, word 
    FROM x3 CROSS JOIN x3_rules
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo DESC



  SELECT cFrom, cTo, word 
    FROM x3_rules, x3 
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo DESC;



  SELECT cFrom, cTo, word 
    FROM x3, x3_rules
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo DESC;



  CREATE INDEX i1 ON x3_rules(cost);
  SELECT cFrom, cTo, word 
    FROM x3_rules, x3 
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo DESC;



  SELECT word FROM x3_rules, x3 WHERE word MATCH x3_rules.cFrom AND ruleset=2



  SELECT word FROM x3_rules, x3 
  WHERE word MATCH x3_rules.cFrom 
    AND ruleset=2 
    AND x3_rules.cost=8;



  CREATE TABLE t1(a, b);
  CREATE INDEX i2 ON t1(b);
  SELECT word, distance FROM x3, t1 
    WHERE x3.word MATCH t1.a AND ruleset=2 AND distance=t1.b;



  INSERT INTO x3_rules VALUES(1, 'a', 't',  5);
  INSERT INTO x3_rules VALUES(1, 'a', 'u',  4);
  INSERT INTO x3_rules VALUES(1, 'a', 'v',  3);
  DROP TABLE x3;
  CREATE VIRTUAL TABLE x3 USING fuzzer(x3_rules);
  SELECT * FROM x3_rules;



  SELECT word FROM x3 WHERE ruleset=2 AND word MATCH 'a' AND WORD MATCH 'b';



  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a'



  SELECT word FROM x3 WHERE ruleset<=1 AND word MATCH 'a'



  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a' ORDER BY distance ASC;



  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a' ORDER BY distance DESC;



  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a' ORDER BY word ASC;



  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a' ORDER BY word DESC;

