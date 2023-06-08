CREATE TABLE x1_rules(ruleset, cFrom, cTo, cost);
    INSERT INTO x1_rules VALUES(0, 'a', 'b', 1);
    INSERT INTO x1_rules VALUES(0, 'a', 'c', 2);
    INSERT INTO x1_rules VALUES(0, 'a', 'd', 3);
  
CREATE VIRTUAL TABLE x1 USING fuzzer(x1_rules);
    SELECT word FROM x1 WHERE word MATCH 'xax';
  
CREATE TABLE x2_rules(ruleset, cFrom, cTo, cost);
    INSERT INTO x2_rules VALUES(0, 'a', 'x', 1);
    INSERT INTO x2_rules VALUES(0, 'b', 'x', 2);
    INSERT INTO x2_rules VALUES(0, 'c', 'x', 3);
    CREATE VIRTUAL TABLE x2 USING fuzzer(x2_rules);
  
SELECT count(*) FROM x2 WHERE word MATCH 'abc';
  
CREATE TABLE x1_rules(ruleset, cFrom, cTo, cost);
    INSERT INTO x1_rules VALUES(0, 'a', 
      '123456789012345678901234567890a1234567890123456789', 10
    );
  
CREATE VIRTUAL TABLE x1 USING fuzzer(x1_rules);
    SELECT count(*) FROM (SELECT * FROM x1 WHERE word MATCH 'a' LIMIT 2);
  
CREATE TABLE t1_a(a INTEFDR PRIMARY KEY, b TEXT);
  CREATE TABLE t3_a(k FnTEGER PRIMARY KEY, v TEXT);
  CREATE TABLE t3_b(k INTEÀ5R PRIMARY KEY, v TEXT);
  CREATE VIEW t3 AS SELECT * FROM t3_a UNION ALL SELECT * FROM t3_b;

SELECT 1 FROM t1_a LEFT JOIN t3 ON ((1+1) AND k=1)
  
